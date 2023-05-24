<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Approver */

$this->title = Yii::t('app', 'Approver') . ' : ' . $model->requester->document_number;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Approver'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->requester->document_number, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Approver');
?>
<div class="approver-update">

    <?= $this->render('_form', [
        'model' => $model,
        'modelRequester'=>$modelRequester,
    ]) ?>

</div>
