<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Points */

$this->title = Yii::t('app', 'Update') . ' : ' . $model->point_name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Points'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->point_name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="points-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
