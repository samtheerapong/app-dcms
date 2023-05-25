<?php

use yii\helpers\Html;
?>
<aside class="main-sidebar">
    <section class="sidebar">

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget' => 'tree'],
                'items' => [
                    ['label' => 'Menu', 'options' => ['class' => 'header']],
                    ['label' => Yii::t('app', 'Dashboard'), 'icon' => 'glyphicon glyphicon-dashboard', 'url' => ['/site/index']],

                    ['label' => Yii::t('app', 'Request'), 'icon' => 'fas fa-send text-danger', 'url' => ['/operator/private-requester/index']],
                    ['label' => Yii::t('app', 'Calendar'), 'icon' => 'fas fa-calendar text-danger', 'url' => ['/operator/report/report3']],
                    ['label' => Yii::t('app', 'Reviewer'), 'icon' => 'fas fa-comments text-warning', 'url' => ['/operator/reviewer/index']],
                    ['label' => Yii::t('app', 'Approver'), 'icon' => 'far fa-paper-plane text-success', 'url' => ['/operator/approver/index']],
                    Yii::$app->user->isGuest ?
                        [
                            'label' => 'เข้าสู่ระบบ',
                            'url' => ['/user/security/login']
                        ] :
                        [
                            'label' => 'สวัสดี!! (' . Yii::$app->user->identity->profile->name . ')',
                            'icon' => 'fas fa-child',
                            'items' => [
                                ['label' => 'โปรไฟล์', 'icon' => 'circle-o text-primary', 'url' => ['/user/settings/profile']],
                                ['label' => 'บัญชี', 'icon' => 'circle-o text-primary', 'url' => ['/user/settings/account']],
                                [
                                    'label' => Yii::t('app', 'Logout'),
                                    'icon' => 'file-code-o',
                                    'url' => ['/site/logout'],
                                    'template' => Html::beginForm(['/user/security/logout']) .
                                        Html::submitButton(
                                            '<i class="fas fa-sign-out-alt"></i>' . ' ' . Yii::t('app', 'Logout'),
                                            [
                                                'data-confirm' =>  Yii::t('app', 'Are you sure you want to log out?'),
                                                'class' => 'btn btn-danger btn-block'
                                            ]
                                        ) .
                                        Html::endForm(),
                                ],
                            ]
                        ],
                ],
            ]
        ) ?>
    </section>

</aside>