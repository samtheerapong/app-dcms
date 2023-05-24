<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Reviewer */

$this->title = Yii::t('app', 'Reviewer');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Reviewer'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="reviewer-update">

    <?= $this->render('_form', [
        'model' => $model,
        'modelRequester'=>$modelRequester,
    ]) ?>

</div>