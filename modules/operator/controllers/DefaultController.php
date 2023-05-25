<?php

namespace app\modules\operator\controllers;

use app\modules\operator\models\Requester;
use yii\web\Controller;
use yii\web\Response;
use app\modules\timetrack\models\Timetable;
use yii2fullcalendar\models\Event;
use yii\helpers\Url;


/**
 * Default controller for the `operator` module
 */
class DefaultController extends Controller
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionJsoncalendar($start=NULL,$end=NULL,$_=NULL){

        \Yii::$app->response->format = Response::FORMAT_JSON;
    
        //$times = \app\modules\timetrack\models\Timetable::find()->where(array('category'=>\app\modules\timetrack\models\Timetable::CAT_TIMETRACK))->all();
        $times = Requester::find()->all();


        $events = [];
    
        foreach ($times AS $time){
          //Testing
          $Event = new Event();
          $Event->id = $time->id;
          $Event->title = $time->document_number;
          $Event->start = date($time->created_at);
          $Event->end = date($time->created_at);
          $Event->color = []; // <- อ้างอิงสีสถานะ หรือ ถ้าอ้างอิงสีห้องให้เปลี่ยนเป็น $time->status->color;
          $Event->url = url::to(['/meeting/meeting/view','id'=>$time->id]);
          $events[] = $Event;
        }
    
        return $events;
      }
}
