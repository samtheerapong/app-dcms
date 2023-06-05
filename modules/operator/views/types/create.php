<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Types */

$this->title = Yii::t('app', 'Create Types');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Types'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="types-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
