<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\operator\models\UserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Users');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">

    <div class="box box-info box-solid">
        <div class="box-header">
            <div class="box-title"><?= Yii::t('app', 'Requester') ?></div>
        </div>
        <div class="box-body">
            <div class="row">
                <div class="col-md-6">
                    <?= GridView::widget([
                        'dataProvider' => $dataProvider,
                        'filterModel' => $searchModel,
                        'columns' => [
                            // 'username',
                            [
                                'attribute' => 'username',
                                'format' => 'html',
                                'options' => ['style' => 'width:50%'],
                                'value' => function ($model) {
                                    return $model->profile->name ?? '';
                                },
                            ],
                            // 'departments',
                            [
                                'attribute' => 'department',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return $model->departments->department_code ?? '';
                                },
                            ],
                            // 'request',
                            [
                                'attribute' => 'request',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return $model->request == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                                },
                            ],
                            // 'review',
                            [
                                'attribute' => 'review',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    $value = $model->review == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                                    return $value;
                                },
                            ],
                            // 'approve',
                            [
                                'attribute' => 'approve',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return $model->approve == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                                },
                            ],
                            // 'status',
                            [
                                'attribute' => 'status',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return $model->status == 10 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                                },
                            ],

                            [
                                'class' => 'kartik\grid\ActionColumn',
                                'options' => ['style' => 'width:180px'],
                                'buttonOptions' => ['class' => 'btn btn-default'],
                                'template' => '<div class="btn-group btn-group-sm text-center" role="group"> {view} {update}</div>',
                                'buttons' => [
                                    'view' => function ($url, $model, $key) {
                                        return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                            'title' => Yii::t('app', 'View'),
                                            'class' => 'btn btn-info',
                                        ]);
                                    },
                                    'update' => function ($url, $model, $key) {
                                        if (Yii::$app->user->identity->id === 1) {
                                            return Html::a('<span class="glyphicon glyphicon-edit"></span>', $url, [
                                                'title' => Yii::t('app', 'Update'),
                                                'class' => 'btn btn-warning'
                                            ]); {
                                                return '';
                                            }
                                        }
                                    },
                                ],
                            ],
                        ],
                    ]); ?>

                </div>
            </div>
        </div>
    </div>
</div>