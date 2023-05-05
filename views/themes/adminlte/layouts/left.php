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
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget' => 'tree'],
                'items' => [
                    ['label' => 'Menu', 'options' => ['class' => 'header']],
                    [
                        'label' => Yii::t('app', 'Tasks'), 'icon' => 'comments-o', 'items' => [
                            ['label' => Yii::t('app', 'Request'), 'icon' => 'circle-o text-danger', 'url' => ['/operator/requester/index']],
                            ['label' => Yii::t('app', 'Reviewer'), 'icon' => 'circle-o text-warning', 'url' => ['/operator/reviewer/index']],
                            ['label' => Yii::t('app', 'Approver'), 'icon' => 'circle-o text-success', 'url' => ['/operator/approver/index']],
                        ]
                    ],
                    [
                        'label' => Yii::t('app', 'Backend'), 'icon' => 'folder-o','items' => [
                            ['label' => Yii::t('app', 'categories'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/categories/index']],
                            ['label' => Yii::t('app', 'departments'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/departments/index']],
                            ['label' => Yii::t('app', 'points'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/points/index']],
                            ['label' => Yii::t('app', 'stamps'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/stamps/index']],
                            ['label' => Yii::t('app', 'status'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/status/index']],
                            ['label' => Yii::t('app', 'types'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/types/index']],
                            ['label' => Yii::t('app', 'user'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/user/index']],
                            ['label' => Yii::t('app', 'profile'), 'icon' => 'circle-o text-primary', 'url' => ['/operator/profile/index']],
                            // ['label' => Yii::t('app', 'approver'), 'url' => ['/operator/approver/index']],
                        ]
                    ],
                    [
                        'label' => Yii::t('app', 'System'), 'icon' => 'cog','items' => [
                            ['label' => 'Gii', 'icon' => 'file-code-o', 'url' => ['/gii']],
                            ['label' => 'Debug', 'icon' => 'dashboard', 'url' => ['/debug']],
                        ]
                    ],
                   
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    // [
                    //     'label' => 'Some tools',
                    //     'icon' => 'share',
                    //     'url' => '#',
                    //     'items' => [
                    //         ['label' => 'Gii', 'icon' => 'file-code-o', 'url' => ['/gii'],],
                    //         ['label' => 'Debug', 'icon' => 'dashboard', 'url' => ['/debug'],],
                    //         [
                    //             'label' => 'Level One',
                    //             'icon' => 'circle-o',
                    //             'url' => '#',
                    //             'items' => [
                    //                 ['label' => 'Level Two', 'icon' => 'circle-o', 'url' => '#',],
                    //                 [
                    //                     'label' => 'Level Two',
                    //                     'icon' => 'circle-o',
                    //                     'url' => '#',
                    //                     'items' => [
                    //                         ['label' => 'Level Three', 'icon' => 'circle-o', 'url' => '#',],
                    //                         ['label' => 'Level Three', 'icon' => 'circle-o', 'url' => '#',],
                    //                     ],
                    //                 ],
                    //             ],
                    //         ],
                    //     ],
                    // ],
                ],
            ]
        ) ?>

    </section>

</aside>