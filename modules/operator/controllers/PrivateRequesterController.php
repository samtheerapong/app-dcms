<?php

namespace app\modules\operator\controllers;

use app\modules\operator\models\Approver;
use Yii;
use app\modules\operator\models\PrivateRequester;
use app\modules\operator\models\PrivateRequesterSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

use app\modules\operator\models\Reviewer;
//
use yii\web\UploadedFile;
use yii\helpers\BaseFileHelper;
use yii\helpers\Json;
use yii\helpers\ArrayHelper;
use mdm\autonumber\AutoNumber;

/**
 * PrivateRequesterController implements the CRUD actions for PrivateRequester model.
 */
class PrivateRequesterController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all PrivateRequester models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PrivateRequesterSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->pagination = [
            'pageSize' => 10, // Number of items per page
        ];

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single PrivateRequester model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new PrivateRequester model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new PrivateRequester();
        $modelReviewer = new Reviewer();
        $modelApprover = new Approver();
        $model->status_id = 1; // dev = 4  , prduction = 1
        $model->document_age = 5;
        // $model->types_id = 6;
        // $model->categories_id = 7; //qm
        // $model->departments_id = 3; //qc


        if ($model->load(Yii::$app->request->post())) {

            $model->ref = substr(Yii::$app->getSecurity()->generateRandomString(), 10);
            $this->CreateDir($model->ref);

            $model->covenant = $this->uploadSingleFile($model);
            $model->docs = $this->uploadMultipleFile($model);

            // Get format nimber Ex. FM-GR-001
            $fullname = $model->categories->category_code . '-' . $model->departments->department_code;
            $model->document_number = AutoNumber::generate($fullname . '-???');

            if ($model->save()) {
                $modelReviewer->requester_id = $model->id; // เพิ่ม requester_id ในตาราง Reviewer
                if ($modelReviewer->save()) {
                    $modelApprover->requester_id = $model->id; // เพิ่ม requester_id ในตาราง Approver
                    $modelApprover->save();
                }
            }

            Yii::$app->session->setFlash('success', Yii::t('app', 'Successfully'));

            // $this->sendLine($model);


            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
            'modelReviewer' => $modelReviewer, // หากไม่มีการ create requester ใน form ไม่ต้อง ใช้งานก็ได้ ให้ใส่ใน create.php ด้วย
            'modelApprover' => $modelApprover, // หากไม่มีการ create requester ใน form ไม่ต้อง ใช้งานก็ได้ ให้ใส่ใน create.php ด้วย
        ]);
    }

    /**
     * Updates an existing PrivateRequester model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        $tempCovenant = $model->covenant;
        $tempDocs     = $model->docs;

        if ($model->load(Yii::$app->request->post())) {

            $this->CreateDir($model->ref);
            $model->covenant = $this->uploadSingleFile($model, $tempCovenant);
            $model->docs = $this->uploadMultipleFile($model, $tempDocs);

            // // Get format nimber Ex. FM-GR-001
            // $fullname = $model->categories->category_code . '-' . $model->departments->department_code;
            // $model->document_number = AutoNumber::generate($fullname . '-???');

            $model->save();
            // $this->sendLine($model);
            Yii::$app->session->setFlash('success', Yii::t('app', 'Successfully'));

            // return $this->redirect(['view', 'id' => $model->id]);
            return $this->redirect(['index']);
        }


        return $this->render('update', [
            'model' => $model,

        ]);
    }

    /**
     * Deletes an existing PrivateRequester model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        //remove upload file & data
        $this->removeUploadDir($model->ref);
        PrivateRequester::deleteAll(['ref' => $model->ref]);

        $model->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the PrivateRequester model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return PrivateRequester the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = PrivateRequester::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
    /***************** Deletefile ******************/
    public function actionDeletefile($id, $field, $fileName)
    {
        $status = ['success' => false];
        if (in_array($field, ['docs', 'covenant'])) {
            $model = $this->findModel($id);
            $files =  Json::decode($model->{$field});
            if (array_key_exists($fileName, $files)) {
                if ($this->deleteFile('file', $model->ref, $fileName)) {
                    $status = ['success' => true];
                    unset($files[$fileName]);
                    $model->{$field} = Json::encode($files);
                    $model->save();
                }
            }
        }
        echo json_encode($status);
    }

    private function deleteFile($type = 'file', $ref, $fileName)
    {
        if (in_array($type, ['file', 'thumbnail'])) {
            if ($type === 'file') {
                $filePath = PrivateRequester::getUploadPath() . $ref . '/' . $fileName;
            } else {
                $filePath = PrivateRequester::getUploadPath() . $ref . '/thumbnail/' . $fileName;
            }
            @unlink($filePath);
            return true;
        } else {
            return false;
        }
    }

    /***************** Download ******************/
    public function actionDownload($id, $file, $fullname)
    {
        $model = $this->findModel($id);
        if (!empty($model->covenant)) {
            Yii::$app->response->sendFile($model->getUploadPath() . '/' . $model->ref . '/' . $file, $fullname);
        } else {
            $this->redirect(['/requester/view', 'id' => $id]);
        }
    }

    /***************** upload SingleFile ******************/
    private function uploadSingleFile($model, $tempFile = null)
    {
        $file = [];
        $json = '';
        try {
            $UploadedFile = UploadedFile::getInstance($model, 'covenant');
            if ($UploadedFile !== null) {
                $oldFileName = $UploadedFile->basename . '.' . $UploadedFile->extension;
                $newFileName = md5($UploadedFile->basename . time()) . '.' . $UploadedFile->extension;
                $UploadedFile->saveAs(PrivateRequester::UPLOAD_FOLDER . '/' . $model->ref . '/' . $newFileName);
                $file[$newFileName] = $oldFileName;
                $json = Json::encode($file);
            } else {
                $json = $tempFile;
            }
        } catch (Exception $e) {
            $json = $tempFile;
        }
        return $json;
    }

    /***************** upload MultipleFile ******************/
    private function uploadMultipleFile($model, $tempFile = null)
    {
        $files = [];
        $json = '';
        $tempFile = Json::decode($tempFile);
        $UploadedFiles = UploadedFile::getInstances($model, 'docs');
        if ($UploadedFiles !== null) {
            foreach ($UploadedFiles as $file) {
                try {
                    $oldFileName = $file->basename . '.' . $file->extension;
                    $newFileName = md5($file->basename . time()) . '.' . $file->extension;
                    $file->saveAs(PrivateRequester::UPLOAD_FOLDER . '/' . $model->ref . '/' . $newFileName);
                    $files[$newFileName] = $oldFileName;
                } catch (Exception $e) {
                }
            }
            $json = json::encode(ArrayHelper::merge($tempFile, $files));
        } else {
            $json = $tempFile;
        }
        return $json;
    }

    /***************** Create Dir ******************/
    private function CreateDir($folderName)
    {
        if ($folderName != NULL) {
            $basePath = PrivateRequester::getUploadPath();
            if (BaseFileHelper::createDirectory($basePath . $folderName, 0777)) {
                BaseFileHelper::createDirectory($basePath . $folderName . '/thumbnail', 0777);
            }
        }
        return;
    }

    /***************** Remove Upload Dir ******************/
    private function removeUploadDir($dir)
    {
        BaseFileHelper::removeDirectory(PrivateRequester::getUploadPath() . $dir);
    }

    public function sendLine($model)
    {

        $line_token = '9QPvacSX7VXuN7pWEtjylLeXnGStLttzTCmNG5o8j9C';

        // massage 
        $massage =  "แจ้งจากระบบ!!" . "\n" .
            "1) รับแจ้งจาก : " . $model->requestBy->profile->name . "\n" .
            "3) " . $model->types->type_details . "\n" .
            "2) เอกสารเลขที่ : " . $model->document_number . " Rev. " . $model->latest_rev  . "\n" .
            "4) วันที่แจ้ง : " . $model->created_at . "\n" .
            "5) สถานะ : " . $model->status->status_details . "\n" .
            "6) http://www.northernfood-complex.com/app-dcms/web/operator/private-requester/view?id=" . $model->id;

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://notify-api.line.me/api/notify");
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, "message=" . $massage);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            'Content-type: application/x-www-form-urlencoded',
            'Authorization: Bearer ' . $line_token,
        ]);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

        $server_output = curl_exec($ch);

        curl_close($ch);
    }
}
