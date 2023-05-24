<?php 
namespace app\controllers;

use app\modules\operator\models\Requester;
use yii\web\Controller;
use yii\helpers\Json;

class CalendarController extends Controller
{
    public function actionIndex()
    {
        // Fetch the events data from your data source
        $events = Requester::find()->all();

        // Prepare the events array for FullCalendar
        $eventsArray = [];
        foreach ($events as $event) {
            $eventsArray[] = [
                'title' => $event->document_number,
                'start' => $event->document_public_at,
                'end' => $event->document_public_at,
            ];
        }

        $eventsJson = Json::encode($eventsArray);

        return $this->render('index', ['eventsJson' => $eventsJson]);
    }
}
