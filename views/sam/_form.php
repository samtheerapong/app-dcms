<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\FileInput;

/* @var $this yii\web\View */
/* @var $model app\models\Sam */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sam-form">

<?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'ref')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'covenant')->widget(FileInput::classname(), [
        //'options' => ['accept' => 'image/*'],
        'pluginOptions' => [
            'initialPreview' => $model->initialPreview($model->covenant, 'covenant', 'file'),
            'initialPreviewConfig' => $model->initialPreview($model->covenant, 'covenant', 'config'),
            'allowedFileExtensions' => ['pdf'],
            'showPreview' => true,
            'showCaption' => true,
            'showRemove' => true,
            'showUpload' => false
        ]
    ]); ?>

    <?= $form->field($model, 'docs[]')->widget(FileInput::classname(), [
        'options' => [
            //'accept' => 'image/*',
            'multiple' => true
        ],
        'pluginOptions' => [
            'initialPreview' => $model->initialPreview($model->docs, 'docs', 'file'),
            'initialPreviewConfig' => $model->initialPreview($model->docs, 'docs', 'config'),
            'allowedFileExtensions' => ['pdf', 'doc', 'docx', 'xls', 'xlsx'],
            'showPreview' => true,
            'showCaption' => true,
            'showRemove' => true,
            'showUpload' => false,
            'overwriteInitial' => false
        ]
    ]); ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>