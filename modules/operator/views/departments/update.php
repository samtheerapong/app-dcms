<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Departments */

$this->title = Yii::t('app', 'Update'). ' : '.$model->department_code;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Departments'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="departments-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
