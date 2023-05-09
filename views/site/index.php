<?php

use app\modules\operator\models\User;
use app\modules\operator\models\Requester;
/* @var $this yii\web\View */


//data
$users = User::find()->count();
$alldocs = Requester::find()->count();
$process = Requester::find()->where(['status_id' => 2])->orWhere(['status_id' => 3])->orWhere(['status_id' => 1])->count();
$success = Requester::find()->where(['status_id' => 4])->count();

$this->title = 'Documents Control';
?>
<div class="row">
    <div class="site-index">
        <section class="content">
            <div class="row">

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-purple"><i class="fa fa-file"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">เอกสารทั้งหมด</span>
                            <span class="info-box-number">
                                <?= $alldocs ?>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="clearfix visible-sm-block"></div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-yellow"><i class="fa fa-hourglass"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">รอดำเนินการ</span>
                            <span class="info-box-number"> <?= $process ?></span>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green"><i class="fa fa-check-square-o"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">สำเร็จ</span>
                            <span class="info-box-number"><?= $success ?></span>
                        </div>

                    </div>

                </div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-blue"><i class="fa fa-users"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">ผู้ใช้งานทังหมด</span>
                            <span class="info-box-number">
                                <?= $users ?>
                                <!-- <small>คน</small> -->
                            </span>
                        </div>
                    </div>
                </div>


            </div>
        </section>
    </div>
    </div>