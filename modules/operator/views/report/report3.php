<?php

use yii\helpers\Url;
use yii2fullcalendar\yii2fullcalendar;

$this->title = 'Calendar';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="orders-index">

    <div class="card card-success">
        <div class="box box-info box-solid">
            <div class="box-header">
                <div class="box-title"><?= $this->title ?></div>
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
                        '/operator/report/report3/jsoncalendar',
                    ]),
                ]) ?>
            </div>
        </div>

    </div>
</div>
