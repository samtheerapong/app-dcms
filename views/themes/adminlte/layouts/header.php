<?php

use yii\helpers\Html;
use yii\bootstrap\Nav;

/* @var $this \yii\web\View */
/* @var $content string */

?>
<style>
    .home-link {
    background-color: #ff3442;
}
    .register-link {
    background-color: #678052;
}
    .sign-in-link {
    background-color: #0f1ee0;
}
</style>
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
                        ['label' => Yii::t('app', 'Request'), 'url' => ['/operator/requester/index']],
                        ['label' => Yii::t('app', 'Reviewer'), 'url' => ['/operator/reviewer/index']],
                        ['label' => Yii::t('app', 'Private Document'), 'url' => ['/operator/private-requester/index']],
                       
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
                            'options' => ['class' => 'register-link'],
                            'visible' => Yii::$app->user->isGuest,
                           
                        ],
                        Yii::$app->user->isGuest ?
                            ['label' => 'เข้าสู่ระบบ', 'url' => ['/user/security/login'],'options' => ['class' => 'sign-in-link'],] :
                            [
                                'label' => '<i class="fa fa-child"></i> สวัสดี!! (' . Yii::$app->user->identity->profile->name . ')',
                                'options' => ['class' => 'home-link'],
                                'items' => [
                                    ['label' => '<i class="fa fa-file"></i>' . Yii::t('app', 'Private Document'), 'url' => ['/operator/private-requester/index']],
                                    ['label' => '<i class="fa fa-id-card"></i> โปรไฟล์', 'url' => ['/user/settings/profile']],
                                    ['label' => '<i class="fa fa-vcard"></i> บัญชี', 'url' => ['/user/settings/account']],
                                    ['label' => '<i class="fa fa-book"></i> จัดการสิทธิ์', 'url' => ['/admin']],
                                    ['label' => '<i class="fa fa-users"></i> จัดการผู้ใช้งาน', 'url' => ['/user/admin/index']],
                                    ['label' => '<i class="fa fa-sign-out"></i> ออกจากระบบ', 'url' => ['/user/security/logout'], 'linkOptions' => ['data-method' => 'post']],
                                ]
                            ],
                    ];
                    echo Nav::widget([
                        'options' => ['class' => 'navbar-nav'],
                        'encodeLabels' => false, // ใช้งาน icon
                        'items' => $menuItems,
                       
                    ]);
                    ?>

                </li>

            </ul>
        </div>
    </nav>
</header>