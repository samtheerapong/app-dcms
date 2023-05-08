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

    <!-- <h1><?= Html::encode($this->title) ?></h1> -->

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <div class="actions-form">
        <div class="box box-success box-solid">
            <div class="box-header">
                <div class="box-title"><?= $this->title ?></div>
            </div>
            <div class="box-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        // 'id',
                        // 'requester_id',
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
                                return $model->points ? $model->points->point_name: '';
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
</div>