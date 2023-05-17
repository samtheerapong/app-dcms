<?php

namespace app\assets;

use yii\web\AssetBundle;

class SweetAlertAsset extends AssetBundle
{
    public $sorcePath = '@bower/sweetalert/dist';
    public $css = [
        'sweetalert.css',
    ];
    public $js = [
        'sweetalert.min.js',
    ];
}
