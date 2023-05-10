<?php

use miloschuman\highcharts\Highcharts;
use miloschuman\highcharts\GanttChart;
// use yii\grid\GridView;
use kartik\grid\GridView;
use yii\grid\ActionColumn;
use yii\helpers\Url;
use yii\helpers\Html;
use yii\web\JsExpression;


$this->title = 'รายงาน';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">สรุปแยกเป็นประเภทการร้องขอ</h3>
    </div>
    <div class="panel-body">
        <?= Highcharts::widget([
            'scripts' => [
                'modules/exporting',
                'themes/grid-light',
            ],
            'options' => [
                'title' => [
                    'text' => 'สรุปแยกเป็นประเภทการร้องขอ',
                    'style' => [
                        'fontFamily' => 'Chakra Petch',
                    ],
                ],
                'xAxis' => [
                    'categories' => ['กลุ่มข้อมูล']
                ],
                'yAxis' => [
                    'title' => [
                        'text' => 'จำนวนครั้ง',
                        'style' => [
                            'fontFamily' => 'Chakra Petch',
                        ],
                    ],
                ],
                'series' => $graph,
            ]
        ]);
        ?>
    </div>
</div>



<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">ตารางสรุปแยกประเภทการร้องขอ</h3>
    </div>
    <div class="panel-body">
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            //'filterModel' => $searchModel,
            'summary' => '',
            'options' => [
                'class' => 'table-responsive',
            ],
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                //'mid',
                [
                    'attribute' => 'type_details',
                    'label' => 'ประเภทการร้องขอ',
                ],

                [
                    'attribute' => 'mid',
                    'label' => 'จำนวนครั้ง',
                ],
                //    [
                //       'class' => 'kartik\grid\ActionColumn',
                //       'options' => ['style' => 'width:120px;'],
                //       'buttonOptions' => ['class' => 'btn btn-default'],
                //       'template' => '<div class="btn-group btn-group-sm text-center" role="group"> {view} {update} {delete}</div>'
                //   ],
            ],
        ]) ?>
    </div>
</div>



