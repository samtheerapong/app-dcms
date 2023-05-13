<?php

use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;
//
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use kartik\date\DatePicker;
//
use app\modules\operator\models\Types;
use app\modules\operator\models\Status;
use app\modules\operator\models\Categories;
use app\modules\operator\models\Departments;
use app\modules\operator\models\User;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\operator\models\RequesterSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Requesters');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="requester-index">

    <!-- <h1><?= Html::encode($this->title) ?></h1> -->


    <p>
        <?= Html::a('<span class="glyphicon glyphicon-plus"></span> ' . Yii::t('app', Yii::t('app', 'Create New')), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>
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
                        // 'types.type_name',
                           'document_number',
                       
                        [
                            'attribute' => 'types_id',
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->types->color . ';"><b>' . $model->types->type_details . '</b></span>';
                            },
                            'filter' => Html::activeDropDownList($searchModel, 'types_id', ArrayHelper::map(Types::find()->all(), 'id', 'type_details'), ['class' => 'form-control', 'prompt' => 'เลือก...'])
                        ],

                        // 'created_at:date',
                        [
                            'attribute' => 'created_at',
                            'format' => 'date',
                            'value' => 'created_at',
                            'filter' => DatePicker::widget([
                                'model' => $searchModel,
                                'attribute' => 'created_at',
                                'pluginOptions' => [
                                    'format' => 'dd-mm-yyyy',
                                    'autoclose' => true,
                                ]
                            ])
                        ],

                        [
                            'attribute' => 'request_by',
                            'format' => 'html',
                            'value' => 'requestBy.profile.name',
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'request_by',
                                'data' => ArrayHelper::map(User::find()->all(), 'id', 'profile.name'),
                                'theme' => Select2::THEME_BOOTSTRAP,
                                'options' => ['placeholder' => 'เลือก ...'],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'attribute' => 'categories_id',
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->categories->color . ';"><b>' . $model->categories->category_code . '</b></span>';
                            },
                            'filter' => Html::activeDropDownList($searchModel, 'categories_id', ArrayHelper::map(Categories::find()->all(), 'id', 'category_code'), ['class' => 'form-control', 'prompt' => 'เลือก...'])
                        ],
                        [
                            'attribute' => 'departments_id',
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->departments->color . ';"><b>' . $model->departments->department_code . '</b></span>';
                            },
                            'filter' => Html::activeDropDownList($searchModel, 'departments_id', ArrayHelper::map(Departments::find()->all(), 'id', 'department_code'), ['class' => 'form-control', 'prompt' => 'เลือก...'])
                        ],
                        'document_title:ntext',

                        [
                            'attribute' => 'status_id',
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->status->color . ';"><b>' . $model->status->status_details . '</b></span>';
                            },
                            'filter' => Html::activeDropDownList($searchModel, 'status_id', ArrayHelper::map(Status::find()->all(), 'id', 'status_details'), ['class' => 'form-control', 'prompt' => 'ทั้งหมด...'])
                        ],

                        // ['class' => 'yii\grid\ActionColumn'],
                        [
                            'class' => 'kartik\grid\ActionColumn',
                            'options' => ['style' => 'width:120px;'],
                            'buttonOptions' => ['class' => 'btn btn-default'],
                            'template' => '<div class="btn-group btn-group-sm text-center" role="group"> {view} {update}</div>'
                        ],

                    ],
                ]); ?>
            </div>
        </div>
    </div>

</div>