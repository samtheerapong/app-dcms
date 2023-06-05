<?php

use app\modules\operator\models\Profile;
use app\modules\operator\models\Status;
use kartik\grid\GridView;
use kartik\select2\Select2;
use kartik\widgets\DatePicker;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;

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
        </p>
        <p style="text-align: right;">
            <?= Html::a('<i class="fas fa-refresh"></i> ' . Yii::t('app', ''), [''], ['class' => 'btn btn-danger']) ?>
            <?= Html::a('<i class="fa fa-tachometer"></i> ' . Yii::t('app', 'Dashboard'), ['/site/index'], ['class' => 'btn btn-primary']) ?>
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
                            'class' => 'kartik\grid\ActionColumn',
                            // 'options' => ['style' => 'width:20%'],
                            'buttonOptions' => ['class' => 'btn btn-default'],
                            'template' => '<div class="btn-group btn-group-sm text-center" role="group">  {view} {update}  </div>',
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

                        [
                            'attribute' => 'requester.document_number',
                            'options' => ['style' => 'width:10%;'],
                            'contentOptions' => ['class' => 'text-center'], // Center align the content
                            'format' => 'html',
                            'filter' => false
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'document_number',
                            //     // 'data' => ArrayHelper::map(Requester::find()->all(), 'document_number', 'document_number'),
                            //     'data' => ArrayHelper::map($query->all(), 'document_number', 'document_number'),
                            //     'theme' => Select2::THEME_DEFAULT,
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true,
                            //     ],
                            // ]),
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
                            'filter' => false
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'latest_rev',
                            //     'data' => ArrayHelper::map($query->all(), 'latest_rev', 'latest_rev'),
                            //     'theme' => Select2::THEME_DEFAULT,
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true,
                            //     ],
                            // ]),
                        ],

                        [
                            'attribute' => 'requester.request_by',
                            'format' => 'html',
                            'options' => ['style' => 'width:13%;'],
                            'value' => 'requester.requestBy.profile.name',
                            'filter' => false,
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'request_by',
                            //     // 'data' => ArrayHelper::map(Requester::find()->all(), 'request_by', 'requestBy.profile.name'),
                            //     'data' => ArrayHelper::map(Profile::find()->all(), 'user.id', 'name'),
                            //     'theme' => Select2::THEME_DEFAULT,
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true,
                            //     ],
                            // ]),
                        ],

                        [
                            'attribute' => 'requester_id',
                            'format' => 'html',
                            'options' => ['style' => 'width:450px;'],
                            'value' => function ($model) {
                                $text = $model->requester->document_title ?? '';
                                if (mb_strlen($text) > 50) {
                                    $text = mb_substr($text, 0, 50) . '...';
                                }
                                return $text;
                            },
                            'filter' => false
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'requester_id',
                            //     'data' => array_map(function ($value) {
                            //         if (mb_strlen($value) > 50) {
                            //             $value = mb_substr($value, 0, 50) . '...';
                            //         }
                            //         return $value;
                            //     }, ArrayHelper::map($query->all(), 'id', 'document_title')),
                            //     'theme' => Select2::THEME_DEFAULT,
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true,
                            //     ],
                            // ]),
                        ],

                        [
                            'attribute' => 'approver_by',
                            'format' => 'html',
                            'options' => ['style' => 'width:13%;'],
                            'value' => function ($model) {
                                return $model->approver_by ? $model->approverBy->profile->name : '';
                            },
                            'filter' => false
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'approver_by',
                            //     // 'data' => ArrayHelper::map(Approver::find()->all(), 'approver_by', 'approverBy.profile.name'),
                            //     'data' => ArrayHelper::map(Profile::find()->all(), 'user.id', 'name'),
                            //     // 'data' => ArrayHelper::map($query->all(), 'user', 'name'),
                            //     'theme' => Select2::THEME_DEFAULT,
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true,
                            //     ],
                            // ]),
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
                                            'ก.ย.', 'ต.ค.', 'พ.ย.', 'ธ.ค.',
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
                            'filter' => false
                            // 'filter' => DatePicker::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'approver_at',
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'pluginOptions' => [
                            //         'format' => 'yyyy-mm-dd',
                            //         'autoclose' => true,
                            //     ],
                            // ]),
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
                            'filter' => false
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'status_id',
                            //     'data' => ArrayHelper::map(Status::find()->all(), 'id', 'status_details'),
                            //     'theme' => Select2::THEME_DEFAULT,
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true,
                            //     ],
                            // ]),
                        ],
                    ],
                ]); ?>
            </div>
        </div>
    </div>
</div>