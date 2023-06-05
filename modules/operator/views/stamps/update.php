<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Stamps */

$this->title = Yii::t('app', 'Update') . ' : ' . $model->stamp_code;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Stamps'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->stamp_code, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="stamps-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
