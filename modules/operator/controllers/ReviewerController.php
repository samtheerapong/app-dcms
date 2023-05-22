<?php

namespace app\modules\operator\controllers;

use Yii;
use app\modules\operator\models\Reviewer;
use app\modules\operator\models\Requester;
use app\modules\operator\models\ReviewerSearch;
use app\modules\operator\models\RequesterSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ReviewerController implements the CRUD actions for Reviewer model.
 */
class ReviewerController extends Controller
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
     * Lists all Reviewer models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ReviewerSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Reviewer model.
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
     * Creates a new Reviewer model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Reviewer();

        if ($model->load(Yii::$app->request->post())) {
            $model->save();

            Yii::$app->session->setFlash('success', Yii::t('app', 'Successfully'));
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Reviewer model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $modelRequester = $this->findModelRequester($model->requester_id);

        if($modelRequester->types_id === 2){
            $model->document_revision = $modelRequester->latest_rev + 1;
        } else {
            $model->document_revision = $modelRequester->latest_rev;
        }

        if (
            $model->load(Yii::$app->request->post())
            && $modelRequester->load(Yii::$app->request->post())
        ) {

            // $modelRequester->status_id = 3; 

            if ($modelRequester->latest_rev >= $model->document_revision) { // ถ้า rev ผู้ขอ มีค่าน้อยกว่าหรือเท่ากับ rev ผู้ทบทวน
                $modelRequester->latest_rev = $modelRequester->latest_rev;  //  ให้ทำ rev ผู้ขอ บันทึกใหม่ ให้เหมือนผู้ทบทวน 
            } else { 
                $modelRequester->latest_rev = $model->document_revision; // หากไม่ตรงเงือนไขด้านบน ให้ rev ผู้ขอ มีค่าเท่าเดิม
            }
            $model->document_revision = $modelRequester->latest_rev; // ให้ rev ผู้ทบทวน มีค่าเท่ากับ ผู้ขอเดิม


            if ($modelRequester->save()) {
                $model->save();
            }

            $model->save();

            Yii::$app->session->setFlash('success', Yii::t('app', 'Reviewer Successfully'));

            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
            'modelRequester' => $modelRequester,
        ]);
    }

    protected function findModelRequester($id)
    {
        if (($model = Requester::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    /**
     * Deletes an existing Reviewer model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Reviewer model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Reviewer the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Reviewer::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
