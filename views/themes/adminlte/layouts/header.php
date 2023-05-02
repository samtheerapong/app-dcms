<?php

use yii\helpers\Html;
use yii\bootstrap\Nav;

/* @var $this \yii\web\View */
/* @var $content string */
?>

<header class="main-header">

    <?= Html::a('<span class="logo-mini">APP</span><span class="logo-lg">' . Yii::$app->name . '</span>', Yii::$app->homeUrl, ['class' => 'logo']) ?>

    <nav class="navbar navbar-static-top" role="navigation">

        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">

            <ul class="nav navbar-nav">

                <li class="dropdown user user-menu">

                    <?php
                    $menuItems = [
                        ['label' => Yii::t('app', 'Home'), 'url' => ['/site/index']],
                        // ['label' => 'About', 'url' => ['/site/about']],
                        // ['label' => 'Contact', 'url' => ['/site/contact']],
                        [
                            'label' => Yii::t('app', 'Tasks'), 'items' => [
                                ['label' => Yii::t('app', 'Request'), 'url' => ['/operator/requester/index']],
                                ['label' => Yii::t('app', 'Reviewer'), 'url' => ['/operator/reviewer/index']],
                                ['label' => Yii::t('app', 'Approver'), 'url' => ['/operator/approver/index']],
                            ]
                        ],
                        [
                            'label' => Yii::t('app', 'Backend'), 'items' => [
                                ['label' => Yii::t('app', 'categories'), 'url' => ['/operator/categories/index']],
                                ['label' => Yii::t('app', 'departments'), 'url' => ['/operator/departments/index']],
                                ['label' => Yii::t('app', 'points'), 'url' => ['/operator/points/index']],
                                ['label' => Yii::t('app', 'stamps'), 'url' => ['/operator/stamps/index']],
                                ['label' => Yii::t('app', 'status'), 'url' => ['/operator/status/index']],
                                ['label' => Yii::t('app', 'types'), 'url' => ['/operator/types/index']],
                            ]
                        ],
                        [
                            'label' => 'สมัครสมาชิก',
                            'url' => ['/user/registration/register'],
                            'visible' => Yii::$app->user->isGuest
                        ],
                        Yii::$app->user->isGuest ?
                            [
                                'label' => 'เข้าสู่ระบบ',
                                'url' => ['/user/security/login']
                            ] :
                            [
                                'label' => 'สวัสดี!! (' . Yii::$app->user->identity->profile->name . ')',
                                'items' => [
                                    [
                                        'label' => 'โปรไฟล์',
                                        'url' => ['/user/settings/profile']
                                    ],
                                    ['label' => 'บัญชี', 'url' => ['/user/settings/account']],
                                    ['label' => 'จัดการสิทธิ์', 'url' => ['/admin']],
                                    ['label' => 'จัดการผู้ใช้งาน', 'url' => ['/user/admin/index']],
                                    ['label' => 'ออกจากระบบ', 'url' => ['/user/security/logout'], 'linkOptions' => ['data-method' => 'post']],
                                ]
                            ],
                    ];
                    echo Nav::widget([
                        'options' => ['class' => 'navbar-nav'],
                        'items' => $menuItems,
                    ]);
                    ?>

                </li>

            </ul>
        </div>
    </nav>
</header>