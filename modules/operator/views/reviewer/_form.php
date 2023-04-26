<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Reviewer */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="reviewer-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'requester_id')->textInput() ?>

    <?= $form->field($model, 'reviewer_name')->textInput() ?>

    <?= $form->field($model, 'reviewer_at')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'document_number')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'document_revision')->textInput() ?>

    <?= $form->field($model, 'document_age')->textInput() ?>

    <?= $form->field($model, 'document_public_at')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'stamps_id')->textInput() ?>

    <?= $form->field($model, 'document_ref')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'document_tags')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'points_id')->textInput() ?>

    <?= $form->field($model, 'reviewer_comment')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'additional_training')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
