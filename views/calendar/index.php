<?php

$this->title = 'Calendar';

?>

<div class="calendar-container">
    <?= yii2fullcalendar\yii2fullcalendar::widget([
        'options' => [
            'id' => 'calendar',
        ],
        'events' => new \yii\web\JsExpression($eventsJson),
    ]); ?>
</div>