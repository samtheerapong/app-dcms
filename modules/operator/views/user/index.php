<?php

use app\modules\operator\models\User;
use app\modules\operator\models\Departments;
use app\modules\operator\models\Profile;
use app\modules\operator\models\Role;
use yii\helpers\Html;
use kartik\grid\GridView;
use kartik\widgets\Select2;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\operator\models\UserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Permission Manage');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">

    <div class="box box-info box-solid">
        <div class="box-header">
            <div class="box-title"><?= Yii::t('app', 'Permission Manage') ?></div>
        </div>
        <div class="box-body">
            <div class="row">
                <div class="col-md-12">
                    <?= GridView::widget([
                        'dataProvider' => $dataProvider,
                        'filterModel' => $searchModel,
                        'columns' => [
                            // 'username',
                            [
                                'attribute' => 'username',
                                'label' => Yii::t('app','Name'),
                                'format' => 'html',
                                'options' => ['style' => 'width:50%'],
                                'value' => function ($model) {
                                    return $model->profile->name ?? '';
                                },
                                'filter' => Select2::widget([
                                    'model' => $searchModel,
                                    'attribute' => 'username',
                                    'data' => ArrayHelper::map(User::find()->all(), 'username', 'profile.name'),
                                    'theme' => Select2::THEME_DEFAULT,
                                    'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                    'language' => 'th',
                                    'pluginOptions' => [
                                        'allowClear' => true
                                    ],
                                ])
                            ],

                            [
                                'attribute' => 'role',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return '<span class="badge" style="background-color:' . $model->roles->role_color . ';"><b>' . $model->roles->role_code . '</b></span>';
                                },
                                'filter' => Select2::widget([
                                    'model' => $searchModel,
                                    'attribute' => 'role',
                                    'data' => ArrayHelper::map(Role::find()->all(), 'id', 'role_code'),
                                    'theme' => Select2::THEME_DEFAULT,
                                    'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                    'language' => 'th',
                                    'pluginOptions' => [
                                        'allowClear' => true
                                    ],
                                ])
                            ],
                            
                            // 'departments',
                            [
                                'attribute' => 'department',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return '<span class="badge" style="background-color:' . $model->departments->color . ';"><b>' . $model->departments->department_code . '</b></span>';
                                },
                                'filter' => Select2::widget([
                                    'model' => $searchModel,
                                    'attribute' => 'department',
                                    'data' => ArrayHelper::map(User::find()->all(), 'department', 'departments.department_code'),
                                    'theme' => Select2::THEME_DEFAULT,
                                    'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                    'language' => 'th',
                                    'pluginOptions' => [
                                        'allowClear' => true
                                    ],
                                ])
                            ],

                          
                            [
                                'attribute' => 'updated',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return $model->updated == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                                },
                                'filter' => [
                                    1 => 'Yes',
                                    0 => 'No',
                                ],
                                'filterInputOptions' => ['class' => 'form-control', 'prompt' => '#'],
                            ],
                            [
                                'attribute' => 'deleted',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return $model->deleted == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                                },
                                'filter' => [
                                    1 => 'Yes',
                                    0 => 'No',
                                ],
                                'filterInputOptions' => ['class' => 'form-control', 'prompt' => '#'],
                            ],
                            // 'request',
                            [
                                'attribute' => 'request',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return $model->request == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                                },
                                'filter' => [
                                    1 => 'Yes',
                                    0 => 'No',
                                ],
                                'filterInputOptions' => ['class' => 'form-control', 'prompt' => '#'],
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
                                'filter' => [
                                    1 => 'Yes',
                                    0 => 'No',
                                ],
                                'filterInputOptions' => ['class' => 'form-control', 'prompt' => '#'],
                            ],
                            // 'approve',
                            [
                                'attribute' => 'approve',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return $model->approve == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                                },
                                'filter' => [
                                    1 => 'Yes',
                                    0 => 'No',
                                ],
                                'filterInputOptions' => ['class' => 'form-control', 'prompt' => '#'],
                            ],
                            // 'status',
                            [
                                'attribute' => 'status',
                                'format' => 'html',
                                'options' => ['style' => 'width:5%'],
                                'value' => function ($model) {
                                    return $model->status == 10 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                                },
                                'filter' => [
                                    10 => 'Yes',
                                    9 => 'No',
                                ],
                                'filterInputOptions' => ['class' => 'form-control', 'prompt' => '#'],
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