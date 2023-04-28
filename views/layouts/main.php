<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">

<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch:wght@500&display=swap" rel="stylesheet">
    <?php $this->head() ?>
    <style>
        * {
            font-family: 'Chakra Petch', sans-serif;
        }
    </style>
</head>

<body>
    <?php $this->beginBody() ?>

    <div class="wrap">
        <?php
        NavBar::begin([
            'brandLabel' => Yii::$app->name,
            'brandUrl' => Yii::$app->homeUrl,
            'options' => [
                'class' => 'navbar-inverse navbar-fixed-top',
            ],
        ]);
        echo Nav::widget([
            'options' => ['class' => 'navbar-nav navbar-right'],
            'items' => [
                ['label' => 'Home', 'url' => ['/site/index']],
                [
                    'label' => 'Tasks', 'items' => [
                        ['label' => 'Request', 'url' => ['/operator/requester/index']],
                        ['label' => 'Reviewer', 'url' => ['/operator/reviewer/index']],
                        ['label' => 'Approver', 'url' => ['/operator/approver/index']],
                    ]
                ],
                [
                    'label' => 'Backend', 'items' => [
                        ['label' => 'categories', 'url' => ['/operator/categories/index']],
                        ['label' => 'departments', 'url' => ['/operator/departments/index']],
                        ['label' => 'points', 'url' => ['/operator/points/index']],
                        ['label' => 'stamps', 'url' => ['/operator/stamps/index']],
                        ['label' => 'status', 'url' => ['/operator/status/index']],
                        ['label' => 'types', 'url' => ['/operator/types/index']],
                    ]
                ],
                ['label' => 'About', 'url' => ['/site/about']],
                ['label' => 'Contact', 'url' => ['/site/contact']],
                Yii::$app->user->isGuest ?
                    ['label' => 'Sign in', 'url' => ['/user/security/login']] :
                    ['label' => 'Account(' . Yii::$app->user->identity->username . ')', 'items' => [
                        ['label' => 'Profile', 'url' => ['/user/settings/profile']],
                        ['label' => 'Account', 'url' => ['/user/settings/account']],
                        ['label' => 'Users', 'url' => ['/user/admin/index']],
                        ['label' => 'RBAC', 'url' => ['/admin/user']],
                        ['label' => 'Logout', 'url' => ['/user/security/logout'], 'linkOptions' => ['data-method' => 'post']],
                    ]],
                ['label' => 'Register', 'url' => ['/user/registration/register'], 'visible' => Yii::$app->user->isGuest],
            ],

        ]);
        NavBar::end();
        ?>

        <div class="container">
            <?= Breadcrumbs::widget([
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ]) ?>
            <?= Alert::widget() ?>
            <?= $content ?>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <p class="pull-left">&copy; My Company <?= date('Y') ?></p>

            <p class="pull-right"><?= Yii::powered() ?></p>
        </div>
    </footer>

    <?php $this->endBody() ?>
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js" crossorigin="anonymous"></script>
</body>

</html>
<?php $this->endPage() ?>