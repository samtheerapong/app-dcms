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
                    ['label' => Yii::t('app', 'Dashboard'), 'icon' => 'fas fa-dashboard', 'url' => ['/site/index']],

                    ['label' => Yii::t('app', 'Request'), 'icon' => 'fas fa-send', 'url' => ['/operator/private-requester/index']],
                    ['label' => Yii::t('app', 'Calendar'), 'icon' => 'fas fa-calendar', 'url' => ['/operator/report/report3']],
                    // ['label' => Yii::t('app', 'Reviewer'), 'icon' => 'fas fa-comments text-warning', 'url' => ['/operator/reviewer/index']],
                    // ['label' => Yii::t('app', 'Approver'), 'icon' => 'far fa-paper-plane text-success', 'url' => ['/operator/approver/index']],
                    Yii::$app->user->isGuest ?
                        [
                            'label' => Yii::t('app','Login'),
                            'icon' => 'circle-o text-danger',
                            'url' => ['/user/security/login']
                        ] :
                        [
                            'label' => Yii::t('app','Hi,').' (' . Yii::$app->user->identity->profile->name . ')',
                            'icon' => 'fas fa-child',
                            'items' => [
                                ['label' => Yii::t('app','Profile'), 'icon' => 'circle-o text-primary', 'url' => ['/user/settings/profile']],
                                ['label' => Yii::t('app','Account'), 'icon' => 'circle-o text-primary', 'url' => ['/user/settings/account']],
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