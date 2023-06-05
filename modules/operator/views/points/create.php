<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Points */

$this->title = Yii::t('app', 'Create Points');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Points'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="points-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
