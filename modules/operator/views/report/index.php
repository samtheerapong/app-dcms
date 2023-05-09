<?php
use miloschuman\highcharts\Highcharts;

echo Highcharts::widget([
    'options' => [
        'title' => [
            'text' => 'สรุปแยกเป็นกลุ่มเอกสาร',
            'style' => [
                'fontFamily' => 'Chakra Petch',
            ],
        ],
       'xAxis' => [
          'categories' => ['จำนวน']
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