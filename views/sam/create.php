<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Sam */

$this->title = Yii::t('app', 'Create Sam');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Sams'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sam-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
