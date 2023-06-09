<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use dosamigos\gallery\Gallery;

/* @var $this yii\web\View */
/* @var $model app\modules\ex\models\Documents */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Documents'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="documents-view">

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
            'id',
            'ref',
            'event_name',
        ],
    ]) ?>

<div class="panel panel-default">
  <div class="panel-body">
     <?= Gallery::widget(['items' => $model->getThumbnails($model->ref,$model->event_name)]);?>
  </div>
</div>

</div>
