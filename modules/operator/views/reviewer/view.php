<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
// use kartik\detail\DetailView;


/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Reviewer */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Reviewers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="reviewer-view">

   <p>
        <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Back'), ['index'], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('<span class="glyphicon glyphicon-edit"></span> ' . Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-warning']) ?>
        <?= Html::a('<span class="glyphicon glyphicon-trash"></span> ' . Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>
 
    <div class="actions-form">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-info box-solid">
                    <div class="box-header">
                        <div class="box-title"><?= Yii::t('app', 'Reviewer') ?></div>
                    </div>
                    <div class="box-body">
                        <?= DetailView::widget([
                            'model' => $model,
                            'attributes' => [
                                // 'id',
                                // 'requester_id',
                                [
                                    'attribute' => 'status',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return '<span class="badge" style="background-color:' . $model->requester->status->color . ';"><b>' .$model->requester->status->status_details . '</b></span>';
                                    },
                                ],
                                'requester.document_title',

                                'reviewerName.profile.name',
                                // [
                                //     'attribute' => 'reviewerName.profile.name',
                                //     'value' => $model->reviewerName->profile,
                                // ],
                                'reviewer_at',
                                'document_number',
                                'document_revision',
                                'document_age',
                                'document_public_at',
                                'stamps_id',
                                [
                                    'attribute' => 'stamps_id',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return '<span class="badge" style="background-color:' . $model->stamps->color . ';"><b>' . $model->stamps->stamp_name . '</b></span>';
                                    },
                                ],
                                'document_ref',
                                'document_tags',
                                // 'points_id',
                                [
                                    'attribute' => 'points_id',
                                    'format' => 'html',
                                    'value' => function ($model) {

                                        // return $model->points->point_name;
                                        return $model->points ? $model->points->point_name : '';
                                    },
                                    // 'viewModel' => $model->points,
                                ],

                                'reviewer_comment:ntext',
                                'additional_training:ntext',
                            ],
                        ]) ?>

                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box box-success box-solid">
                    <div class="box-header">
                        <div class="box-title"><?= Yii::t('app', 'Approver') ?></div>
                    </div>
                    <div class="box-body">
                        <?= DetailView::widget([
                            'model' => $model,
                            'attributes' => [
                                'approverName.profile.name',
                                'approver_at:date',
                                'approver_comment:ntext',
                            ],
                        ]) ?>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>