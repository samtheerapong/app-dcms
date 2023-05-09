<?php

namespace app\modules\operator\controllers;

use Yii;
use app\modules\operator\models\Requester;

class ReportController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $sql = " SELECT  COUNT(m.id) AS mid , r.category_details
                    FROM requester m
                    LEFT JOIN categories r 
                    ON r.id = m.categories_id
                    GROUP BY m.categories_id";

        $data = Yii::$app->db->createCommand($sql)->queryAll();

        $graph = [];
        foreach ($data as $d) {
            $graph[] = [
                'type' => 'column',
                'name' => $d['category_details'],
                'data' => [intval($d['mid'])],
            ];
        }

        return $this->render('index', [
            'graph' => $graph,
        ]);
    }

    public function actionReport1()
    {
        $data = Requester::find()
            ->groupBy('status_id')
            ->all();

        $graph = [];
        foreach ($data as $d) {
            $graph[] = [
                'type' => 'column',
                'name' => 'status_id',
                'data' => $d,
            ];
        }
        return $this->render('report1', [
            'graph' => $graph,
        ]);
    }

    public function actionReport2()
    {
        return $this->render('report2');
    }

    public function actionReport3()
    {
        return $this->render('report3');
    }

    public function actionReport4()
    {
        return $this->render('report4');
    }
}
