<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Approver */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="approver-form">
    <p>
        <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Back'), ['index'], ['class' => 'btn btn-primary']) ?>
    </p>

    <div class="actions-form">
        <?php $form = ActiveForm::begin(); ?>
        <div class="box box-success box-solid">
            <div class="box-header">
                <div class="box-title"><?= Yii::t('app', 'Approver') ?></div>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="col-md-12">
                        <?= $form->field($modelRequester, 'status_id')->dropDownList([
                            '3' => 'ให้ทบทวนใหม่',
                            '4' => 'อนุมัติ',
                        ], [
                            'required' => true,
                            'options' => [
                                '4' => ['selected' => true] // Set '4' as the default selected option
                            ]
                        ]) ?>

                    </div>
                    <div class="col-md-12">
                        <?= $form->field($model, 'approver_comment')->textarea(['rows' => 6]) ?>
                    </div>
                </div>
                <div class="form-group">
                    <?= Html::submitButton(Yii::t('app', 'Approve'), ['class' => 'btn btn-success btn-block btn-lg']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>
    </div>
</div>
</div>
</div>