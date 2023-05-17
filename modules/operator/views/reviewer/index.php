<?php

use app\modules\operator\models\Points;
use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use app\modules\operator\models\User;
use app\modules\operator\models\Requester;
use app\modules\operator\models\Stamps;
use app\modules\operator\models\Status;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\operator\models\ReviewerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Reviewer');
$this->params['breadcrumbs'][] = $this->title;

?>

<style>
    @keyframes blink {
        0% {
            opacity: 1;
        }

        50% {
            opacity: 0;
        }

        100% {
            opacity: 1;
        }
    }

    .blink {
        animation: blink 1s infinite;
    }
</style>


<div class="reviewer-index">

    <!-- <h1><?= Html::encode($this->title) ?></h1> -->

    <p style="text-align: left;">
        <?= Html::a('<i class="fa fa-arrow-circle-left"></i> ' .Yii::t('app', 'Requester Page'), ['requester/index'], ['class' => 'btn btn-warning']) ?>
    </p>
    

    <div class="actions-form">
        <div class="box box-primary box-solid">
            <div class="box-header">
                <div class="box-title"><?= $this->title ?></div>
            </div>
            <div class="box-body">
                <?= GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],

                        [
                            'class' => 'kartik\grid\ActionColumn',
                            'options' => ['style' => 'width:50px;'],
                            'buttonOptions' => ['class' => 'btn btn-default'],
                            'template' => '<div class="btn-group btn-group-sm text-center" role="group"> {view} {update}{delete} </div>',
                            'buttons' => [
                                'update' => function ($url, $model, $key) {
                                    if ($model->requester->status->id === 4) {
                                        return '';
                                    } else {
                                        return Html::a('<span class="glyphicon glyphicon-tower"></span>', $url, [
                                            'title' => Yii::t('app', 'Approver'),
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
                            'options' => ['style' => 'width:150px;'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'format' => 'html',
                            'value' => function ($model) {
                                $blinkClass = $model->requester->status->id == 1 ? 'blink' : '';
                                return '<span class="badge ' . $blinkClass . '" style="background-color:' . $model->requester->status->color . ';"><b>' . $model->requester->status->status_details . '</b></span>';
                            },
                            // 'filter' => Html::activeDropDownList(
                            //     $searchModel,
                            //     'status_id',
                            //     ArrayHelper::map(Status::find()->all(), 'id', 'status_details'),
                            //     [
                            //         'class' => 'form-control', // Add Bootstrap form-control class
                            //         'prompt' => Yii::t('app', 'Select...')
                            //     ]
                            // ),
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
                            'attribute' => 'document_revision',
                            'label' => 'Revision',
                            'format' => 'html',
                            'options' => ['style' => 'width:100px;'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'value' => function ($model) {
                                return $model->document_revision ? $model->document_revision : Yii::t('app', '');
                            },
                        ],

                        [
                            'attribute' => 'requester_id',
                            'format' => 'html',
                            'value' => function ($model) {
                                $text = $model->requester->document_title;
                                if (mb_strlen($text) > 30) {
                                    $text = mb_substr($text, 0, 30) . '...';
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
                            'options' => ['style' => 'width:200px;'],
                            'value' => function ($model) {
                                return $model->reviewer_name ? $model->reviewerName->profile->name : Yii::t('app', '');
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'reviewer_name',
                                'data' => ArrayHelper::map(User::find()->all(), 'id', 'profile.name'),
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
                            'format' => 'html',
                            'options' => ['style' => 'width:150px;'],
                            'value' => function ($model) {
                                if ($model->reviewer_at !== null) {
                                    $timestamp = strtotime($model->reviewer_at);
                                    $monthNames = [
                                        'ม.ค.', 'ก.พ.', 'มี.ค.', 'เม.ย.',
                                        'พ.ค.', 'มิ.ย.', 'ก.ค.', 'ส.ค.',
                                        'ก.ย.', 'ต.ค.', 'พ.ย.', 'ธ.ค.'
                                    ];
                                    $day = date('d', $timestamp);
                                    $month = $monthNames[date('n', $timestamp) - 1];
                                    $year = date('Y', $timestamp);
                                    return "$day $month $year";
                                } else {
                                    return Yii::t('app', '');
                                }
                            },
                        ],
                        // 'document_age',
                        // 'document_public_at',
                        // 'stamps_id',
                        [
                            'attribute' => 'stamps_id',
                            'format' => 'html',
                            'options' => ['style' => 'width:150px;'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'value' => function ($model) {
                                return $model->stamps && $model->stamps->stamp_name ? '<span class="badge" style="background-color:' . $model->stamps->color . ';"><b>' . $model->stamps->stamp_name . '</b></span>' : '';
                                // return '<span class="badge" style="background-color:' . $model->stamps->color . ';"><b>' . $model->stamps->stamp_name . '</b></span>';
                            },
                            'filter' => Html::activeDropDownList($searchModel, 'stamps_id', ArrayHelper::map(Stamps::find()->all(), 'id', 'stamp_name'), ['class' => 'form-control', 'prompt' => Yii::t('app', 'Select...')])
                        ],
                        //'document_ref',
                        //'document_tags',
                        // 'points.point_name',
                        [
                            'attribute' => 'points_id',
                            'format' => 'html',
                            'options' => ['style' => 'width:200px;'],
                            'value' => function ($model) {
                                $value = $model->points ? $model->points->point_name : '';
                                if (mb_strlen($value) > 20) {
                                    $value = mb_substr($value, 0, 20) . '...';
                                }
                                return $value;
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'points_id',
                                'data' =>  array_map(function ($value) {
                                    if (mb_strlen($value) > 18) {
                                        $value = mb_substr($value, 0, 18) . '...';
                                    }
                                    return $value;
                                }, ArrayHelper::map(Points::find()->all(), 'id', 'point_name')),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],
                        //'reviewer_comment:ntext',
                        //'additional_training:ntext',

                    ],
                ]); ?>

            </div>

        </div>
    </div>
</div>