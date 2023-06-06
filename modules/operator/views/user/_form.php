<?php

use app\modules\operator\models\Departments;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\User */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-form">

    <div class="box box-info box-solid">
        <div class="box-header">
            <div class="box-title"><?= Yii::t('app', 'Requester') ?></div>
        </div>
        <div class="box-body">
            <?php $form = ActiveForm::begin(); ?>

            <div class="row">
                <div class="col-md-4">
                    <?= $form->field($model, 'username')->textInput([
                        'value' => Yii::$app->user->identity->profile->name,
                        'disabled' =>  true
                    ])
                    ?>
                </div>

                <div class="col-md-1">
                    <?= $form->field($model, 'department')->widget(Select2::class, [
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

                <div class="col-md-1">
                    <?= $form->field($model, 'updated')->dropDownList([
                        '1' => 'Yes',
                        '0' => 'No',
                    ]) ?>
                </div>
                <div class="col-md-1">
                    <?= $form->field($model, 'deleted')->dropDownList([
                        '1' => 'Yes',
                        '0' => 'No',
                    ]) ?>
                </div>
                <div class="col-md-1">
                    <?= $form->field($model, 'request')->dropDownList([
                        '1' => 'Yes',
                        '0' => 'No',
                    ]) ?>
                </div>

                <div class="col-md-1">
                    <?= $form->field($model, 'review')->dropDownList([
                        '1' => 'Yes',
                        '0' => 'No',
                    ]) ?>
                </div>

                <div class="col-md-1">
                    <?= $form->field($model, 'approve')->dropDownList([
                        '1' => 'Yes',
                        '0' => 'No',
                    ]) ?>
                </div>

                <div class="col-md-1">
                    <?= $form->field($model, 'status')->dropDownList([
                        '10' => 'Yes',
                        '0' => 'No',
                    ]) ?>
                </div>

                <div class="col-md-1">
                    <br>
                    <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success btn-block']) ?>
                </div>
            </div>
            <?php ActiveForm::end(); ?>

        </div>
    </div>
</div>