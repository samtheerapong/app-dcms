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

    <p><?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Back'), ['index'], ['class' => 'btn btn-primary']) ?></p>

    <div class="actions-form">
        <div class="box box-info box-solid">
            <div class="box-header">
                <div class="box-title"><?= $this->title ?></div>
            </div>
            <div class="box-body">

                <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>
                <div class="row">
                    <div class="col-md-4">
                        <?= $form->field($model, 'types_id')->widget(Select2::class, [
                            'language' => 'th',
                            'theme' => Select2::THEME_DEFAULT,
                            'data' => ArrayHelper::map(Types::find()->all(), 'id', 'type_details'),
                            'options' => ['placeholder' => 'เลือก ...'],
                            'pluginOptions' => [
                                'allowClear' => true
                            ],
                        ]);
                        ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'categories_id')->widget(Select2::class, [
                            'language' => 'th',
                            'theme' => Select2::THEME_DEFAULT,
                            'data' => ArrayHelper::map(Categories::find()->all(), 'id', 'category_details'),
                            'options' => ['placeholder' => 'เลือก ...'],
                            'pluginOptions' => [
                                'allowClear' => true
                            ],
                        ]);
                        ?>
                    </div>
                    <div class="col-md-4">
                        <?= $form->field($model, 'departments_id')->widget(Select2::class, [
                            'language' => 'th',
                            'theme' => Select2::THEME_DEFAULT,
                            'data' => ArrayHelper::map(Departments::find()->all(), 'id', 'department_code'),
                            'options' => ['placeholder' => 'เลือก ...'],
                            'pluginOptions' => [
                                'allowClear' => true
                            ],
                        ]);
                        ?>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <?= $form->field($model, 'document_title')->textInput(['maxlength' => true]) ?>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <?= $form->field($model, 'details')->textarea(['rows' => 3]) ?>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <?= $form->field($model, 'covenant')->widget(FileInput::class, [
                            'options' => ['accept' => 'application/pdf'],
                            'pluginOptions' => [
                                'initialPreview' => $model->initialPreview($model->covenant, 'covenant', 'file'),
                                'initialPreviewConfig' => $model->initialPreview($model->covenant, 'covenant', 'config'),
                                'allowedFileExtensions' => ['pdf'],
                                'maxFileSize' => 10240, // Size in KB (10MB = 10 * 1024 KB)
                                'showPreview' => true,
                                'showCaption' => true,
                                'showRemove' => true,
                                'showUpload' => false
                            ],
                        ]); ?>

                    </div>
                    <div class="col-md-6">
                        <?= $form->field($model, 'docs[]')->widget(FileInput::class, [
                            'options' => [
                                //'accept' => 'image/*',
                                'multiple' => true
                            ],
                            'pluginOptions' => [
                                'previewFileType' => 'any',
                                'initialPreview' => $model->initialPreview($model->docs, 'docs', 'file'),
                                'initialPreviewConfig' => $model->initialPreview($model->docs, 'docs', 'config'),
                                'allowedFileExtensions' => ['pdf', 'doc', 'docx', 'xls', 'xlsx', 'jpg', 'odt', 'png'],
                                'maxFileSize' => 10240, // Size in KB (10MB = 10 * 1024 KB)
                                'showPreview' => true,
                                'showCaption' => true,
                                'showRemove' => true,
                                'showUpload' => false,
                                'overwriteInitial' => false,
                                'maxFileCount' => 3,
                            ]
                        ]); ?>

                    </div>
                </div>

                <?php echo $form->field($model, 'status_id')->hiddenInput(['value' => 1])->label(false); ?>
                <?php //echo $form->field($model, 'status_id')->textInput(['value' => 1]); 
                ?>

                <div class="box-footer">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <?= Html::submitButton('<span class="glyphicon glyphicon-floppy-saved"></span> ' . Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
                            </div>
                        </div>
                    </div>
                    <?php ActiveForm::end(); ?>
                </div>

            </div>
        </div>
    </div>
</div>