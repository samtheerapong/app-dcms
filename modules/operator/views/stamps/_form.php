<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\ColorInput;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Stamps */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="stamps-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data'],]); ?>

    <div class="box box-primary box-solid">
        <div class="box-header">
            <div class="box-title"><?= $this->title ?></div>
        </div>
        <div class="box-body">
            <div class="col-md-4">
                <?= $form->field($model, 'stamp_code')->textInput(['maxlength' => true]) ?>
            </div>
            <div class="col-md-4">
                <?= $form->field($model, 'stamp_name')->textInput(['maxlength' => true]) ?>
            </div>
            <div class="col-md-4">
                <?= $form->field($model, 'color')->widget(ColorInput::class, ['options' => ['placeholder' => 'เลือกสี'],]); ?>
            </div>
        </div>

        <div class="box-footer">
            <div class="form-group">
                <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
            </div>
        </div>
    </div>

    <?php ActiveForm::end(); ?>

</div>