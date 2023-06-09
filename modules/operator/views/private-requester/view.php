<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Requester */

$this->title = $model->document_number;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Requesters'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="private-requester-view">
    <?php if (Yii::$app->user->identity->id === $model->request_by && Yii::$app->user->identity->updated === 1 || Yii::$app->user->identity->id === 1) { ?>
        <p>
            <?= Html::a('<i class="fas fa-chevron-left"></i> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
            <?= Html::a('<i class="fas fa-edit"></i> ' . Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-warning']) ?>
        </p>
    <?php } else { ?>
        <p>
            <?= Html::a('<span class="fas fa-chevron-left"></span> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
        </p>
    <?php } ?>
    <div class="row">
        <div class="col-sm-12">
            <div class="clearfix">
                <?php $percentages = $model->getStatusPercentage(); ?>
                <small class="badge bg-green pull-right"><?= $percentages ?>%</small>
            </div>
            <div class="progress lg">
                <div class="progress-bar progress-bar-success" style="width: <?= $percentages ?>%;"></div>
            </div>
        </div>
    </div>
    <div class="actions-form">

        <div class="box box-info box-solid">
            <div class="box-header">
                <div class="box-title"><?= Yii::t('app', 'Requester') ?> </div>
            </div>
            <div class="box-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'template' => '<tr><th style="width: 250px;">{label}</th><td> {value}</td></tr>',
                    'attributes' => [


                        [
                            'attribute' => 'status.status_name',
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:'
                                    . $model->status->color
                                    . ';"><b>'
                                    . $model->status->status_details
                                    . '</b></span>';
                            },
                        ],

                        [
                            'attribute' => 'document_number',
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span style="color:'
                                    . $model->status->color
                                    . ';"><b>' . $model->document_number . ' Rev. ' . $model->latest_rev . '</b></span>';
                            },
                        ],

                        [
                            'attribute' => 'types_id',
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:'
                                    . $model->types->color
                                    . ';"><b>'
                                    . $model->types->type_details
                                    . '</b></span>';
                            },
                        ],

                        'type_details:ntext',

                        [
                            'attribute' => 'request_by',
                            'format' => 'html',
                            'value' => $model->requestBy->profile->name,
                        ],

                        [
                            'attribute' => 'categories_id',
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:'
                                    . $model->categories->color . ';"><b>'
                                    . $model->categories->category_code
                                    . ' </b></span> - '
                                    . $model->categories->category_details;
                            },
                        ],
                        [
                            'attribute' => 'departments_id',
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:'
                                    . $model->departments->color . ';"><b>'
                                    . $model->departments->department_code
                                    . '</b></span> - '
                                    . $model->departments->department_details;
                            },

                        ],
                        'document_title',
                        'details:ntext',
                        'document_age',
                        'document_public_at:date',

                        [
                            'attribute' => 'covenant',
                            'format' => 'html',
                            'value' => $model->listDownloadFiles('covenant')
                        ],
                        [
                            'attribute' => 'docs',
                            'format' => 'html',
                            'value' => $model->listDownloadFiles('docs')
                        ],

                        'created_at:date',
                        [
                            'attribute' => 'created_by',
                            'format' => 'html',
                            'value' => $model->createdBy->profile->name,

                        ],
                        'updated_at:date',

                        [
                            'attribute' => 'updated_by',
                            'format' => 'html',
                            'value' => $model->updatedBy->profile->name,
                        ],

                    ],
                ]) ?>

            </div>
        </div>
    </div>

    <div class="box box-warning box-solid">
        <div class="box-header">
            <div class="box-title"><?= Yii::t('app', 'Reviewer') ?></div>
        </div>
        <div class="box-body">
            <?= DetailView::widget([
                'model' => $model,
                'template' => '<tr><th style="width: 250px;">{label}</th><td> {value}</td></tr>',
                'attributes' => [
                    // 'reviewer.reviewerName.profile.name',
                    [
                        'attribute' => 'reviewer.reviewerName.profile.name',
                        'format' => 'html',
                        'value' => $model->reviewer->reviewerName->profile->name ?? '',

                    ],
                    'reviewer.reviewer_at:date',
                    'reviewer.document_ref',
                    // 'reviewer.points_id',
                    [
                        'attribute' => 'reviewer.points_id',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->reviewer->points ? $model->reviewer->points->point_name : Yii::t('app', '');
                        },
                    ],
                    'reviewer.additional_training:ntext',
                    'reviewer.reviewer_comment:ntext',
                ],
            ]) ?>
        </div>
    </div>

    <div class="box box-success box-solid">
        <div class="box-header">
            <div class="box-title"><?= Yii::t('app', 'Approve') ?></div>
        </div>
        <div class="box-body">
            <?= DetailView::widget([
                'model' => $model,
                'template' => '<tr><th style="width: 250px;">{label}</th><td> {value}</td></tr>',
                'attributes' => [
                    'approver.approverBy.profile.name',
                    'approver.approver_at:date',
                    'approver.approver_comment',
                ],
            ]) ?>
        </div>
    </div>

</div>