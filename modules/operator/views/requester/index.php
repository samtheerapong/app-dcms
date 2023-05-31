<?php

use app\modules\operator\models\Categories;
use app\modules\operator\models\Departments;
use app\modules\operator\models\Profile;
use yii\helpers\Html;
use kartik\grid\GridView;

//
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use kartik\date\DatePicker;
//
use app\modules\operator\models\Requester;
use app\modules\operator\models\Status;
use app\modules\operator\models\Types;
use Codeception\Test\Interfaces\Dependent;

$this->title = Yii::t('app', 'Requester');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="requester-index">

    <div style="display: flex; justify-content: space-between;">
        <p style="text-align: left;">
            <?= Html::a('<i class="fas fa-plus"></i> ' . Yii::t('app', Yii::t('app', 'Create')), ['create'], ['class' => 'btn btn-success btn-lg']) ?>
        </p>
        <p style="text-align: right;">
            <?= Html::a('<i class="fas fa-refresh"></i> ' . Yii::t('app', ''), [''], ['class' => 'btn btn-danger', 'id' => 'refresh-btn']) ?>
            <?= Html::a(Yii::t('app', 'Reviewer Page') . ' <i class="fas fa-arrow-circle-right"></i> ', ['reviewer/index'], ['class' => 'btn btn-warning']) ?>
        </p>
    </div>

    <div class="actions-form">
        <div class="box box-info box-solid">
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
                            'options' => ['style' => 'width:150px'],
                            'buttonOptions' => ['class' => 'btn btn-default'],
                            'template' => '<div class="btn-group btn-group-sm text-center" role="group"> {view} {update} {delete}</div>',
                            'buttons' => [
                                'view' => function ($url, $model, $key) {
                                    return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                        'title' => Yii::t('app', 'View'),
                                        'class' => 'btn btn-info',
                                    ]);
                                },
                                'update' => function ($url, $model, $key) {

                                    return Html::a('<span class="glyphicon glyphicon-edit"></span>', $url, [
                                        'title' => Yii::t('app', 'Approver'),
                                        'class' => 'btn btn-warning',
                                    ]);
                                },
                                'delete' => function ($url, $model, $key) {

                                    return Html::a('<span class="glyphicon glyphicon-trash"></span>', $url, [
                                        'title' => Yii::t('app', 'Delete'),
                                        'class' => 'btn btn-danger',
                                        'data' => [
                                            'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                                            'method' => 'post',
                                        ],
                                    ]);
                                },

                            ],
                        ],

                        [
                            'attribute' => 'status_id',
                            'options' => ['style' => 'width:120px'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'format' => 'html',
                            'value' => function ($model) {
                                $blinkClass = $model->status->id == 1 ? 'blink' : '';
                                return '<span class="badge ' . $blinkClass . '" style="background-color:' . $model->status->color . ';"><b>' . $model->status->status_details . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'status_id',
                                'data' => ArrayHelper::map(Status::find()->all(), 'id', 'status_details'),
                                // 'data' => ArrayHelper::map(Requester::find()->all(), 'status_id', 'status.status_details'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],


                        [
                            'attribute' => 'document_number',
                            'options' => ['style' => 'width:150px'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'format' => 'html',
                            'value' => function ($model) {
                                return  $model->document_number;
                            },
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'document_number',
                            //     'data' => ArrayHelper::map(Requester::find()->all(), 'document_number', 'document_number'),
                            //     'theme' => Select2::THEME_DEFAULT,
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true
                            //     ],
                            // ])
                        ],

                        [
                            'attribute' => 'latest_rev',
                            'options' => ['style' => 'width:100px'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'format' => ['decimal', 0], // รูปแบบเลขทศนิยม
                            'value' => function ($model) {
                                return $model->latest_rev ?? 0;
                            },
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'latest_rev',
                            //     'data' => ArrayHelper::map(Requester::find()->all(), 'latest_rev', 'latest_rev'),
                            //     'theme' => Select2::THEME_DEFAULT,
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true
                            //     ],
                            // ])
                        ],

                        [
                            'attribute' => 'document_age',
                            'options' => ['style' => 'width:100px'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'format' => 'html',
                            'value' => function ($model) {
                                return  $model->document_age;
                            },
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'document_age',
                            //     'data' => ArrayHelper::map(Requester::find()->all(), 'document_age', 'document_age'),
                            //     'theme' => Select2::THEME_DEFAULT,
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true
                            //     ],
                            // ])
                        ],

                        [
                            'attribute' => 'document_title',
                            'format' => 'ntext',
                            'options' => ['style' => 'width:auto'],
                            'value' => function ($model) {
                                // ******* ตัดตัวอักษรที่ xx แล้วใส่ ... ต่อท้าย ******* 
                                $text = $model->document_title;
                                if (mb_strlen($text) > 80) {
                                    $text = mb_substr($text, 0, 80) . '...';
                                }
                                return $text;
                            },
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'document_title',
                            //     'data' =>  array_map(function ($value) {
                            //         if (mb_strlen($value) > 50) {
                            //             $value = mb_substr($value, 0, 50) . '...';
                            //         }
                            //         return $value;
                            //     }, ArrayHelper::map(Requester::find()->all(), 'document_title', 'document_title')),
                            //     'theme' => Select2::THEME_DEFAULT,
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true
                            //     ],
                            // ])
                        ],

                        [
                            'attribute' => 'document_public_at',
                            'options' => ['style' => 'width:100px'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'format' => 'date',
                            'value' => function ($model) {
                                return $model->document_public_at ?? '';
                            },
                            'filter' => DatePicker::widget([
                                'model' => $searchModel,
                                'attribute' => 'document_public_at',
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'pluginOptions' => [
                                    'format' => 'yyyy-mm-dd',
                                    'autoclose' => true,
                                ]
                            ]),
                        ],

                        [
                            'attribute' => 'request_by',
                            'format' => 'html',
                            'options' => ['style' => 'width:160px'],
                            'value' => 'requestBy.profile.name',
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'request_by',
                                'data' => ArrayHelper::map(Profile::find()->all(), 'user.id', 'name'),
                                // 'data' => ArrayHelper::map(Requester::find()->all(), 'request_by', 'requestBy.profile.name'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'attribute' => 'categories_id',
                            'format' => 'html',
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'options' => ['style' => 'width:100px'],
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->categories->color . ';"><b>' . $model->categories->category_code . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'categories_id',
                                // 'data' => ArrayHelper::map(Requester::find()->all(), 'categories_id', 'categories.category_code'),
                                'data' => ArrayHelper::map(Categories::find()->all(), 'id', 'category_code'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'attribute' => 'departments_id',
                            'label' => 'แผนก',
                            'format' => 'html',
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'options' => ['style' => 'width:100px'],
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->departments->color . ';"><b>' . $model->departments->department_code . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'departments_id',
                                // 'data' => ArrayHelper::map(Requester::find()->all(), 'departments_id', 'departments.department_code'),
                                'data' => ArrayHelper::map(Departments::find()->all(), 'id', 'department_code'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'attribute' => 'types_id',
                            'options' => ['style' => 'width:170px'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->types->color . ';"><b>' . $model->types->type_details . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'types_id',
                                'data' => ArrayHelper::map(Types::find()->all(), 'id', 'type_details'),
                                // 'data' => ArrayHelper::map(Requester::find()->all(), 'types_id', 'types.type_details'),
                                'theme' => Select2::THEME_DEFAULT,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],
                    ],

                ]); ?>
            </div>
        </div>
    </div>

</div>