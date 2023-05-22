<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\AutoNumber */

$this->title = Yii::t('app', 'Update Auto Number: {name}', [
    'name' => $model->group,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Auto Numbers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->group, 'url' => ['view', 'id' => $model->group]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="auto-number-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
