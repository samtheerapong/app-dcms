<?php

use app\modules\operator\models\Requester;
use kartik\date\DatePicker;
use kartik\grid\GridView;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;

?>


<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title"><?= Yii::t('app', 'Table of all requests') ?></h3>
    </div>
    <div class="panel-body">
        <?php
        echo GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                [
                    'class' => 'kartik\grid\ActionColumn',
                    'options' => ['style' => 'width:10%'],
                    'buttonOptions' => ['class' => 'btn btn-default'],
                    'template' => '<div class="btn-group btn-group-sm text-center" role="group"> {view}  </div>',
                    'buttons' => [
                        'view' => function ($url, $model, $key) {
                            $url = ['/operator/requester/view', 'id' => $model->id]; // Update the URL to include the appropriate ID
                            return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                'title' => Yii::t('app', 'View'),
                                'class' => 'btn btn-info',
                            ]);
                        },
                    ],
                ],
                [
                    'attribute' => 'types_id',
                    'options' => ['style' => 'width:170px'],
                    'contentOptions' => ['class' => 'text-center'],
                    'format' => 'html',
                    'value' => function ($model) {
                        return '<span class="badge" style="background-color:' . $model->types->color . ';"><b>' . $model->types->type_details . '</b></span>';
                    },
                    'filter' => Select2::widget([
                        'model' => $searchModel,
                        'attribute' => 'types_id',
                        'data' => ArrayHelper::map(Requester::find()->all(), 'types_id', 'types.type_details'),
                        'theme' => Select2::THEME_DEFAULT,
                        'options' => ['placeholder' => Yii::t('app', 'Select...')],
                        'language' => 'th',
                        'pluginOptions' => ['allowClear' => true],
                    ])
                ],


                [
                    'attribute' => 'document_number',
                    'options' => ['style' => 'width:150px'],
                    'contentOptions' => ['class' => 'text-center'],
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
                    //     'pluginOptions' => ['allowClear' => true],
                    // ])
                ],

                [
                    'attribute' => 'latest_rev',
                    'options' => ['style' => 'width:100px'],
                    'contentOptions' => ['class' => 'text-center'],
                    'format' => ['decimal', 0],
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
                    //     'pluginOptions' => ['allowClear' => true],
                    // ])
                ],

                [
                    'attribute' => 'document_title',
                    'format' => 'ntext',
                    'options' => ['style' => 'width:auto'],
                    'value' => function ($model) {
                        $text = $model->document_title;
                        if (mb_strlen($text) > 50) {
                            $text = mb_substr($text, 0, 50) . '...';
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
                    //     'pluginOptions' => ['allowClear' => true],
                    // ])
                ],

                [
                    'attribute' => 'document_public_at',
                    'options' => ['style' => 'width:100px'],
                    'contentOptions' => ['class' => 'text-center'],
                    'format' => 'date',
                    'value' => function ($model) {
                        return $model->document_public_at ?? '';
                    },
                    // 'filter' => DatePicker::widget([
                    //     'model' => $searchModel,
                    //     'attribute' => 'document_public_at',
                    //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                    //     'pluginOptions' => ['format' => 'yyyy-mm-dd', 'autoclose' => true]
                    // ]),
                ],

                [
                    'attribute' => 'request_by',
                    'format' => 'html',
                    'options' => ['style' => 'width:160px'],
                    'value' => 'requestBy.profile.name',
                    // 'filter' => Select2::widget([
                    //     'model' => $searchModel,
                    //     'attribute' => 'request_by',
                    //     'data' => ArrayHelper::map(Requester::find()->all(), 'request_by', 'requestBy.profile.name'),
                    //     'theme' => Select2::THEME_DEFAULT,
                    //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                    //     'language' => 'th',
                    //     'pluginOptions' => ['allowClear' => true],
                    // ])
                ],

                [
                    'attribute' => 'categories_id',
                    'format' => 'html',
                    'contentOptions' => ['class' => 'text-center'],
                    'options' => ['style' => 'width:100px'],
                    'value' => function ($model) {
                        return '<span class="badge" style="background-color:' . $model->categories->color . ';"><b>' . $model->categories->category_code . '</b></span>';
                    },
                    // 'filter' => Select2::widget([
                    //     'model' => $searchModel,
                    //     'attribute' => 'categories_id',
                    //     'data' => ArrayHelper::map(Requester::find()->all(), 'categories_id', 'categories.category_code'),
                    //     'theme' => Select2::THEME_DEFAULT,
                    //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                    //     'language' => 'th',
                    //     'pluginOptions' => ['allowClear' => true],
                    // ])
                ],

                [
                    'attribute' => 'departments_id',
                    'label' => 'แผนก',
                    'format' => 'html',
                    'contentOptions' => ['class' => 'text-center'],
                    'options' => ['style' => 'width:100px'],
                    'value' => function ($model) {
                        return '<span class="badge" style="background-color:' . $model->departments->color . ';"><b>' . $model->departments->department_code . '</b></span>';
                    },
                    // 'filter' => Select2::widget([
                    //     'model' => $searchModel,
                    //     'attribute' => 'departments_id',
                    //     'data' => ArrayHelper::map(Requester::find()->all(), 'departments_id', 'departments.department_code'),
                    //     'theme' => Select2::THEME_DEFAULT,
                    //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                    //     'language' => 'th',
                    //     'pluginOptions' => ['allowClear' => true],
                    // ])
                ],

                [
                    'attribute' => 'status_id',
                    'options' => ['style' => 'width:120px'],
                    'contentOptions' => ['class' => 'text-center'],
                    'format' => 'html',
                    'value' => function ($model) {
                        $blinkClass = $model->status->id == 1 ? 'blink' : '';
                        return '<span class="badge ' . $blinkClass . '" style="background-color:' . $model->status->color . ';"><b>' . $model->status->status_details . '</b></span>';
                    },
                    // 'filter' => Select2::widget([
                    //     'model' => $searchModel,
                    //     'attribute' => 'status_id',
                    //     'data' => ArrayHelper::map(Requester::find()->all(), 'status_id', 'status.status_details'),
                    //     'theme' => Select2::THEME_DEFAULT,
                    //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                    //     'language' => 'th',
                    //     'pluginOptions' => ['allowClear' => true],
                    // ])
                ],
            ],
        ]);
        ?>
    </div>
</div>