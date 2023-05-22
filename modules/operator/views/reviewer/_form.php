<?php

use app\modules\operator\models\Points;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
//
use yii\helpers\ArrayHelper;
//
use kartik\widgets\Select2;
use kartik\date\DatePicker;
//
use app\modules\operator\models\Requester;
use app\modules\operator\models\User;
use app\modules\operator\models\Stamps;
use app\modules\operator\models\Status;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Reviewer */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="reviewer-form">
    <div class="actions-form">
        <?php $form = ActiveForm::begin(); ?>
        <div class="box box-info box-solid">
            <div class="box-header">
                <div class="box-title"><?= Yii::t('app', 'Requester') ?></div>
            </div>
            <div class="box-body">



                <div class="row">
                    <div class="col-md-2">
                        <?= $form->field($modelRequester, 'document_number')->textInput([
                            'disabled' =>  true
                        ])
                        ?>
                    </div>
                    <div class="col-md-2">
                        <?= $form->field($modelRequester, 'latest_rev')->textInput([
                            'disabled' =>  true
                        ])
                        ?>

                    </div>
                    <div class="col-md-4">
                        <?= $form->field($model, 'requester_id')->textInput([
                            'value' => $modelRequester->document_title,
                            'disabled' =>  true
                        ])
                        ?>
                    </div>
                    <div class="col-md-2">
                        <?= $form->field($modelRequester, 'request_by')->textInput([
                            'value' => $modelRequester->requestBy->profile->name,
                            'disabled' =>  true
                        ])
                        ?>
                    </div>
                    <div class="col-md-2">
                        <?= $form->field($modelRequester, 'types_id')->textInput([
                            'value' => $modelRequester->types->type_details,
                            'disabled' =>  true
                        ])
                        ?>
                    </div>
                </div>
            </div>
        </div>


        <div class="box box-warning box-solid">
            <div class="box-header">
                <div class="box-title"><?= Yii::t('app', 'Reviewer')  ?> </div>
            </div>
            <div class="box-body">

                <div class="row">
                    <!-- <div class="col-md-2">
                        <?= $form->field($model, 'reviewer_name')->widget(Select2::class, [
                            'language' => 'th',
                            'data' => ArrayHelper::map(User::find()->all(), 'id', 'profile.name'),
                            'theme' => Select2::THEME_DEFAULT,
                            'options' => [
                                'placeholder' => Yii::t('app', 'Select...'),
                                // 'required' => true,
                            ],
                            'pluginOptions' => [
                                'allowClear' => true,
                            ],
                        ]);
                        ?>
                    </div> -->
                    <!-- <div class="col-md-2">
                        <?= $form->field($model, 'reviewer_at')->widget(
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
                    </div> -->
                </div>


                <div class="row">

                    <div class="col-md-4">
                        <?= $form->field($model, 'document_revision')->textInput(['required' =>  true])->label(Yii::t('app', 'document_revision') . '<span class="text-muted">' . ' (' . Yii::t('app', 'document_revision_caption') . ')</span>') ?>
                    </div>
                    <div class="col-md-4">
                        <?= $form->field($modelRequester, 'status_id')->dropDownList([
                            '3' => 'รออนุมัติ',
                            '2' => 'รอทบทวน',
                            '1' => 'ใหม่'
                        ], ['required' =>  true])
                        ?>

                    </div>
                    <div class="col-md-4">
                        <?= $form->field($model, 'points_id')->widget(Select2::class, [
                            'language' => 'th',
                            'data' => ArrayHelper::map(Points::find()->all(), 'id', 'point_name'),
                            'theme' => Select2::THEME_DEFAULT,
                            'options' => [
                                'placeholder' => Yii::t('app', 'Select...'),
                                // 'required' => true,
                            ],
                            'pluginOptions' => [
                                'allowClear' => true,
                            ],
                        ]);
                        ?>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <?= $form->field($model, 'document_ref')->textInput(['maxlength' => true]) ?>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-6">
                        <?= $form->field($model, 'additional_training')->textarea(['rows' => 3]) ?>
                    </div>

                    <div class="col-md-6">
                        <?= $form->field($model, 'reviewer_comment')->textarea(['rows' => 3]) ?>
                    </div>
                </div>


                <?= $form->field($model, 'document_tags')->hiddenInput()->label(false); ?>

                <div class="box-footer">
                    <div class="row">
                        <div class="col-md-126">
                            <div class="form-group">
                                <?= Html::submitButton(Yii::t('app', Yii::t('app', 'Save')), ['class' => 'btn btn-success']) ?>
                            </div>
                        </div>
                    </div>
                </div>






            </div>
        </div>
    </div>
    <?php ActiveForm::end(); ?>
</div>