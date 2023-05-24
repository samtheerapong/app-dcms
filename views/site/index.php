<?php

use app\modules\operator\models\User;
use app\modules\operator\models\Requester;

use miloschuman\highcharts\Highcharts;
use kartik\grid\GridView;
use kartik\widgets\DatePicker;
use kartik\widgets\Select2;
use yii\helpers\ArrayHelper;

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
                        <span class="info-box-icon bg-purple"><i class="fas fa-file"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text"><?= Yii::t('app', 'All requests') ?></span>
                            <span class="info-box-number">
                                <?= $alldocs ?>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-yellow"><i class="fas fa-folder-open"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text"><?= Yii::t('app', 'Status pending') ?></span>
                            <span class="info-box-number"> <?= $process ?></span>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green"><i class="fas fa-folder"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text"><?= Yii::t('app', 'Status success') ?></span>
                            <span class="info-box-number"><?= $success ?></span>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-blue"><i class="fas fa-users"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text"><?= Yii::t('app', 'All users') ?></span>
                            <span class="info-box-number">
                                <?= $users ?>
                            </span>
                        </div>
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
                                        'attribute' => 'status_id',
                                        'options' => ['style' => 'width:120px'],
                                        'contentOptions' => ['class' => 'text-center'],
                                        'format' => 'html',
                                        'value' => function ($model) {
                                            $blinkClass = $model->status->id == 1 ? 'blink' : '';
                                            return '<span class="badge ' . $blinkClass . '" style="background-color:' . $model->status->color . ';"><b>' . $model->status->status_details . '</b></span>';
                                        },
                                        'filter' => Select2::widget([
                                            'model' => $searchModel,
                                            'attribute' => 'status_id',
                                            'data' => ArrayHelper::map(Requester::find()->all(), 'status_id', 'status.status_details'),
                                            'theme' => Select2::THEME_DEFAULT,
                                            'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                            'language' => 'th',
                                            'pluginOptions' => ['allowClear' => true],
                                        ])
                                    ],

                                    [
                                        'attribute' => 'document_number',
                                        'options' => ['style' => 'width:150px'],
                                        'contentOptions' => ['class' => 'text-center'],
                                        'format' => 'html',
                                        'value' => function ($model) {
                                            return  $model->document_number;
                                        },
                                        'filter' => Select2::widget([
                                            'model' => $searchModel,
                                            'attribute' => 'document_number',
                                            'data' => ArrayHelper::map(Requester::find()->all(), 'document_number', 'document_number'),
                                            'theme' => Select2::THEME_DEFAULT,
                                            'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                            'language' => 'th',
                                            'pluginOptions' => ['allowClear' => true],
                                        ])
                                    ],

                                    [
                                        'attribute' => 'latest_rev',
                                        'options' => ['style' => 'width:100px'],
                                        'contentOptions' => ['class' => 'text-center'],
                                        'format' => ['decimal', 0],
                                        'value' => function ($model) {
                                            return $model->latest_rev ?? 0;
                                        },
                                        'filter' => Select2::widget([
                                            'model' => $searchModel,
                                            'attribute' => 'latest_rev',
                                            'data' => ArrayHelper::map(Requester::find()->all(), 'latest_rev', 'latest_rev'),
                                            'theme' => Select2::THEME_DEFAULT,
                                            'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                            'language' => 'th',
                                            'pluginOptions' => ['allowClear' => true],
                                        ])
                                    ],

                                    [
                                        'attribute' => 'document_title',
                                        'format' => 'ntext',
                                        'options' => ['style' => 'width:auto'],
                                        'value' => function ($model) {
                                            $text = $model->document_title;
                                            if (mb_strlen($text) > 25) {
                                                $text = mb_substr($text, 0, 25) . '...';
                                            }
                                            return $text;
                                        },
                                        'filter' => Select2::widget([
                                            'model' => $searchModel,
                                            'attribute' => 'document_title',
                                            'data' =>  array_map(function ($value) {
                                                if (mb_strlen($value) > 24) {
                                                    $value = mb_substr($value, 0, 24) . '...';
                                                }
                                                return $value;
                                            }, ArrayHelper::map(Requester::find()->all(), 'document_title', 'document_title')),
                                            'theme' => Select2::THEME_DEFAULT,
                                            'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                            'language' => 'th',
                                            'pluginOptions' => ['allowClear' => true],
                                        ])
                                    ],

                                    [
                                        'attribute' => 'document_public_at',
                                        'options' => ['style' => 'width:100px'],
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
                                        'options' => ['style' => 'width:160px'],
                                        'value' => 'requestBy.profile.name',
                                        'filter' => Select2::widget([
                                            'model' => $searchModel,
                                            'attribute' => 'request_by',
                                            'data' => ArrayHelper::map(Requester::find()->all(), 'request_by', 'requestBy.profile.name'),
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
                                        'options' => ['style' => 'width:100px'],
                                        'value' => function ($model) {
                                            return '<span class="badge" style="background-color:' . $model->categories->color . ';"><b>' . $model->categories->category_code . '</b></span>';
                                        },
                                        'filter' => Select2::widget([
                                            'model' => $searchModel,
                                            'attribute' => 'categories_id',
                                            'data' => ArrayHelper::map(Requester::find()->all(), 'categories_id', 'categories.category_code'),
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
                                        'options' => ['style' => 'width:100px'],
                                        'value' => function ($model) {
                                            return '<span class="badge" style="background-color:' . $model->departments->color . ';"><b>' . $model->departments->department_code . '</b></span>';
                                        },
                                        'filter' => Select2::widget([
                                            'model' => $searchModel,
                                            'attribute' => 'departments_id',
                                            'data' => ArrayHelper::map(Requester::find()->all(), 'departments_id', 'departments.department_code'),
                                            'theme' => Select2::THEME_DEFAULT,
                                            'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                            'language' => 'th',
                                            'pluginOptions' => ['allowClear' => true],
                                        ])
                                    ],

                                    [
                                        'attribute' => 'types_id',
                                        'options' => ['style' => 'width:170px'],
                                        'contentOptions' => ['class' => 'text-center'],
                                        'format' => 'html',
                                        'value' => function ($model) {
                                            return '<span class="badge" style="background-color:' . $model->types->color . ';"><b>' . $model->types->type_details . '</b></span>';
                                        },
                                        'filter' => Select2::widget([
                                            'model' => $searchModel,
                                            'attribute' => 'types_id',
                                            'data' => ArrayHelper::map(Requester::find()->all(), 'types_id', 'types.type_details'),
                                            'theme' => Select2::THEME_DEFAULT,
                                            'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                            'language' => 'th',
                                            'pluginOptions' => ['allowClear' => true],
                                        ])
                                    ],
                                ],
                            ]); ?>

                        </div>
                    </div>
                </div>
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
                                                    'pointFormat' => '<b>{point.name}</b>: {point.percentage:.1f}%',
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
                                                    'pointFormat' => '<b>{point.name}</b>: {point.percentage:.1f}%'
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
                                                    'pointFormat' => '<b>{point.name}</b>: {point.percentage:.1f}%'
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
        </section>
    </div>
</div>