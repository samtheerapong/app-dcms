<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Approver */

$this->title = Yii::t('app', 'Create Approver');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Approvers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="approver-create">


    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
