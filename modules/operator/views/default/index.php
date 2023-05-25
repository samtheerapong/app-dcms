<?php

use yii\helpers\Html;
//use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
//

use yii2fullcalendar\yii2fullcalendar;

/* @var $this yii\web\View */
/* @var $searchModel app\models\OrdersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'ปฏิทินการจอง';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="orders-index">
    <?php
    // echo $this->render('_search', ['model' => $searchModel]);
    ?>
    <p>
        <?= Html::a(
            'เพิ่มการจอง',
            ['meeting/create'],
            ['class' => 'btn btn-danger']
        ) ?>
    </p>

    <div class="card card-success">
        <div class="card-header">
            <h3 class="card-title"><?= Html::encode($this->title) ?></h3>
        </div> <!-- end div card-header-->
        <div class="card-body">

            <div class="box box-success box-solid">
                <div class="box-header">
                    <div class="box-title"> ปฏิทินการจอง</div>
                </div>
                <div class="box-body">
                    <?= yii2fullcalendar::widget([
                        'header' => [
                            'left' => 'prev,next today',
                            'center' => 'title',
                            'right' => 'month,agendaWeek,agendaDay',
                        ],
                        'clientOptions' => [
                            'lang' => 'th',
                            'lazyFetching' => true,
                            'timeFormat' => 'H:mm',
                            'forceEventDuration' => true,
                            'ignoreTimezone' => true,
                        ],
                        'ajaxEvents' => Url::to([
                            '/meeting/default/jsoncalendar',
                        ]),
                    ]) ?>
                </div>
            </div>

        </div>
    </div>
</div>