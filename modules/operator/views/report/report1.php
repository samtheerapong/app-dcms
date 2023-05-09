<?php
use miloschuman\highcharts\Highcharts;

echo Highcharts::widget([
    'options' => [
        'title' => [
            'text' => 'สรุป',
            'style' => [
                'fontFamily' => 'Chakra Petch',
            ],
        ],
       'xAxis' => [
          'categories' => ['จำนวน(ครั้ง)']
       ],
       'yAxis' => [
        'title' => [
            'text' => 'จำนวนครั้ง',
            'style' => [
                'fontFamily' => 'Chakra Petch',
            ],
        ],
    ],
       'series' => $graph,
    ]
 ]);
?>