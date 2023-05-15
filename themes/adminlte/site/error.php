<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

$this->title = $name;
?>
<section class="content">
    <div class="jumbotron">
        <h1 class="headline text-info"><i class="fa fa-warning text-yellow"></i></h1>
        <p class="text-danger"><?= nl2br(Html::encode($message)) ?></p>
        <h1><?= Html::encode($this->title) ?></h1>
        <p><a class="btn btn-success btn-lg" href='<?= Yii::$app->homeUrl ?>'>กลับหน้าหลัก</a></p>
    </div>
</section>