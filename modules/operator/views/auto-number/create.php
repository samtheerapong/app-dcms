<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\AutoNumber */

$this->title = Yii::t('app', 'Create');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Auto Numbers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="auto-number-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
