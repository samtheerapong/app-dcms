<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\operator\models\User */

$this->title = $model->username . ' (' . $model->profile->name . ')';
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Users'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="user-view">
    <p>
        <?= Html::a('<span class="glyphicon glyphicon-chevron-left"></span> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('<span class="glyphicon glyphicon-edit"></span> ' . Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-warning']) ?>
    </p>
    <div class="box box-primary box-solid">
        <div class="box-header">
            <div class="box-title"><?= $this->title ?></div>
        </div>
        <div class="box-body">
            <?= DetailView::widget([
                'template' => '<tr><th style="width: 250px">{label}</th><td>{value}</td></tr>',
                'model' => $model,
                'attributes' => [
                    // 'id',
                    // 'username',
                    [
                        'attribute' => 'username',
                        'value' => function ($model) {
                            return $model->username . ' (' . $model->profile->name . ')';
                        },
                    ],
                    'email:email',
                    [
                        'attribute' => 'department',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->departments->department_code . ' > ' . $model->departments->department_details;
                        },
                    ],
                    [
                        'attribute' => 'role',
                        'format' => 'html',
                        'value' => function ($model) {
                            return '<span class="badge" style="background-color:' . $model->roles->role_color . ';"><b>' . $model->roles->role_code . '</b></span>';
                        },
                    ],
                    [
                        'attribute' => 'updated',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->updated == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                        },
                    ],
                    [
                        'attribute' => 'deleted',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->deleted == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                        },
                    ],
                    [
                        'attribute' => 'request',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->request == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                        },
                    ],
                    [
                        'attribute' => 'review',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->review == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                        },
                    ],
                    [
                        'attribute' => 'approve',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->approve == 1 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                        },
                    ],
                    // 'password_hash',
                    // 'auth_key',
                    // 'confirmed_at',
                    // 'unconfirmed_email:email',
                    // 'blocked_at',
                    // 'registration_ip',
                    // 'created_at',
                    // 'updated_at',
                    // 'flags',
                    // 'last_login_at',
                    [
                        'attribute' => 'status',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->status == 10 ? '<span class="badge" style="background-color: green;">Yes</span>' : '<span class="badge" style="background-color: red;">No</span>';
                        },
                    ],
                ],
            ]) ?>

        </div>
    </div>
</div>