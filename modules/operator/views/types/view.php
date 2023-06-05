<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Types */

$this->title = $model->type_name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Types'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="types-view">
    <p>
        <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('<span class="glyphicon glyphicon-edit"></span> ' . Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-warning']) ?>
        <?= Html::a('<span class="glyphicon glyphicon-trash"></span> ' . Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <div class="box box-primary box-solid">
        <div class="box-header">
            <div class="box-title"><?= $this->title ?></div>
        </div>
        <div class="box-body">
            <?= DetailView::widget([
                'model' => $model,
                'template' => '<tr><th style="width: 250px;">{label}</th><td> {value}</td></tr>',
                'attributes' => [
                    // 'id',
                    'type_name',
                    'type_details:ntext',
                    'color',
                ],
            ]) ?>

        </div>
    </div>
</div>