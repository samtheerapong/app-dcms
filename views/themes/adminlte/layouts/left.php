<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- /.search form -->

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget'=> 'tree'],
                'items' => [
                    ['label' => 'Menu Yii2', 'options' => ['class' => 'header']],
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
                    ['label' => 'Gii', 'icon' => 'file-code-o', 'url' => ['/gii']],
                    ['label' => 'Debug', 'icon' => 'dashboard', 'url' => ['/debug']],
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    [
                        'label' => 'Some tools',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Gii', 'icon' => 'file-code-o', 'url' => ['/gii'],],
                            ['label' => 'Debug', 'icon' => 'dashboard', 'url' => ['/debug'],],
                            [
                                'label' => 'Level One',
                                'icon' => 'circle-o',
                                'url' => '#',
                                'items' => [
                                    ['label' => 'Level Two', 'icon' => 'circle-o', 'url' => '#',],
                                    [
                                        'label' => 'Level Two',
                                        'icon' => 'circle-o',
                                        'url' => '#',
                                        'items' => [
                                            ['label' => 'Level Three', 'icon' => 'circle-o', 'url' => '#',],
                                            ['label' => 'Level Three', 'icon' => 'circle-o', 'url' => '#',],
                                        ],
                                    ],
                                ],
                            ],
                        ],
                    ],
                ],
            ]
        ) ?>

    </section>

</aside>
