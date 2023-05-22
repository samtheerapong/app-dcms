<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\AutoNumber */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="auto-number-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'group')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'number')->textInput() ?>

    <?= $form->field($model, 'optimistic_lock')->textInput() ?>

    <?= $form->field($model, 'update_time')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
