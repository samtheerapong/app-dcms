<?php

use app\modules\operator\models\Profile;
use yii\helpers\Html;
use yii\widgets\DetailView;

use app\modules\operator\models\User;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Requester */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Requesters'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="requester-view">

    <h1><?= Html::encode($this->title) ?></h1>

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

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            [
                'attribute' => 'types_id',
                'value' => $model->types->type_name,
            ],
            [
                'attribute' => 'status_id',
                'value' => $model->status->status_name,
            ],
            [
                'attribute' => 'request_by',
                'value' => $model->requestBy->profile->name,
            ],
            [
                'attribute' => 'categories_id',
                'value' => function ($model) {
                    return $model->categories->category_code . ' - ' . $model->categories->category_details;
                },

            ],
            [
                'attribute' => 'departments_id',
                'value' => function ($model) {
                    return $model->departments->department_code . ' - ' . $model->departments->department_details;
                },

            ],
            'document_title',
            'details:ntext',
            // 'pdf_file:ntext',
         
            'docs_file:ntext',
            'created_at:date',
            'updated_at:date',
            [
                'attribute' => 'created_by',
                'value' => $model->createdBy->profile->name,

            ],
            [
                'attribute' => 'updated_by',
                'value' => $model->updatedBy->profile->name,
            ],
        ],
    ]) ?>

</div>