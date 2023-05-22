<?php

use app\modules\operator\models\Points;
use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use app\modules\operator\models\Reviewer;
use app\modules\operator\models\User;
use app\modules\operator\models\Requester;
use app\modules\operator\models\Stamps;
use app\modules\operator\models\Status;
use app\modules\operator\models\Types;
use kartik\widgets\DatePicker;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\operator\models\ReviewerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Reviewer');
$this->params['breadcrumbs'][] = $this->title;

?>



<div class="reviewer-index">

    <div style="display: flex; justify-content: space-between;">
        <p style="text-align: left;">
            <?= Html::a('<i class="fas fa-arrow-circle-left"></i> ' . Yii::t('app', 'Requester Page'), ['requester/index'], ['class' => 'btn btn-info']) ?>
            <?= Html::a('<i class="fas fa-refresh"></i> ' . Yii::t('app', ''), [''], ['class' => 'btn btn-danger']) ?>
        </p>

        <p style="text-align: right;">
            <?= Html::a(Yii::t('app', 'Approver Page') . ' <i class="fas fa-arrow-circle-right"></i> ', ['approver/index'], ['class' => 'btn btn-success']) ?>
        </p>
    </div>

    <div class="actions-form">
        <div class="box box-warning box-solid">
            <div class="box-header">
                <div class="box-title"><?= $this->title ?> : <small></small></div>
            </div>
            <div class="box-body">
                <?= GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],

                        [
                            'class' => 'kartik\grid\ActionColumn',
                            'options' => ['style' => 'width:120px'],
                            'buttonOptions' => ['class' => 'btn btn-default'],
                            'template' => '<div class="btn-group btn-group-sm text-center" role="group"> {view} {update} </div>',
                            'buttons' => [
                                'update' => function ($url, $model, $key) {
                                    if ($model->requester->status->id === 4) {
                                        return '';
                                    } else {
                                        return Html::a('<span class="glyphicon glyphicon-edit"></span>', $url, [
                                            'title' => Yii::t('app', 'Reviewer'),
                                            'class' => 'btn btn-warning',
                                        ]);
                                    }
                                },
                                'delete' => function ($url, $model, $key) {
                                    if ($model->requester->status->id === 4) {
                                        return Html::a('<span class="glyphicon glyphicon-trash"></span>', $url, [
                                            'title' => Yii::t('app', 'Delete'),
                                            'class' => 'btn btn-danger',
                                            'data' => [
                                                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                                                'method' => 'post',
                                            ],
                                        ]);
                                    } else {
                                        return '';
                                    }
                                },
                                'view' => function ($url, $model, $key) {
                                    return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                        'title' => Yii::t('app', 'View'),
                                        'class' => 'btn btn-info',
                                    ]);
                                },
                            ],
                        ],


                        [
                            'attribute' => 'requester.status_id',
                            'options' => ['style' => 'width:120px;'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'format' => 'html',
                            'value' => function ($model) {

                                $blinkClass = ($model->requester->status->id == 1 || $model->requester->status->id == 2) ? 'blink' : '';

                                return '<span class="badge ' . $blinkClass . '" style="background-color:' . $model->requester->status->color . ';"><b>' . $model->requester->status->status_details . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'status_id',
                                'data' => ArrayHelper::map(Status::find()->all(), 'id', 'status_details'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        // 'requester.document_number',
                        [
                            'attribute' => 'requester.document_number',
                            'options' => ['style' => 'width:150px;'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'format' => 'html',
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'document_number',
                                'data' => ArrayHelper::map(Requester::find()->all(), 'document_number', 'document_number'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        // 'document_revision',
                        [
                            'attribute' => 'requester.latest_rev',
                            'label' => 'Revision',
                            'format' => 'html',
                            'options' => ['style' => 'width:60px;'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'value' => function ($model) {
                                // return $model->document_revision ? $model->document_revision : '<span style="color: red;"> ' . Yii::t('app', 'No Data') . '</span>';
                                return $model->requester->latest_rev ? $model->requester->latest_rev : '0';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'latest_rev',
                                'data' => ArrayHelper::map(Requester::find()->all(), 'latest_rev', 'latest_rev'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'attribute' => 'requester.request_by',
                            'format' => 'html',
                            'options' => ['style' => 'width:180px;'],
                            'value' => 'requester.requestBy.profile.name',
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'request_by',
                                'data' => ArrayHelper::map(Requester::find()->all(), 'request_by', 'requestBy.profile.name'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'attribute' => 'requester.document_public_at',
                            'options' => ['style' => 'width:120px;'],
                            'format' => 'html',
                            'value' => function ($model) {
                                if ($model->requester->document_public_at !== null) {
                                    return Yii::$app->formatter->asDate($model->requester->document_public_at);
                                }
                                return '';
                            },
                            'filter' => DatePicker::widget([
                                'model' => $searchModel,
                                'attribute' => 'document_public_at', // Updated to use the correct attribute
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'pluginOptions' => [
                                    'format' => 'yyyy-mm-dd',
                                    'autoclose' => true,
                                ]
                            ]),
                        ],

                        [
                            'attribute' => 'requester.types_id',
                            'format' => 'html',
                            'options' => ['style' => 'width:160px'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'value' => function ($model) {
                                // return $model->requester->types->type_details ? $model->requester->types->type_details : '<span style="color: red;"> ' . Yii::t('app', 'No Data') . '</span>';
                                return '<span class="badge" style="background-color:' . $model->requester->types->color . ';"><b>' . $model->requester->types->type_details . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'types_id',
                                'data' => ArrayHelper::map(Types::find()->all(), 'id', 'type_details'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'attribute' => 'requester_id',
                            'format' => 'html',
                            // 'options' => ['style' => 'width:18%;'],
                            'value' => function ($model) {
                                $text = $model->requester->document_title ?? '';
                                if (mb_strlen($text) > 20) {
                                    $text = mb_substr($text, 0, 20) . '...';
                                }
                                return $text;
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'requester_id',
                                'data' =>  array_map(function ($value) {
                                    if (mb_strlen($value) > 20) {
                                        $value = mb_substr($value, 0, 20) . '...';
                                    }
                                    return $value;
                                }, ArrayHelper::map(Requester::find()->all(), 'id', 'document_title')),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],



                        // 'reviewer_name',

                        [
                            'attribute' => 'reviewer_name',
                            'format' => 'html',
                            'options' => ['style' => 'width:180px;'],
                            'value' => function ($model) {
                                return $model->reviewer_name ? $model->reviewerName->profile->name : '';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'reviewer_name',
                                'data' => ArrayHelper::map(Reviewer::find()->all(), 'reviewer_name', 'reviewerName.profile.name'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        // 'reviewer_at:date',
                        [
                            'attribute' => 'reviewer_at',
                            'options' => ['style' => 'width:120px'],
                            'format' => 'html',
                            'value' => function ($model) {
                                if ($model->reviewer_at !== null) {
                                    return Yii::$app->formatter->asDate($model->reviewer_at);
                                }
                                return '';
                            },
                            'filter' => DatePicker::widget([
                                'model' => $searchModel,
                                'attribute' => 'reviewer_at',
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'pluginOptions' => [
                                    'format' => 'yyyy-mm-dd',
                                    'autoclose' => true,
                                ]
                            ]),
                        ],

                        // 'document_age',
                        // 'document_public_at',


                        //'document_ref',
                        //'document_tags',
                        // 'points.point_name',
                        // [
                        //     'attribute' => 'points_id',
                        //     'format' => 'html',
                        //     'options' => ['style' => 'width:9%;'],
                        //     'value' => function ($model) {
                        //         $value = $model->points ? $model->points->point_name :  '';
                        //         if (mb_strlen($value) > 20) {
                        //             $value = mb_substr($value, 0, 20) . '...';
                        //         }
                        //         return $value;
                        //     },
                        //     'filter' => Select2::widget([
                        //         'model' => $searchModel,
                        //         'attribute' => 'points_id',
                        //         'data' =>  array_map(function ($value) {
                        //             if (mb_strlen($value) > 18) {
                        //                 $value = mb_substr($value, 0, 18) . '...';
                        //             }
                        //             return $value;
                        //         }, ArrayHelper::map(Points::find()->all(), 'id', 'point_name')),
                        //         'theme' => Select2::THEME_DEFAULT,
                        //         'options' => ['placeholder' => Yii::t('app', 'Select...')],
                        //         'language' => 'th',
                        //         'pluginOptions' => [
                        //             'allowClear' => true
                        //         ],
                        //     ])
                        // ],
                        //'reviewer_comment:ntext',
                        //'additional_training:ntext',

                    ],
                ]); ?>

            </div>

        </div>
    </div>
</div>