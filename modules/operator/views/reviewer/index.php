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

$this->title = Yii::t('app', 'Reviewers');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="reviewer-index">

    <!-- <h1><?= Html::encode($this->title) ?></h1> -->

    <p>
        <?= Html::a(Yii::t('app', 'Create Reviewer'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>
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
                            'template' => '<div class="btn-group btn-group-sm text-center" role="group"> {update} {view}</div>',
                            'buttons' => [
                                'update' => function ($url, $model, $key) {
                                    return Html::a('<span class="glyphicon glyphicon-edit"></span>', $url, [
                                        'title' => Yii::t('yii', 'Update'),
                                        'class' => 'btn btn-default',
                                    ]);
                                },
                            ],
                        ],

                        // 'id',
                        // 'requester_id',
                        [
                            // 'attribute' => 'requester.status_id',
                            'attribute' => 'status_id',
                            'format' => 'html',
                            // 'value' => 'requester.status.status_details',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->requester->status->color . ';"><b>' .$model->requester->status->status_details . '</b></span>';
                            },
                            // 'filter' => Html::activeDropDownList($searchModel, 'status_id', ArrayHelper::map(Status::find()->all(), 'id', 'requester.status.status_details'), ['class' => 'form-control', 'prompt' => Yii::t('app', 'Select...')])
                            
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'id',
                            //     'data' => ArrayHelper::map(Status::find()->all(), 'id', 'requester.status.status_details'),
                            //     'theme' => Select2::THEME_BOOTSTRAP,
                            //     'options' => ['placeholder' => 'เลือก ...'],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true
                            //     ],
                            // ])
                        ],
                        [
                            'attribute' => 'requester_id',
                            'format' => 'html',
                            // 'value' => 'requester.document_title',
                            'value' => function ($model) {
                                return $model->requester->document_title;
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'requester_id',
                                'data' => ArrayHelper::map(Requester::find()->all(), 'id', 'document_title'),
                                'theme' => Select2::THEME_BOOTSTRAP,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],
                        'document_number',
                        'document_revision',
                        // 'reviewer_name',
                        [
                            'attribute' => 'reviewer_name',
                            'format' => 'html',
                            'value' => 'reviewerName.profile.name',
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'reviewer_name',
                                'data' => ArrayHelper::map(User::find()->all(), 'id', 'profile.name'),
                                'theme' => Select2::THEME_BOOTSTRAP,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],
                        'reviewer_at:date',
                        // 'document_age',
                        // 'document_public_at',
                        // 'stamps_id',
                        [
                            'attribute' => 'stamps_id',
                            'format' => 'html',
                            'value' => function ($model) {
                                return $model->stamps && $model->stamps->stamp_name ? $model->stamps->stamp_name : '';
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
                            'value' => function ($model) {
                                return $model->points ? $model->points->point_name : '';
                            },
                            'filter' => Html::activeDropDownList($searchModel, 'points_id', ArrayHelper::map(Points::find()->all(), 'id', 'point_name'), ['class' => 'form-control', 'prompt' => Yii::t('app', 'Select...')])
                        ],
                        //'reviewer_comment:ntext',
                        //'additional_training:ntext',

                    ],
                ]); ?>


            </div>
        </div>
    </div>
</div>