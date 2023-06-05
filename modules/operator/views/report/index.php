<?php

use miloschuman\highcharts\Highcharts;
// use yii\grid\GridView;
use kartik\grid\GridView;
use yii\grid\ActionColumn;
use yii\helpers\Url;
use yii\helpers\Html;

$this->title = 'รายงาน';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="report-index">
   <div class="row">
      <div class="col-md-12">
         <div class="panel panel-info">
            <div class="panel-heading">
               <h3 class="panel-title"><?= Yii::t('app', 'report category') ?></h3>
            </div>
            <div class="panel-body">
               <?= Highcharts::widget([
                  'scripts' => [
                     'modules/exporting',
                     'themes/grid-light',
                  ],
                  'options' => [
                     'title' => [
                        'text' => Yii::t('app', 'report ategory'),
                        'style' => [
                           'fontFamily' => 'Chakra Petch',
                        ],
                     ],
                     'xAxis' => [
                        'categories' => [Yii::t('app', 'group data')]
                     ],
                     'yAxis' => [
                        'title' => [
                           'text' => Yii::t('app', 'Times'),
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
      </div>

      <div class="col-md-12">
         <div class="panel panel-info">
            <div class="panel-heading">
               <h3 class="panel-title"><?= Yii::t('app', 'report_category_details') ?></h3>
            </div>
            <div class="panel-body">
               <?= GridView::widget([
                  'dataProvider' => $dataProvider,
                  'summary' => '',
                  'options' => [
                     'class' => 'table-responsive',
                  ],
                  'columns' => [
                     ['class' => 'yii\grid\SerialColumn'],
                     'mid',
                     [
                        'attribute' => 'category_details',
                        'label' => Yii::t('app', 'category_details'),
                        'headerOptions' => ['style' => 'width: 90%;'],
                     ],

                     [
                        'attribute' => 'mid',
                        'label' => Yii::t('app', 'Times'),
                        'headerOptions' => ['style' => 'width: 10%;'],
                     ],
                  ],
               ]) ?>
            </div>
         </div>
      </div>

   </div>
</div>