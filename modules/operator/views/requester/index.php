<?php

use yii\helpers\Html;
use yii\grid\GridView;
//
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
//
use app\modules\operator\models\Types;
use app\modules\operator\models\Status;
use app\modules\operator\models\Categories;
use app\modules\operator\models\Departments;
use app\modules\operator\models\User;
use app\modules\operator\models\profile;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\operator\models\RequesterSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Requesters');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="requester-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Create Requester'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id',
            // 'types_id',
            [
                'attribute' => 'types_id',
                'format' => 'html',
                'value' => function ($model) {
                    return '<span class="badge" style="background-color:' . $model->types->color . ';"><b>' . $model->types->type_name . '</b></span>';
                },
                'filter' => Html::activeDropDownList($searchModel, 'types_id', ArrayHelper::map(User::find()->all(), 'id', 'name'), ['class' => 'form-control', 'prompt' => 'ทั้งหมด...'])

            ],
            // 'status_id',

            'created_at:date',
            // 'updated_at:date',
            // 'created_by',
            //'updated_by',
            // 'request_by',
            
            [
                'attribute' => 'request_by',
                'format' => 'html',
                'value' => function ($model) {
                    return $model->requestBy->profile->name;
                },
                'filter' => Html::activeDropDownList($searchModel, 'request_by', ArrayHelper::map(User::find()->all(), 'id', 'username'), [
                    'class' => 'form-control', 'prompt' => 'ทั้งหมด...'
                ])
            ],

            [
                'attribute' => 'categories_id',
                'format' => 'html',
                'value' => function ($model) {
                    return $model->categories->category_code;
                },
                'filter' => Html::activeDropDownList($searchModel, 'categories_id', ArrayHelper::map(Categories::find()->all(), 'id', 'category_code'), ['class' => 'form-control', 'prompt' => 'ทั้งหมด...'])
            ],
            [
                'attribute' => 'departments_id',
                'format' => 'html',
                'value' => function ($model) {
                    return $model->departments->department_code;
                },
                'filter' => Html::activeDropDownList($searchModel, 'departments_id', ArrayHelper::map(Departments::find()->all(), 'id', 'department_code'), ['class' => 'form-control', 'prompt' => 'ทั้งหมด...'])
            ],
            'document_title:ntext',
            //'details:ntext',
            //'pdf_file:ntext',
            //'docs_file:ntext',

            [
                'attribute' => 'status_id',
                'format' => 'html',
                'value' => function ($model) {
                    return '<span class="badge" style="background-color:' . $model->status->color . ';"><b>' . $model->status->status_name . '</b></span>';
                },
                'filter' => Html::activeDropDownList($searchModel, 'status_id', ArrayHelper::map(Status::find()->all(), 'id', 'status_name'), ['class' => 'form-control', 'prompt' => 'ทั้งหมด...'])
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>