<?php

namespace app\modules\operator\models;

use Yii;
use yii\helpers\Html;

/**
 * This is the model class for table "stamps".
 *
 * @property int $id
 * @property string|null $stamp_code รหัสประทับตรา
 * @property string|null $stamp_name ประทับตรา
 * @property string|null $color สี
 *
 * @property Reviewer[] $reviewers
 */
class Stamps extends \yii\db\ActiveRecord
{

    public $stamp_img;


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'stamps';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['stamp_code', 'color'], 'string', 'max' => 45],
            [['stamp_name'], 'string', 'max' => 100],
            [['photo'], 'string', 'max' => 255],
            [['stamp_img'], 'file', 'skipOnEmpty' => true, 'on' => 'update', 'extensions' => 'jpg,png,gif'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'stamp_code' => Yii::t('app', 'รหัสประทับตรา'),
            'stamp_name' => Yii::t('app', 'ประทับตรา'),
            'color' => Yii::t('app', 'สี'),
            'photo' => Yii::t('app', 'รูป'),
            'stamp_img' => Yii::t('app', 'รูปภาพ'),
        ];
    }

    /**
     * Gets query for [[Reviewers]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getReviewers()
    {
        return $this->hasMany(Reviewer::class, ['stamps_id' => 'id']);
    }


    public function getPhotoPreview()
    {
        $PhotoPreview = Html::img('uploads/stamp/' . $this->photo, [
            'class' => 'rounded mx-auto d-block',
            'width' => '200px',
        ]);

        return $PhotoPreview;
    }
}
