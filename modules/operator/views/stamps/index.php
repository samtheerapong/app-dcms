<?php

use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\operator\models\StampsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Stamps');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="stamps-index">

    <p>
        <?= Html::a('<i class="fas fa-plus"></i> ' . Yii::t('app', Yii::t('app', 'Create')), ['create'], ['class' => 'btn btn-success btn-lg']) ?>
    </p>

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

                        // 'id',
                        // 'stamp_code',
                        [
                            'attribute' => 'stamp_code',
                            'format' => 'html',
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->color . ';"><b>' . $model->stamp_code . '</b></span>';
                            },
                            // 'filter' => Html::activeDropDownList($searchModel, 'id', ArrayHelper::map(Categories::find()->all(), 'id', 'category_code'), ['class' => 'form-control', 'prompt' => 'ทั้งหมด...'])
                        ],
                        'stamp_name:html',
                        
                        // ['class' => 'yii\grid\ActionColumn'],
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