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
                        ['label' => 'Home', 'url' => ['/site/index']],
                        // ['label' => 'About', 'url' => ['/site/about']],
                        // ['label' => 'Contact', 'url' => ['/site/contact']],
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