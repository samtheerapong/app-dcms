<?php

namespace app\modules\operator\models;

use Yii;

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
        ];
    }

    /**
     * Gets query for [[Reviewers]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getReviewers()
    {
        return $this->hasMany(Reviewer::className(), ['stamps_id' => 'id']);
    }
}
