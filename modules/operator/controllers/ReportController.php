<?php

namespace app\modules\operator\controllers;

use Yii;

class ReportController extends \yii\web\Controller
{
    public function actionIndex()
    {
        //Ex
        $sql = "SELECT COUNT(m.id) AS mid, r.requester_id
        FROM requester m
        LEFT JOIN reviewer r ON r.id = m.id
        GROUP BY m.id";
        $data = Yii::$app->db->createCommand($sql)->queryAll();

        $graph = [];
        foreach ($data as $d) {
            $graph[] = [
                'type' => 'column',
                'name' => 'name',
                'data' => [intval($d)]
            ];
        }

        return $this->render('index', [
            'graph' => $graph,
        ]);
    }

    public function actionReport1()
    {
        return $this->render('report1');
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
