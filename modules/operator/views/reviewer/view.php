<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Reviewer */

$this->title = $model->requester->document_number;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Reviewer'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="reviewer-view">

    <div style="display: flex; justify-content: space-between;">
        <p style="text-align: left;">
            <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Back'), ['index'], ['class' => 'btn btn-primary']) ?>
        </p>
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
                                    'value' => function ($model) {
                                        return '<span style="color:'
                                            . $model->requester->status->color
                                            . ';"><b>' . $model->requester->document_number . '</b></span>';
                                    },
                                ],

                                [
                                    'attribute' => 'reviewerName.profile.name',
                                    'value' => function ($model) {
                                        return $model->reviewer_name ? $model->reviewerName->profile->name : Yii::t('app', 'No Reviewer');
                                    },
                                ],

                                [
                                    'attribute' => 'reviewer_at',
                                    'format' => 'html',
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

                                [
                                    'attribute' => 'document_revision',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return $model->document_revision ? $model->document_revision : Yii::t('app', '0');
                                    },
                                ],

                                [
                                    'attribute' => 'document_ref',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return $model->document_ref ? $model->document_ref : Yii::t('app', '');
                                    },
                                ],

                                [
                                    'attribute' => 'points_id',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return $model->points ? $model->points->point_name : Yii::t('app', '');
                                    },
                                ],

                                [
                                    'attribute' => 'reviewer_comment',
                                    'format' => 'ntext',
                                    'value' => function ($model) {
                                        return $model->reviewer_comment ? $model->reviewer_comment : Yii::t('app', '');
                                    },
                                ],

                                [
                                    'attribute' => 'additional_training',
                                    'format' => 'ntext',
                                    'value' => function ($model) {
                                        return $model->additional_training ? $model->additional_training : Yii::t('app', '');
                                    },
                                ],

                                [
                                    'attribute' => 'document_tags',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return $model->document_tags ? $model->document_tags : Yii::t('app', '');
                                    },
                                ],
                            ],
                        ]) ?>
                    </div>
                </div>

                <p>
                    <?= Html::a('<span class="glyphicon glyphicon-edit"></span> ' . Yii::t('app', 'Reviewer'), ['update', 'id' => $model->id], ['class' => 'btn-lg btn btn-danger btn-block']) ?>
                </p>
            </div>

        </div>
    </div>
</div>