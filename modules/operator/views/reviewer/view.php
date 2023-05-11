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

                                // 'reviewerName.profile.name',
                                [
                                    'attribute' => 'reviewerName.profile.name',
                                    // 'value' => $model->requester_by,
                                    'value' => function ($model) {
                                        return $model->reviewer_name ? $model->reviewerName->profile->name : Yii::t('app', 'No Data');
                                    },
                                ],
                                [
                                    'attribute' => 'reviewer_at',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return $model->reviewer_at ? $model->reviewer_at : Yii::t('app', 'No Data');
                                    },
                                ],
                                [
                                    'attribute' => 'document_number',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return $model->document_number ? $model->document_number : Yii::t('app', 'No Data');
                                    },
                                ],

                                [
                                    'attribute' => 'document_revision',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return $model->document_revision ? $model->document_revision : Yii::t('app', 'No Data');
                                    },
                                ],
                                [
                                    'attribute' => 'document_age',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        return $model->document_age ? $model->document_age : Yii::t('app', 'No Data');
                                    },
                                ],
                                'document_public_at',
                                // 'stamps_id',
                                [
                                    'attribute' => 'stamps_id',
                                    'format' => 'html',
                                    'value' => function ($model) {
                                        if (isset($model->stamps)) {
                                            $massageColor = isset($model->stamps->color) ? $model->stamps->color : 'gray';
                                            $massageName = isset($model->stamps->stamp_name) ? $model->stamps->stamp_name : 'Unknown';
                                            $fullMassage = '<span class="badge" style="background-color:' . $massageColor . ';"><b>' . $massageName . '</b></span>';
                                            return $fullMassage;
                                        } else {
                                            return Yii::t('app', 'No Data');
                                        }
                                    },
                                ],
                                'document_ref',
                                'document_tags',
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