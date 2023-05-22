<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Requester */

$this->title = Yii::t('app', 'Reviewer') . ' : ' . $model->document_number;

$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Requester'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Reviewer');
?>
<div class="requester-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>