<?php

use app\modules\operator\models\User;
use app\modules\operator\models\Requester;
/* @var $this yii\web\View */

use miloschuman\highcharts\Highcharts;
use kartik\grid\GridView;

//data
$users = User::find()->count();
$alldocs = Requester::find()->count();
$process = Requester::find()->where(['status_id' => 2])->orWhere(['status_id' => 3])->orWhere(['status_id' => 1])->count();
$success = Requester::find()->where(['status_id' => 4])->count();

$this->title = 'Documents Control';
?>
<div class="row">
    <div class="site-index">
        <section class="content">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-purple"><i class="fa fa-file"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">เอกสารทั้งหมด</span>
                            <span class="info-box-number">
                                <?= $alldocs ?>
                            </span>
                        </div>
                    </div>
                </div>


                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-yellow"><i class="fa fa-hourglass"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">รอดำเนินการ</span>
                            <span class="info-box-number"> <?= $process ?></span>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green"><i class="fa fa-check-square-o"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">สำเร็จ</span>
                            <span class="info-box-number"><?= $success ?></span>
                        </div>

                    </div>

                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-blue"><i class="fa fa-users"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">ผู้ใช้งานทังหมด</span>
                            <span class="info-box-number">
                                <?= $users ?>
                                <!-- <small>คน</small> -->
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title">สรุปแยกเป็นระดับเอกสาร</h3>
                        </div>
                        <div class="panel-body">
                            <?= Highcharts::widget([
                                'scripts' => [
                                    'modules/exporting',
                                    'themes/grid-light',
                                ],
                                'options' => [
                                    'title' => [
                                        'text' => 'สรุปแยกเป็นระดับเอกสาร',
                                        'style' => [
                                            'fontFamily' => 'Chakra Petch',
                                        ],
                                    ],
                                    'xAxis' => [
                                        'categories' => ['ระดับเอกสาร']
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
                </div>

                <div class="col-md-4">
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
                                        'attribute' => 'category_details',
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
                </div>

            </div>
        </section>
    </div>
</div>