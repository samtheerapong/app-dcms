<?php

use kartik\widgets\DatePicker;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\AutoNumber */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="auto-number-form">

    <p>
        <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Back'), ['index'], ['class' => 'btn btn-primary']) ?>
    </p>
    <div class="actions-form">
        <div class="box box-success box-solid">
            <div class="box-header">
                <div class="box-title"><?= Yii::t('app', 'Auto Numbers') ?></div>
            </div>
            <div class="box-body">

                <?php $form = ActiveForm::begin(); ?>

                <?= $form->field($model, 'group')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'number')->textInput() ?>

                <?= $form->field($model, 'optimistic_lock')->textInput() ?>


                <div class="form-group">
                    <?= Html::submitButton('<i class="fas fa-save"></i> ' . Yii::t('app', 'Save'), ['class' => 'btn btn-danger btn-lg btn-block']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>