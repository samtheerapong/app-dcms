<?php

use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\operator\models\ReviewerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Reviewers');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="reviewer-index">

    <!-- <h1><?= Html::encode($this->title) ?></h1> -->

    <p>
        <?= Html::a(Yii::t('app', 'Create Reviewer'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>
    <div class="actions-form">
        <div class="box box-primary box-solid">
            <div class="box-header">
                <div class="box-title"><?= $this->title ?></div>
            </div>
            <div class="box-body">
                <?= GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],

                        'id',
                        'requester_id',
                        'reviewer_name',
                        'reviewer_at',
                        'document_number',
                        //'document_revision',
                        //'document_age',
                        //'document_public_at',
                        //'stamps_id',
                        //'document_ref',
                        //'document_tags',
                        //'points_id',
                        //'reviewer_comment:ntext',
                        //'additional_training:ntext',

                        [
                            'class' => 'kartik\grid\ActionColumn',
                            'options' => ['style' => 'width:120px;'],
                            'buttonOptions' => ['class' => 'btn btn-default'],
                            'template' => '<div class="btn-group btn-group-sm text-center" role="group"> {view} {update} {delete}</div>'
                        ],
                    ],
                ]); ?>


            </div>
        </div>
    </div>
</div>