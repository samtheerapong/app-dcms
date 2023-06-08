<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\modules\operator\models\PrivateRequesterSearch;
use app\modules\operator\models\Requester;
use app\modules\operator\models\RequesterSearch;
use yii\data\ArrayDataProvider;
use yii\data\Pagination;
use yii\data\ActiveDataProvider;

class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::class,
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {

        // **************** table Requester ********************
        
        // $searchModel = new RequesterSearch();
        $searchModel = new PrivateRequesterSearch();
        $dataProviderRequester = $searchModel->search(Yii::$app->request->queryParams);
        $dataProviderRequester->pagination = [
            'pageSize' => 10, // Number of items per page
        ];

        // **************** report Category ********************
        $sqlCategory = "SELECT COUNT(m.id) AS count, r.category_code
                FROM requester m
                LEFT JOIN categories r 
                ON r.id = m.categories_id
                GROUP BY m.categories_id";
        $dataCategory = Yii::$app->db->createCommand($sqlCategory)->queryAll();
        $graphCategory = [];
        foreach ($dataCategory as $d) {
            $graphCategory[] = [
                'name' => $d['category_code'],
                'y' => intval($d['count']),
            ];
        }

        // **************** report Type ********************
        $sqlType = "SELECT COUNT(m.id) AS count, r.type_details
         FROM requester m
         LEFT JOIN types r 
         ON r.id = m.types_id
         GROUP BY m.types_id";
        $dataType = Yii::$app->db->createCommand($sqlType)->queryAll();
        $graphType = [];
        foreach ($dataType as $d) {
            $graphType[] = [
                'name' => $d['type_details'],
                'y' => intval($d['count']),
            ];
        }

        // **************** report Status ********************
        $sqlStatus = "SELECT COUNT(m.id) AS count, r.status_details
              FROM requester m
              LEFT JOIN status r ON r.id = m.status_id
              GROUP BY m.status_id";
        $dataStatus = Yii::$app->db->createCommand($sqlStatus)->queryAll();
        $graphStatus = [];
        foreach ($dataStatus as $d) {
            $graphStatus[] = [
                'name' => $d['status_details'],
                'y' => intval($d['count']),
            ];
        }

        // *********************** return index *******************
        return $this->render('index', [
            'searchModel' => $searchModel, //table Requester
            'dataProviderRequester' => $dataProviderRequester, //table Requester

            'graphCategory' => $graphCategory, //report Category
            'graphType' => $graphType, //report Type
            'graphStatus' => $graphStatus, //report Status
        ]);
    }



    public function actionTableList()
    {
        $searchModel = new RequesterSearch();
        $dataProvider = new ActiveDataProvider([
            'query' => Requester::find(), // Query ของคุณ
            'pagination' => [
                'pageSize' => 5, // จำนวนรายการต่อหน้า
            ],
        ]);

        return $this->render('table-list', [
            'dataProvider' => $dataProvider,
            'searchModel' => $searchModel,
        ]);
    }

    /**
     * Login action.
     *
     * @return Response|string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }

        $model->password = '';
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return Response
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return Response|string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    public function actionJsoncalendar($start = null, $end = null, $_ = null)
    {
        \Yii::$app->response->format = Response::FORMAT_JSON;

        $times = Requester::find()->all();

        $events = [];

        foreach ($times as $time) {
            //Testing
            $Event = new Event();
            $Event->id = $time->id;
            $Event->title = $time->document_number . ' Rev. ' . $time->latest_rev;
            $Event->start = date($time->document_public_at);
            $Event->end = date($time->rdocument_public_at);
            $Event->backgroundColor = $time->status->color;
            $Event->borderColor = $time->types->color;
            $Event->url = url::to(['/operator/requester/view', 'id' => $time->id]);

            $events[] = $Event;
        }

        return $events;
    }
}
