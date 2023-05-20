<?php

use yii\helpers\Url;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\FileInput;

/* @var $this yii\web\View */
/* @var $model app\modules\ex\models\Documents */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="documents-form">

<?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'ref')->textInput(['maxlength' => true]) ?>

    <div class="form-group field-upload_files">
      <label class="control-label" for="upload_files[]"> ภาพถ่าย </label>
    <div>
    <?= FileInput::widget([
        'name' => 'upload_ajax[]',
        'options' => ['multiple' => true, 'accept' => '*'], //'accept' => 'image/*' หากต้องเฉพาะ image
        'pluginOptions' => [
            'overwriteInitial' => false,
            'initialPreviewShowDelete' => true,
            'initialPreview' => $initialPreview,
            'initialPreviewConfig' => $initialPreviewConfig,
            'uploadUrl' => Url::to(['/documents/upload-ajax']),
            'uploadExtraData' => [
                'ref' => $model->ref,
            ],
            'maxFileCount' => 100
        ]
    ]);
    ?>
     </div>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>