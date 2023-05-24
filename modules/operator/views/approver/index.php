<?php

use app\modules\operator\models\Approver;
use yii\helpers\Html;
use kartik\grid\GridView;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use app\modules\operator\models\Reviewer;
use app\modules\operator\models\Requester;
use app\modules\operator\models\Status;
use kartik\widgets\DatePicker;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\operator\models\ApproverSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Approver');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="approver-index">
    <div style="display: flex; justify-content: space-between;">
        <p style="text-align: left;">
            <?= Html::a('<i class="fas fa-arrow-circle-left"></i> ' . Yii::t('app', 'Reviewer Page'), ['reviewer/index'], ['class' => 'btn btn-warning']) ?>
            <?= Html::a('<i class="fas fa-refresh"></i> ' . Yii::t('app', ''), [''], ['class' => 'btn btn-danger']) ?>
        </p>
    </div>
    <div class="actions-form">
        <div class="box box-success box-solid">
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
                            'attribute' => 'requester.document_number',
                            'options' => ['style' => 'width:10%;'],
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

                        [
                            'attribute' => 'requester.latest_rev',
                            'label' => 'Revision',
                            'format' => 'html',
                            'options' => ['style' => 'width:10%;'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'value' => function ($model) {
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
                            'options' => ['style' => 'width:10%;'],
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

                        // ****** รอแก้ไข **** reviewer_name ไม่สามารถค้นหาได้
                        [
                            'attribute' => 'requester.reviewer.reviewer_name',
                            'format' => 'html',
                            'options' => ['style' => 'width:10%;'],
                            'value' => 'requester.reviewer.reviewerName.profile.name',
                            'value' => function ($model) {
                                return $model->requester->reviewer->reviewerName->profile->name;
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'reviewer_name', //
                                'data' => ArrayHelper::map(reviewer::find()->all(), 'reviewer_name', 'requester.reviewer.reviewerName.profile.name'),
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
                            'options' => ['style' => 'width:20%;'],
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

                        [
                            'attribute' => 'approver_by',
                            'format' => 'html',
                            'options' => ['style' => 'width:10%;'],
                            'value' => function ($model) {
                                return $model->approver_by ? $model->approverBy->profile->name : '';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'approver_by',
                                'data' => ArrayHelper::map(Approver::find()->all(), 'approver_by', 'approverBy.profile.name'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'attribute' => 'approver_at',
                            'value' => function ($model) {
                                if ($model->approver_at !== null) {
                                    $timestamp = strtotime($model->approver_at);
                                    if ($model->approver_at !== null) {
                                        $timestamp = strtotime($model->approver_at);
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
                                        return '';
                                    }
                                }
                            },
                            'filter' => DatePicker::widget([
                                'model' => $searchModel,
                                'attribute' => 'approver_at',
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'pluginOptions' => [
                                    'format' => 'yyyy-mm-dd',
                                    'autoclose' => true,
                                ]
                            ]),
                        ],

                        [
                            'attribute' => 'requester.status_id',
                            'options' => ['style' => 'width:10%;'],
                            'contentOptions' => ['class' => 'text-center'],
                            'format' => 'html',
                            'value' => function ($model) {
                                $blinkClass = $model->requester->status->id == 3 ? 'blink' : '';
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

                        [
                            'class' => 'kartik\grid\ActionColumn',
                            'options' => ['style' => 'width:10%'],
                            'buttonOptions' => ['class' => 'btn btn-default'],
                            'template' => '<div class="btn-group btn-group-sm text-center" role="group">  {update} {view}  </div>',
                            'buttons' => [
                                'update' => function ($url, $model, $key) {
                                    if ($model->requester->status->id === 4) {
                                        return '';
                                    } else {
                                        return Html::a('<span class="glyphicon glyphicon-edit"></span>', $url, [
                                            'title' => Yii::t('app', 'Approver'),
                                            'class' => 'btn btn-danger',
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
                    ],
                ]); ?>
            </div>
        </div>
    </div>
</div>
