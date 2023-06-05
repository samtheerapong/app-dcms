<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\widgets\Select2;
use kartik\widgets\FileInput;
use app\modules\operator\models\Types;
use app\modules\operator\models\Categories;
use app\modules\operator\models\Departments;
use kartik\widgets\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Requester */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="requester-form">
    <p>
        <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
    </p>

    <div class="actions-form">
        <div class="box box-success box-solid">
            <div class="box-header">
                <div class="box-title"><?= $this->title ?></div>
            </div>
            <div class="box-body">

                <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>
                <div class="row">
                    <div class="col-md-2">
                        <?= $form->field($model, 'types_id')->widget(Select2::class, [
                            'language' => 'th',
                            'theme' => Select2::THEME_DEFAULT,
                            'data' => ArrayHelper::map(Types::find()->all(), 'id', 'type_details'),
                            'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            'pluginOptions' => [
                                'allowClear' => true
                            ],
                        ]);
                        ?>
                    </div>

                    <div class="col-md-4">
                        <?= $form->field($model, 'type_details')->textInput(['maxlength' => true]) ?>
                    </div>

                    <div class="col-md-3">
                        <?= $form->field($model, 'categories_id')->widget(Select2::class, [
                            'language' => 'th',
                            'theme' => Select2::THEME_DEFAULT,
                            'data' => ArrayHelper::map(Categories::find()->all(), 'id', 'category_code'),
                            'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            'pluginOptions' => [
                                'allowClear' => true
                            ],
                        ]);
                        ?>
                    </div>
                    <div class="col-md-3">
                        <?= $form->field($model, 'departments_id')->widget(Select2::class, [
                            'language' => 'th',
                            'theme' => Select2::THEME_DEFAULT,
                            'data' => ArrayHelper::map(Departments::find()->all(), 'id', 'department_code'),
                            'options' => ['placeholder' => Yii::t('app', 'Select...')],
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
                    <div class="col-md-4">
                        <?= $form->field($model, 'latest_rev')->textInput(['maxlength' => true]) ?>
                    </div>
                    <div class="col-md-4">
                        <?= $form->field($model, 'document_age')->textInput([
                            'maxlength' => true
                        ])->label(Yii::t('app', 'document_age') . '<span class="text-muted">' . ' (' . Yii::t('app', 'document_age_caption') . ')</span>') ?>
                    </div>
                    <div class="col-md-4">
                        <?= $form->field($model, 'document_public_at')->widget(
                            DatePicker::class,
                            [
                                'language' => 'th',
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'pluginOptions' => [
                                    'format' => 'yyyy-mm-dd',
                                    'todayHighlight' => true,
                                    'autoclose' => true,
                                ]
                            ]
                        ); ?>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <?= $form->field($model, 'covenant')->widget(FileInput::class, [
                            'options' => ['accept' => 'application/pdf'],
                            'pluginOptions' => [
                                'previewFileType' => 'any',
                                'initialPreview' => $model->initialPreview($model->covenant, 'covenant', 'file'),
                                'initialPreviewConfig' => $model->initialPreview($model->covenant, 'covenant', 'config'),
                                'allowedFileExtensions' => ['pdf'],
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
                                'multiple' => true
                            ],
                            'pluginOptions' => [
                                'previewFileType' => 'any',
                                'initialPreview' => $model->initialPreview($model->docs, 'docs', 'file'),
                                'initialPreviewConfig' => $model->initialPreview($model->docs, 'docs', 'config'),
                                'allowedFileExtensions' => ['pdf', 'doc', 'docx', 'xls', 'xlsx', 'jpg', 'odt', 'png'],
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

                <div class="box-footer">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <?= Html::submitButton('<i class="fas fa-save"></i> ' . Yii::t('app', 'Save'), ['class' => 'btn btn-success btn-lg btn-block']) ?>
                            </div>
                        </div>
                    </div>
                    <?php ActiveForm::end(); ?>
                </div>

            </div>
        </div>
    </div>
</div>