<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
// use kartik\detail\DetailView;


/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Reviewer */

$this->title = $model->requester->document_number;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Reviewer'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="approver-view">

    <div style="display: flex; justify-content: space-between;">
        <p style="text-align: left;">
            <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Back'), ['index'], ['class' => 'btn btn-primary']) ?>
        </p>
        <!-- <p style="text-align: right;">
            <?= Html::a('<span class="glyphicon glyphicon-edit"></span> ' . Yii::t('app', 'Reviewer'), ['update', 'id' => $model->id], ['class' => 'btn btn-warning']) ?>

        </p> -->
    </div>

    <div class="actions-form">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-info box-solid">
                    <div class="box-header">
                        <div class="box-title"><?= Yii::t('app', 'Requester') ?> </div>
                    </div>
                    <div class="box-body">
                        <?= DetailView::widget([
                            'model' => $model,
                            'template' => '<tr><th style="width: 200px;">{label}</th><td> {value}</td></tr>',
                            'attributes' => [

                                [
                                    'attribute' => 'requester.document_number',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return '<span style="color:'
                                            . $model->requester->status->color
                                            . ';"><b>' . $model->requester->document_number . '</b></span>';
                                    },

                                ],

                                [
                                    'attribute' => 'requester.latest_rev',
                                    'format' => 'html',
                                    'options' => ['style' => 'width:3%;'],
                                    'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                                    'value' => function ($model) {
                                        // return $model->document_revision ? $model->document_revision : '<span style="color: red;"> ' . Yii::t('app', 'No Data') . '</span>';
                                        return $model->requester->latest_rev ? $model->requester->latest_rev : '0';
                                    },
                                ],

                                [
                                    'attribute' => 'requester.status.status_name',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return '<span class="badge" style="background-color:'
                                            . $model->requester->status->color
                                            . ';"><b>'
                                            . $model->requester->status->status_details
                                            . '</b></span>';
                                    },
                                ],
                                [
                                    'attribute' => 'requester.types_id',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return '<span class="badge" style="background-color:'
                                            . $model->requester->types->color
                                            . ';"><b>'
                                            . $model->requester->types->type_details
                                            . '</b></span>';
                                    },
                                ],

                                [
                                    'attribute' => 'requester.request_by',
                                    'format' => 'html',
                                    'value' => $model->requester->requestBy->profile->name,

                                ],

                                [
                                    'attribute' => 'requester.categories_id',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return '<span class="badge" style="background-color:'
                                            . $model->requester->categories->color . ';"><b>'
                                            . $model->requester->categories->category_code
                                            . ' </b></span> - '
                                            . $model->requester->categories->category_details;
                                    },
                                ],
                                [
                                    'attribute' => 'requester.departments_id',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return '<span class="badge" style="background-color:'
                                            . $model->requester->departments->color . ';"><b>'
                                            . $model->requester->departments->department_code
                                            . '</b></span> - '
                                            . $model->requester->departments->department_details;
                                    },

                                ],
                                'requester.document_title',
                                'requester.details:ntext',

                                [
                                    'attribute' => 'requester.document_age',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return $model->requester->document_age ? $model->requester->document_age : Yii::t('app', '');
                                    },
                                ],

                                [
                                    'attribute' => 'requester.document_public_at',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        if ($model->requester->document_public_at !== null) {
                                            $timestamp = strtotime($model->requester->document_public_at);
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

                                [
                                    'attribute' => 'requester.covenant',
                                    'format' => 'html',
                                    'value' => $model->requester->listDownloadFiles('covenant')
                                ],


                                [
                                    'attribute' => 'requester.docs',
                                    'format' => 'html',
                                    'value' => $model->requester->listDownloadFiles('docs')
                                ],

                                'requester.created_at:date',

                                [
                                    'attribute' => 'requester.created_by',
                                    'format' => 'html',
                                    'value' => $model->requester->createdBy->profile->name,

                                ],
                                'requester.updated_at:date',
                                [
                                    'attribute' => 'requester.updated_by',
                                    'format' => 'html',
                                    'value' => $model->requester->updatedBy->profile->name,
                                ],
                            ],
                        ]) ?>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-warning box-solid">
                            <div class="box-header">
                                <div class="box-title"><?= Yii::t('app', 'Reviewer') ?></div>
                            </div>
                            <div class="box-body">

                                <?= DetailView::widget([
                                    'model' => $model,
                                    'template' => '<tr><th style="width: 200px;">{label}</th><td> {value}</td></tr>',
                                    'attributes' => [
                                        [
                                            'attribute' => 'requester.document_number',
                                            'format' => 'html',
                                            // 'value' => $model->requester->document_number,
                                            'value' => function ($model) {
                                                return '<span style="color:'
                                                    . $model->requester->status->color
                                                    . ';"><b>' . $model->requester->document_number . '</b></span>';
                                            },
                                        ],
                                        
                                        // 'reviewer.reviewer_name',
                                        [
                                            'attribute' => 'reviewer.reviewer_name',
                                            'format' => 'html',
                                            'value' => $model->reviewer->reviewerName->profile->name,
        
                                        ],
                                        
                                        [
                                            'attribute' => 'reviewer.reviewer_at',
                                            'format' => 'html',
                                            'value' => function ($model) {
                                                if ($model->reviewer->reviewer_at !== null) {
                                                    $timestamp = strtotime($model->reviewer->reviewer_at);
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
        
        
                                        [
                                            'attribute' => 'reviewer.document_revision',
                                            'format' => 'html',
                                            'value' => function ($model) {
                                                return $model->reviewer->document_revision ? $model->reviewer->document_revision : Yii::t('app', '0');
                                            },
                                        ],
        
                                        [
                                            'attribute' => 'reviewer.document_ref',
                                            'format' => 'html',
                                            'value' => function ($model) {
                                                return $model->reviewer->document_ref ? $model->reviewer->document_ref : Yii::t('app', '');
                                            },
                                        ],
        
                                        [
                                            'attribute' => 'reviewer.points_id',
                                            'format' => 'html',
                                            'value' => function ($model) {
                                                return $model->reviewer->points ? $model->reviewer->points->point_name : Yii::t('app', '');
                                            },
                                        ],
                                        // // 'reviewer_comment:ntext',
                                        [
                                            'attribute' => 'reviewer.reviewer_comment',
                                            'format' => 'ntext',
                                            'value' => function ($model) {
                                                return $model->reviewer->reviewer_comment ? $model->reviewer->reviewer_comment : Yii::t('app', '');
                                            },
                                        ],
                                        // // 'additional_training:ntext',
                                        [
                                            'attribute' => 'reviewer.additional_training',
                                            'format' => 'ntext',
                                            'value' => function ($model) {
                                                return $model->reviewer->additional_training ? $model->reviewer->additional_training : Yii::t('app', '');
                                            },
                                        ],
                                        // // 'document_tags',
                                        // [
                                        //     'attribute' => 'reviewer.document_tags',
                                        //     'format' => 'html',
                                        //     'value' => function ($model) {
                                        //         return $model->reviewer->document_tags ? $model->reviewer->document_tags : Yii::t('app', '');
                                        //     },
                                        // ],
                                    ],
                                ]) ?>

                            </div>

                        </div>
                       

                    </div>
                    <div class="col-md-12">
                        <div class="box box-success box-solid">
                            <div class="box-header">
                                <div class="box-title"><?= Yii::t('app', 'Approver') ?></div>
                            </div>
                            <div class="box-body">
                                <?= DetailView::widget([
                                    'model' => $model,
                                    'template' => '<tr><th style="width: 200px;">{label}</th><td> {value}</td></tr>',
                                    'attributes' => [
                                        // 'approverName.profile.name',
                                         [
                                            'attribute' => 'requester.document_number',
                                            'format' => 'html',
                                            // 'value' => $model->requester->document_number,
                                            'value' => function ($model) {
                                                return '<span style="color:'
                                                    . $model->requester->status->color
                                                    . ';"><b>' . $model->requester->document_number . '</b></span>';
                                            },
                                        ],
                                      
                                        // 'approver_by',
                                        [
                                            'attribute' => 'approver_by',
                                            // 'value' => $model->requester_by,
                                            'value' => function ($model) {
                                                return $model->approver_by ? $model->approverName->profile->name : Yii::t('app', 'No Approver');
                                            },
                                        ],
                                        // 'approver_at:date',
                                        [
                                            'attribute' => 'approver_at',
                                            'format' => 'html',
                                            'value' => function ($model) {
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
                                                    return Yii::t('app', '');
                                                }
                                            },
                                        ],
                                        
                                        // 'approver_comment:ntext',
                                        [
                                            'attribute' => 'approver_comment',
                                            'format' => 'ntext',
                                            'value' => function ($model) {
                                                return $model->approver_comment ? $model->approver_comment : Yii::t('app', '');
                                            },
                                        ],

                                    ],
                                ]) ?>


                            </div>
                        </div>
                        <p>
                            <?= Html::a('<span class="glyphicon glyphicon-edit"></span> ' . Yii::t('app', 'Approver'), ['update', 'id' => $model->id], ['class' => 'btn-lg btn btn-success btn-block']) ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>