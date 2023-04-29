<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
//
use yii\helpers\ArrayHelper;
//
use kartik\widgets\Select2;
use kartik\widgets\FileInput;
//
use app\modules\operator\models\Types;
use app\modules\operator\models\Categories;
use app\modules\operator\models\Departments;
use app\modules\operator\models\User;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Requester */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="requester-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'types_id')->dropDownlist(ArrayHelper::map(Types::find()->all(), 'id', 'type_details'), ['prompt' => 'กรุณาเลือก ...',]) ?>

    <?= $form->field($model, 'status_id')->hiddenInput(['value' => 1])->label(false); ?>

    <?= $form->field($model, 'request_by')->widget(Select2::class, [
        'language' => 'th',
        'data' => ArrayHelper::map(User::find()->all(), 'id', 'profile.name'),
        'options' => ['placeholder' => 'เลือก ...'],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]);
    ?>

    <?= $form->field($model, 'categories_id')->dropDownlist(ArrayHelper::map(Categories::find()->all(), 'id', 'category_details'), ['prompt' => 'กรุณาเลือก ...',]) ?>

    <?= $form->field($model, 'departments_id')->dropDownlist(ArrayHelper::map(Departments::find()->all(), 'id', ['department_details']), ['prompt' => 'กรุณาเลือก ...',]) ?>

    <?= $form->field($model, 'document_title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'details')->textarea(['rows' => 3]) ?>

    <?= $form->field($model, 'pdf_file')->widget(FileInput::class, [
        'options' => [
            //'accept' => 'application/pdf',
            //'multiple' => true
        ],
        'pluginOptions' => [
            // 'initialPreview'=>empty($model->pdf_file)?[]:[
            //     Html::img($model->pdf_file, ['class' => 'file-preview-image', 'alt' => $model->pdf_file, 'title' => $model->pdf_file])
            //  ],
            'language' => 'th',
            'allowedFileExtensions' => ['pdf'],
            'showPreview' => false,
            'showRemove' => true,
            'showUpload' => false,
        ]
    ]);
    ?>

    <?= $form->field($model, 'docs_file')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>