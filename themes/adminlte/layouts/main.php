<?php

use yii\helpers\Html;

// \Yii::$app->language = 'th';

if (Yii::$app->controller->action->id === 'login') {

    echo $this->render('main-login', ['content' => $content]);
    
} else {

    if (class_exists('app\assets\AppAsset')) {
        app\assets\AppAsset::register($this);
    } else {
        app\assets\AppAsset::register($this);
    }
    dmstr\web\AdminLteAsset::register($this);

    $directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/almasaeed2010/adminlte/dist');

?>
    <?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">

    <head>
        <meta charset="<?= Yii::$app->charset ?>" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <?php $this->head() ?>
    </head>

    <body class="hold-transition skin-purple sidebar-mini sidebar-collapse">
        <?php $this->beginBody() ?>
        <div class="wrapper">

            <?= $this->render('header.php', ['directoryAsset' => $directoryAsset]) ?>

            <?= $this->render('left.php', ['directoryAsset' => $directoryAsset]) ?>

            <?= $this->render('content.php', ['content' => $content, 'directoryAsset' => $directoryAsset]) ?>

        </div>
        <?php $this->endBody() ?>
    </body>

    </html>
    <?php $this->endPage() ?>
<?php } ?>