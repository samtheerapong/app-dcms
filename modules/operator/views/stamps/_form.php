<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\ColorInput;
//
use kartik\widgets\FileInput;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Stamps */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="stamps-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data'],]); ?>

    <?= $form->field($model, 'stamp_code')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'stamp_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'color')->widget(ColorInput::class, ['options' => ['placeholder' => 'เลือกสี'],]); ?>

    

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>