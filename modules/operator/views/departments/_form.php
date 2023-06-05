<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\ColorInput;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Departments */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="departments-form">
    <p>
        <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
    </p>
    <?php $form = ActiveForm::begin(); ?>
    <div class="box box-info box-solid">
        <div class="box-header">
            <div class="box-title"><?= $this->title ?></div>
        </div>
        <div class="box-body">

            <div class="col-md-6">
                <?= $form->field($model, 'department_code')->textInput(['maxlength' => true]) ?>
            </div>
            <div class="col-md-6">
                <?= $form->field($model, 'color')->widget(ColorInput::class, ['options' => ['placeholder' => Yii::t('app', 'Select...')]]); ?>
            </div>
            <div class="col-md-12">
                <?= $form->field($model, 'department_details')->textarea(['rows' => 3]) ?>
            </div>
        </div>
        <div class="box-footer">
            <div class="form-group">
                <?= Html::submitButton(Yii::t('app', Yii::t('app', 'Save')), ['class' => 'btn btn-success']) ?>
            </div>
        </div>

    </div>

    <?php ActiveForm::end(); ?>
</div>