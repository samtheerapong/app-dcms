<?php

namespace app\controllers;

use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

use yii\web\Response;
use app\modules\timetrack\models\Timetable;
use yii2fullcalendar\models\Event;
use yii\helpers\Url;
//
use app\models\Calendar;
use app\modules\operator\models\Requester;

/**
 * Default controller for the `meeting` module
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
      $Event->start = date($time->created_at);
      $Event->end = date($time->reviewer->reviewer_at);
      $Event->backgroundColor = $time->status->color;
      $Event->borderColor = $time->types->color;
      $Event->url = url::to(['/operator/requester/view', 'id' => $time->id]);

      $events[] = $Event;
    }

    return $events;
  }
}
