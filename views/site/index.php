<?php

use app\modules\operator\models\Categories;
use app\modules\operator\models\Departments;
use app\modules\operator\models\Profile;
use app\modules\operator\models\User;
use app\modules\operator\models\Requester;
use app\modules\operator\models\Status;
use app\modules\operator\models\Types;
use miloschuman\highcharts\Highcharts;
use kartik\grid\GridView;
use kartik\widgets\DatePicker;
use kartik\widgets\Select2;
use yii2fullcalendar\yii2fullcalendar;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;


//data
$users = User::find()->count();
$alldocs = Requester::find()->count();
$process = Requester::find()->where(['status_id' => 2])->orWhere(['status_id' => 3])->orWhere(['status_id' => 1])->count();
$success = Requester::find()->where(['status_id' => 4])->count();

$this->title = Yii::t('app', 'Dashboard');
?>

<!-- <div class="row">
    <div class="col-sm-12">
        <div class="panel panel-danger">
            <div class="panel-heading">
                <h3 class="panel-title">ความคืบหน้า</h3>
            </div>

            <div class="panel panel-body">
                <div class="clearfix">
                    <span class="pull-left">ความสำเร็จในการพัฒนาเว็บไซต์</span>
                    <small class="pull-right">75%</small>
                </div>
                <div class="progress xs">
                    <div class="progress-bar progress-bar-danger" style="width: 75%;"></div>
                </div>
                <div class="clearfix">
                    <span class="pull-left">ความสำเร็จในการนำเข้าข้อมูล</span>
                    <small class="pull-right">80%</small>
                </div>
                <div class="progress xs">
                    <div class="progress-bar progress-bar-primary" style="width: 80%;"></div>
                </div>
            </div>
        </div>
    </div>
