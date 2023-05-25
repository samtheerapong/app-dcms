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
                    'timeFormat' => '', // Remove the timeFormat option
                    'forceEventDuration' => true,
                    'ignoreTimezone' => true,
                ],
                'ajaxEvents' => Url::to(['/default/jsoncalendar']),
            ]) ?>
        </div>
    </div>

</div>