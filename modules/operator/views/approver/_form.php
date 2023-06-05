<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Approver */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="approver-form">
    <p>
        <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
    </p>

    <div class="actions-form">
        <div class="box box-success box-solid">
            <div class="box-header">
                <div class="box-title"><?= Yii::t('app', 'Approver') ?></div>
            </div>
            <div class="box-body">

            <?php $form = ActiveForm::begin(); ?>
                <div class="row">
                    <div class="col-md-12">
                        <?= $form->field($modelRequester, 'status_id')->dropDownList([
                            '3' => 'ให้ทบทวนใหม่',
                            '4' => 'อนุมัติ',
                        ], [
                            'required' => true,
                            'options' => [
                                '4' => ['selected' => true]
                            ]
                        ]) ?>
                    </div>
                    <div class="col-md-12">
                        <?= $form->field($model, 'approver_comment')->textarea(['rows' => 3]) ?>
                    </div>
                </div>
                <div class="form-group">
                    <?= Html::submitButton('<i class="fas fa-save"></i> ' . Yii::t('app', 'Save'), ['class' => 'btn btn-danger btn-lg btn-block']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>