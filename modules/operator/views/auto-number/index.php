<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\operator\models\AutoNumberSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Auto Numbers');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="auto-number-index">

    <p>
        <?= Html::a(Yii::t('app', 'Create'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <div class="actions-form">
        <div class="box box-success box-solid">
            <div class="box-header">
                <div class="box-title"><?= $this->title ?></div>
            </div>
            <div class="box-body">
                <?= GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],

                        'group',
                        'number',
                        'optimistic_lock',
                        'update_time:datetime',

                        [
                            'class' => 'kartik\grid\ActionColumn',
                            'options' => ['style' => 'width:10%'],
                            'buttonOptions' => ['class' => 'btn btn-default'],
                            'template' => '<div class="btn-group btn-group-sm text-center" role="group">  {view} {update}  {delete} </div>',
                        ],
                    ],
                ]); ?>
            </div>
        </div>
    </div>
</div>