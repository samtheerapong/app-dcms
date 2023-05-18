<?php

use yii\helpers\Html;
?>
<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="https://yt3.ggpht.com/ytc/AGIKgqNFIDxY-P0cU3ras42reJl54-xSkyATMn896tRhmBM=s600-c-k-c0x00ffffff-no-rj-rp-mo" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p>NorthernFoodComplex</p>

                <a href="#"><i class="fa fa-circle text-success"></i> Demo</a>
            </div>
        </div>

        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..." />
                <span class="input-group-btn">
                    <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>
        <!-- /.search form -->

        <?= dmstr\widgets\Menu::widget(
            // [
            //     'options' => ['class' => 'sidebar-menu tree', 'data-widget' => 'tree'],
            //     'items' => [
            //         ['label' => 'Menu', 'options' => ['class' => 'header']],
            //         [
            //             'label' => Yii::t('app', 'Tasks'), 'icon' => 'far fa-file', 'items' => [
            //                 ['label' => Yii::t('app', 'Request'), 'icon' => 'fas fa-comment text-danger', 'url' => ['/operator/requester/index']],
                            
            //                 ['label' => Yii::t('app', 'Reviewer'), 'icon' => 'fas fa-comments text-warning', 'url' => ['/operator/reviewer/index']],
            //                 ['label' => Yii::t('app', 'Approver'), 'icon' => 'far fa-paper-plane text-success', 'url' => ['/operator/approver/index']],
            //             ]
            //         ],
            //         [
            //             'label' => Yii::t('app', 'Backend'), 'icon' => 'fas fa-database', 'items' => [
            //                 ['label' => Yii::t('app', 'categories'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/categories/index']],
            //                 ['label' => Yii::t('app', 'departments'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/departments/index']],
            //                 ['label' => Yii::t('app', 'points'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/points/index']],
            //                 ['label' => Yii::t('app', 'stamps'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/stamps/index']],
            //                 ['label' => Yii::t('app', 'status'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/status/index']],
            //                 ['label' => Yii::t('app', 'types'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/types/index']],
            //                 ['label' => Yii::t('app', 'user'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/user/index']],
            //                 ['label' => Yii::t('app', 'profile'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/profile/index']],
            //             ]
            //         ],
            //         [
            //             'label' => Yii::t('app', 'Reports'), 'icon' => 'fas fa-chart-pie', 'items' => [
            //                 ['label' => Yii::t('app', 'categories'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/report/index']],
            //                 ['label' => Yii::t('app', 'types'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/report/report1']],
            //                 ['label' => Yii::t('app', 'status'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/report/report2']],
            //                 ['label' => Yii::t('app', 'report3 Calendar'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/report/report3']],
            //                 ['label' => Yii::t('app', 'Ex.'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/report/report4']],
            //             ]
            //         ],
            //         [
            //             'label' => Yii::t('app', 'System'), 'icon' => 'cogs', 'items' => [
            //                 ['label' => 'Gii', 'icon' => 'file-code-o', 'url' => ['/gii']],
            //                 ['label' => 'Debug', 'icon' => 'dashboard', 'url' => ['/debug']],
            //             ]
            //         ],

            //         // ['label' => Yii::t('app', 'Login'), 'url' => ['/user/security/login'], 'visible' => Yii::$app->user->isGuest],
            //         Yii::$app->user->isGuest ?
            //             [
            //                 'label' => 'เข้าสู่ระบบ',
            //                 'url' => ['/user/security/login']
            //             ] :
            //             [
            //                 'label' => 'สวัสดี!! (' . Yii::$app->user->identity->profile->name . ')',
            //                 'icon' => 'fas fa-child',
            //                 'items' => [
            //                     ['label' => Yii::t('app', 'Private Document'), 'icon' => 'fas fa-file text-danger', 'url' => ['/operator/private-requester/index']],
            //                     ['label' => 'โปรไฟล์', 'icon' => 'circle-o text-primary', 'url' => ['/user/settings/profile']],
            //                     ['label' => 'บัญชี', 'icon' => 'circle-o text-primary', 'url' => ['/user/settings/account']],
            //                     ['label' => 'จัดการสิทธิ์', 'icon' => 'circle-o text-primary', 'url' => ['/admin']],
            //                     ['label' => 'จัดการผู้ใช้งาน', 'icon' => 'circle-o text-primary', 'url' => ['/user/admin/index']],
            //                     [
            //                         'label' => Yii::t('app', 'Logout'),
            //                         'icon' => 'file-code-o',
            //                         'url' => ['/site/logout'],
            //                         // 'template' => Html::beginForm(['/user/security/logout']) . Html::submitButton('Logout') . Html::endForm(),
            //                         // 'template' => '<a href="{url}" data-method="post"><i class="fa fa-sign-out"></i> <span>{label}</span></a>',
            //                         'template' => Html::beginForm(['/user/security/logout']) .
            //                             Html::submitButton(
            //                                 '<i class="fas fa-sign-out-alt"></i>' . ' ' . Yii::t('app', 'Logout'),
            //                                 [
            //                                     'data-confirm' =>  Yii::t('app', 'Are you sure you want to log out?'),
            //                                     'class' => 'btn btn-danger btn-block'
            //                                 ]
            //                             ) .
            //                             Html::endForm(),
            //                     ],
            //                 ]
            //             ],
            //     ],
            // ]
        ) ?>
    </section>

</aside>