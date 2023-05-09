<?php
use miloschuman\highcharts\Highcharts;

echo Highcharts::widget([
    'options' => [
       'title' => ['text' => 'title'],
       'xAxis' => [
          'categories' => ['category1', 'category2', 'category3']
       ],
       'yAxis' => [
          'title' => ['text' => 'yAxis title']
       ],
       'series' => $graph,
    ]
 ]);
?>