<?php
use miloschuman\highcharts\Highcharts;
?>

<?= Highcharts::widget([
   'options' => [
      'title' => [
         'text' => 'สรุปแยกเป็นระดับเอกสาร',
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