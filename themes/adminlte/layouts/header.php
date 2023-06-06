<?php

use yii\helpers\Html;
use yii\bootstrap\Nav;


/* @var $this \yii\web\View */
/* @var $content string */

?>

<header class="main-header">

    <?= Html::a('<span class="logo-mini"><img src="https://www.northernfoodcomplex.com/wp-content/uploads/2018/10/logo.png" class="rounded" alt="User Image" /></span><span class="logo-lg">' . Yii::$app->name . '</span>', Yii::$app->homeUrl, ['class' => 'logo']) ?>

    <nav class="navbar navbar-static-top" role="navigation">

        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <li class="dropdown user user-menu">
                    <?php

                    $menuItems = [
                        [
                            'label' => Yii::t('app', 'Home'),
                            'options' => ['class' => 'home-link'],
                            'url' => ['/site/index']
                        ],
                        [
                            'label' => Yii::t('app', 'Private Document'),
                            'options' => ['class' => 'requester-link'],
                            'url' => ['/operator/private-requester/index'],
                            'visible' => !Yii::$app->user->isGuest,
                        ],
                        [
                            'label' => Yii::t('app', 'Reviewer'),
                            'options' => ['class' => 'reviewer-link'],
                            'url' => ['/operator/reviewer/index'],
                            'visible' => !Yii::$app->user->isGuest,
                        ],
                        [
                            'label' => Yii::t('app', 'Approver'),
                            'options' => ['class' => 'approver-link'],
                            'url' => ['/operator/approver/index'],
                            'visible' => !Yii::$app->user->isGuest,
                        ],

                        [
                            'label' => Yii::t('app', 'Reports'), 'options' => ['class' => 'report-link'], 'icon' => 'fas fa-chart-pie', 'items' => [
                                ['label' => Yii::t('app', 'categories'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/report/index']],
                                ['label' => Yii::t('app', 'types'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/report/report1']],
                                ['label' => Yii::t('app', 'status'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/report/report2']],
                                ['label' => Yii::t('app', 'Calendar'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/report/report3']],
                                // ['label' => Yii::t('app', 'Ex.'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/report/report4']],
                                // ['label' => Yii::t('app', 'Logs.'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/document-logs/index']],
                            ],
                            'visible' => !Yii::$app->user->isGuest,

                        ],

                        [
                            'label' => Yii::t('app', 'Backend'),
                            'options' => ['class' => 'backend-link'],
                            'items' => [
                                ['label' => Yii::t('app', 'Manage Requester'), 'url' => ['/operator/requester/index']],
                                ['label' => Yii::t('app', 'Categories'), 'url' => ['/operator/categories/index']],
                                ['label' => Yii::t('app', 'Departments'), 'url' => ['/operator/departments/index']],
                                ['label' => Yii::t('app', 'Points'), 'url' => ['/operator/points/index']],
                                ['label' => Yii::t('app', 'Stamps'), 'url' => ['/operator/stamps/index']],
                                ['label' => Yii::t('app', 'Status'), 'url' => ['/operator/status/index']],
                                ['label' => Yii::t('app', 'Types'), 'url' => ['/operator/types/index']],
                                ['label' => Yii::t('app', 'Auto Number'), 'url' => ['/operator/auto-number/index']],
                                ['label' => Yii::t('app', 'User Manage'), 'url' => ['/user/admin/index']],
                                ['label' => Yii::t('app', 'Permission Manage'), 'url' => ['/operator/user/index']],
                                ['label' => Yii::t('app', 'Role Manage'), 'url' => ['/admin/role']],
                            ],
                            'visible' => !Yii::$app->user->isGuest,
                        ],

                        [
                            'label' => 'สมัครสมาชิก',
                            'url' => ['/user/registration/register'],
                            'options' => ['class' => 'register-link'],
                            'visible' => Yii::$app->user->isGuest,
                        ],

                        Yii::$app->user->isGuest ?
                            ['label' => 'เข้าสู่ระบบ', 'url' => ['/user/security/login'], 'options' => ['class' => 'sign-in-link'],] :
                            [
                                'label' => '<i class="fa fa-child"></i> สวัสดี!! (' . Yii::$app->user->identity->profile->name . ')',
                                'options' => ['class' => 'sign-in-link'],
                                'items' => [
                                    ['label' => '<i class="fa fa-id-card"></i> โปรไฟล์', 'url' => ['/user/settings/profile']],
                                    ['label' => '<i class="fa fa-vcard"></i> บัญชี', 'url' => ['/user/settings/account']],
                                    // [
                                    //     'label' => '<i class="fa fa-cogs"></i>' . Yii::t('app', 'Backend'),
                                    //     'options' => ['class' => 'backend-link'],
                                    //     'items' => [
                                    //         ['label' => Yii::t('app', 'Manage Requester'), 'url' => ['/operator/requester/index']],
                                    //         ['label' => Yii::t('app', 'categories'), 'url' => ['/operator/categories/index']],
                                    //         ['label' => Yii::t('app', 'departments'), 'url' => ['/operator/departments/index']],
                                    //         ['label' => Yii::t('app', 'points'), 'url' => ['/operator/points/index']],
                                    //         ['label' => Yii::t('app', 'stamps'), 'url' => ['/operator/stamps/index']],
                                    //         ['label' => Yii::t('app', 'status'), 'url' => ['/operator/status/index']],
                                    //         ['label' => Yii::t('app', 'types'), 'url' => ['/operator/types/index']],
                                    //         ['label' => Yii::t('app', 'Auto Number'), 'url' => ['/operator/auto-number/index']],
                                    //         ['label' => Yii::t('app', 'User Manage'), 'url' => ['/user/admin/index']],
                                    //         ['label' => Yii::t('app', 'Permission Manage'), 'url' => ['/operator/user/index']],
                                    //         ['label' => Yii::t('app', 'Role Manage'), 'url' => ['/admin/role']],
                                    //     ]
                                    // ],
                                    [
                                        'label' => '<i class="fa fa-sign-out"></i> ออกจากระบบ',
                                        'url' => ['/user/security/logout'],

                                        'linkOptions' => [
                                            'data-method' => 'post',
                                            // 'class' => 'btn btn-block'
                                        ]
                                    ],

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