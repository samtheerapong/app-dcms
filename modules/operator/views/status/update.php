<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Status */

$this->title = Yii::t('app', 'Update') . ' : ' . $model->status_name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Status'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->status_name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="status-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
