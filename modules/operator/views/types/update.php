<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Types */

$this->title = Yii::t('app', 'Update') . ' : ' . $model->type_name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Types'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->type_name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="types-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
