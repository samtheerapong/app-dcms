<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\Reviewer */

$this->title = Yii::t('app', 'Approve') . 'ของเอกสาร : ' . $model->requester->categories->category_code . '-' .  $model->requester->departments->department_code . '-' . $model->document_number . ' Rev. ' . $model->document_revision;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Reviewers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="reviewer-update">

    <!-- <h1><?= Html::encode($this->title) ?></h1> -->

    <?= $this->render('_form', [
        'model' => $model,
        'modelRequester'=>$modelRequester,
    ]) ?>

</div>