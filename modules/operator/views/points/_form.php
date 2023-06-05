<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Points */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="points-form">
    <p>
        <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
    </p>
    <?php $form = ActiveForm::begin(); ?>
    <div class="box box-primary box-solid">
        <div class="box-header">
            <div class="box-title"><?= $this->title ?></div>
        </div>
        <div class="box-body">

            <?= $form->field($model, 'point_code')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'point_name')->textInput(['maxlength' => true]) ?>


            <div class="form-group">
                <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
            </div>
        </div>
    </div>

    <?php ActiveForm::end(); ?>

</div>