</div> -->
<div class="row">
    <div class="site-index">
        <section class="content">
            <div class="row">

                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3><?= $alldocs ?></h3>
                            <p><?= Yii::t('app', 'All Requests') ?></p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3> <?= $process ?></h3>
                            <p><?= Yii::t('app', 'Status Pending') ?></p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="/app-dcms/web/operator/reviewer/index" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3> <?= $success ?></h3>
                            <p><?= Yii::t('app', 'Status Success') ?></p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-blue">
                        <div class="inner">
                            <h3> <?= $users ?></h3>
                            <p><?= Yii::t('app', 'All Users') ?></p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="/app-dcms/web/user/admin/index" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                </div>


                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title"><?= Yii::t('app', 'Table of all requests') ?></h3>
                            </div>
                            <div class="panel-body">

                                <?= GridView::widget([
                                    'dataProvider' => $dataProviderRequester,
                                    'filterModel' => $searchModel,
                                    'columns' => [
                                        ['class' => 'yii\grid\SerialColumn'],
                                        [
                                            'class' => 'kartik\grid\ActionColumn',
                                            'options' => ['style' => 'width:8%'],
                                            'buttonOptions' => ['class' => 'btn btn-default'],
                                            'template' => '<div class="btn-group btn-group-sm text-center" role="group"> {view}  </div>',
                                            'buttons' => [
                                                'view' => function ($url, $model, $key) {
                                                    $url = ['/operator/private-requester/view', 'id' => $model->id]; // Update the URL to include the appropriate ID
                                                    return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                                        'title' => Yii::t('app', 'View'),
                                                        'class' => 'btn btn-info',
                                                    ]);
                                                },
                                            ],
                                        ],

                                        [
                                            'attribute' => 'status_id',
                                            'options' => ['style' => 'width:8%'],
                                            'contentOptions' => ['class' => 'text-center'],
                                            'format' => 'html',
                                            'value' => function ($model) {
                                                $blinkClass = $model->status->id == 1 ? 'blink' : '';
                                                return '<span class="badge ' . $blinkClass . '" style="background-color:' . $model->status->color . ';"><b>' . $model->status->status_details . '</b></span>';
                                            },
                                            'filter' => Select2::widget([
                                                'model' => $searchModel,
                                                'attribute' => 'status_id',
                                                'data' => ArrayHelper::map(Status::find()->all(), 'id', 'status_details'),
                                                'theme' => Select2::THEME_DEFAULT,
                                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                                'language' => 'th',
                                                'pluginOptions' => ['allowClear' => true],
                                            ])
                                        ],

                                        [
                                            'attribute' => 'types_id',
                                            'options' => ['style' => 'width:8%'],
                                            'contentOptions' => ['class' => 'text-center'],
                                            'format' => 'html',
                                            'value' => function ($model) {
                                                return '<span class="badge" style="background-color:' . $model->types->color . ';"><b>' . $model->types->type_details . '</b></span>';
                                            },
                                            'filter' => Select2::widget([
                                                'model' => $searchModel,
                                                'attribute' => 'types_id',
                                                'data' => ArrayHelper::map(Types::find()->all(), 'id', 'type_details'),
                                                'theme' => Select2::THEME_DEFAULT,
                                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                                'language' => 'th',
                                                'pluginOptions' => ['allowClear' => true],
                                            ])
                                        ],


                                        [
                                            'attribute' => 'document_number',
                                            'options' => ['style' => 'width:8%'],
                                            'contentOptions' => ['class' => 'text-center'],
                                            'format' => 'html',
                                            'value' => function ($model) {
                                                return  $model->document_number;
                                            },
                                            // 'filter' => Select2::widget([
                                            //     'model' => $searchModel,
                                            //     'attribute' => 'document_number',
                                            //     'data' => ArrayHelper::map(Requester::find()->all(), 'document_number', 'document_number'),
                                            //     'theme' => Select2::THEME_DEFAULT,
                                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                            //     'language' => 'th',
                                            //     'pluginOptions' => ['allowClear' => true],
                                            // ])
                                        ],

                                        [
                                            'attribute' => 'latest_rev',
                                            'options' => ['style' => 'width:5%'],
                                            'contentOptions' => ['class' => 'text-center'],
                                            'format' => ['decimal', 0],
                                            'value' => function ($model) {
                                                return $model->latest_rev ?? 0;
                                            },
                                            // 'filter' => Select2::widget([
                                            //     'model' => $searchModel,
                                            //     'attribute' => 'latest_rev',
                                            //     'data' => ArrayHelper::map(Requester::find()->all(), 'latest_rev', 'latest_rev'),
                                            //     'theme' => Select2::THEME_DEFAULT,
                                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                            //     'language' => 'th',
                                            //     'pluginOptions' => ['allowClear' => true],
                                            // ])
                                        ],

                                        [
                                            'attribute' => 'document_title',
                                            'options' => ['style' => 'width:450px'],
                                            // 'format' => 'ntext',
                                            'value' => function ($model) {
                                                $text = $model->document_title;
                                                if (mb_strlen($text) > 55) {
                                                    $text = mb_substr($text, 0, 55) . '...';
                                                }
                                                return $text;
                                            },
                                            // 'filter' => Select2::widget([
                                            //     'model' => $searchModel,
                                            //     'attribute' => 'document_title',
                                            //     'data' =>  array_map(function ($value) {
                                            //         if (mb_strlen($value) > 50) {
                                            //             $value = mb_substr($value, 0, 50) . '...';
                                            //         }
                                            //         return $value;
                                            //     }, ArrayHelper::map(Requester::find()->all(), 'document_title', 'document_title')),
                                            //     'theme' => Select2::THEME_DEFAULT,
                                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                            //     'language' => 'th',
                                            //     'pluginOptions' => ['allowClear' => true],
                                            // ])
                                        ],

                                        [
                                            'attribute' => 'document_public_at',
                                            'options' => ['style' => 'width:8%'],
                                            'contentOptions' => ['class' => 'text-center'],
                                            'format' => 'date',
                                            'value' => function ($model) {
                                                return $model->document_public_at ?? '';
                                            },
                                            'filter' => DatePicker::widget([
                                                'model' => $searchModel,
                                                'attribute' => 'document_public_at',
                                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                                'pluginOptions' => ['format' => 'yyyy-mm-dd', 'autoclose' => true]
                                            ]),
                                        ],

                                        [
                                            'attribute' => 'request_by',
                                            'format' => 'html',
                                            'options' => ['style' => 'width:8%'],
                                            'value' => 'requestBy.profile.name',
                                            'filter' => Select2::widget([
                                                'model' => $searchModel,
                                                'attribute' => 'request_by',
                                                'data' => ArrayHelper::map(Profile::find()->all(), 'user.id', 'name'),
                                                'theme' => Select2::THEME_DEFAULT,
                                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                                'language' => 'th',
                                                'pluginOptions' => ['allowClear' => true],
                                            ])
                                        ],

                                        [
                                            'attribute' => 'categories_id',
                                            'format' => 'html',
                                            'contentOptions' => ['class' => 'text-center'],
                                            'options' => ['style' => 'width:8%'],
                                            'value' => function ($model) {
                                                return '<span class="badge" style="background-color:' . $model->categories->color . ';"><b>' . $model->categories->category_code . '</b></span>';
                                            },
                                            'filter' => Select2::widget([
                                                'model' => $searchModel,
                                                'attribute' => 'categories_id',
                                                'data' => ArrayHelper::map(Categories::find()->all(), 'id', 'category_code'),
                                                'theme' => Select2::THEME_DEFAULT,
                                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                                'language' => 'th',
                                                'pluginOptions' => ['allowClear' => true],
                                            ])
                                        ],

                                        [
                                            'attribute' => 'departments_id',
                                            'label' => 'แผนก',
                                            'format' => 'html',
                                            'contentOptions' => ['class' => 'text-center'],
                                            'options' => ['style' => 'width:8%'],
                                            'value' => function ($model) {
                                                return '<span class="badge" style="background-color:' . $model->departments->color . ';"><b>' . $model->departments->department_code . '</b></span>';
                                            },
                                            'filter' => Select2::widget([
                                                'model' => $searchModel,
                                                'attribute' => 'departments_id',
                                                'data' => ArrayHelper::map(Departments::find()->all(), 'id', 'department_code'),
                                                'theme' => Select2::THEME_DEFAULT,
                                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                                'language' => 'th',
                                                'pluginOptions' => ['allowClear' => true],
                                            ])
                                        ],


                                        // [
                                        //     'attribute' => 'covenant',
                                        //     'format' => 'html',
                                        //     // 'options' => ['style' => 'width:150px'],
                                        //     'value' => function ($model) {
                                        //         return $model->listDownloadFiles('covenant');
                                        //     },
                                        //     'filter' => false
                                        // ],
                                        // ['attribute'=>'docs','value'=>function($model){return $model->listDownloadFiles('docs');},'format'=>'html'],
                                    ],
                                ]); ?>

                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="col-md-4">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?= Yii::t('app', 'Grap of Category') ?></h3>
                    </div>
                    <div class="panel-body">

                        <?= Highcharts::widget([
                            'scripts' => ['modules/exporting', 'themes/grid-light'],
                            'options' => [
                                'title' => ['text' => Yii::t('app', 'Grap of Category'), 'style' => ['fontFamily' => Yii::t('app', 'Fonts')]],
                                'xAxis' => ['categories' => [Yii::t('app', 'group data')]],
                                'yAxis' => ['title' => ['text' => Yii::t('app', 'Times'), 'style' => ['fontFamily' => Yii::t('app', 'Fonts'),]]],
                                'series' => [
                                    [
                                        'type' => 'pie',
                                        'name' => 'Category',
                                        'data' => $graphCategory,
                                        'tooltip' => [
                                            // 'pointFormat' => '<b>{point.name}</b>: {point.percentage:.1f}%',
                                            'pointFormat' => '<b>{point.name}</b>: {point.y} ({point.percentage:.1f}%)',
                                        ],
                                        'dataLabels' => [
                                            'style' => [
                                                'color' => '#000',
                                            ],
                                        ],
                                    ],
                                ],
                            ],
                        ]);
                        ?>
                    </div>
                </div>
            </div>


            <div class="col-md-4">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?= Yii::t('app', 'Grap of Type') ?></h3>
                    </div>
                    <div class="panel-body">

                        <?= Highcharts::widget([
                            'scripts' => ['modules/exporting', 'themes/grid-light'],
                            'options' => [
                                'title' => ['text' => Yii::t('app', 'Grap of Type'), 'style' => ['fontFamily' => Yii::t('app', 'Fonts')]],
                                'xAxis' => ['categories' => [Yii::t('app', 'group data')]],
                                'yAxis' => ['title' => ['text' => Yii::t('app', 'Times'), 'style' => ['fontFamily' => Yii::t('app', 'Fonts')]]],
                                'series' => [
                                    [
                                        'type' => 'pie',
                                        'name' => 'Status',
                                        'data' => $graphType,
                                        'keys' => ['name', 'y'],
                                        'tooltip' => [
                                            'pointFormat' => '<b>{point.name}</b>: {point.y} ({point.percentage:.1f}%)',
                                        ],
                                        'dataLabels' => [
                                            'style' => [
                                                'color' => '#000',
                                            ],
                                        ],
                                    ],
                                ],
                            ],
                        ]);
                        ?>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?= Yii::t('app', 'Grap of Status') ?></h3>
                    </div>
                    <div class="panel-body">

                        <?= Highcharts::widget([
                            'scripts' => ['modules/exporting', 'themes/grid-light'],
                            'options' => [
                                'title' => ['text' => Yii::t('app', 'Grap of Status'), 'style' => ['fontFamily' => Yii::t('app', 'Fonts')]],
                                'xAxis' => ['categories' => [Yii::t('app', 'group data')]],
                                'yAxis' => ['title' => ['text' => Yii::t('app', 'Times'), 'style' => ['fontFamily' => Yii::t('app', 'Fonts')]]],
                                'series' => [
                                    [
                                        'type' => 'pie',
                                        'name' => 'Status',
                                        'data' => $graphStatus,
                                        'keys' => ['name', 'y'],
                                        'tooltip' => [
                                            'pointFormat' => '<b>{point.name}</b>: {point.y} ({point.percentage:.1f}%)',
                                        ],
                                        'dataLabels' => [
                                            'style' => [
                                                'color' => '#000',
                                            ],
                                        ],
                                    ],
                                ],
                            ],
                        ]);
                        ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- <div class="row">
    <div class="col-md-12">
        <div class="box box-danger box-solid">
            <div class="box-header">
                <div class="box-title"> <?= Yii::t('app', 'Calendar') ?></div>
            </div>
            <div class="box-body">
                <?= yii2fullcalendar::widget([
                    'header' => [
                        'left' => 'prev,next today',
                        'center' => 'title',
                        'right' => 'month,agendaWeek,agendaDay',
                    ],
                    'clientOptions' => [
                        'lang' => 'th',
                        'lazyFetching' => true,
                        'timeFormat' => '', // Remove the timeFormat option
                        'forceEventDuration' => true,
                        'ignoreTimezone' => true,
                    ],
                    'ajaxEvents' => Url::to(['/operator/report/jsoncalendar']),
                ]) ?>
            </div>
        </div>
    </div>
</div> -->