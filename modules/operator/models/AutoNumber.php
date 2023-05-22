<?php

namespace app\modules\operator\models;

use Yii;

/**
 * This is the model class for table "auto_number".
 *
 * @property string $group
 * @property int|null $number
 * @property int|null $optimistic_lock
 * @property int|null $update_time
 */
class AutoNumber extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'auto_number';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['group'], 'required'],
            [['number', 'optimistic_lock', 'update_time'], 'integer'],
            [['group'], 'string', 'max' => 32],
            [['group'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'group' => Yii::t('app', 'Group'),
            'number' => Yii::t('app', 'Number'),
            'optimistic_lock' => Yii::t('app', 'Optimistic Lock'),
            'update_time' => Yii::t('app', 'Update Time'),
        ];
    }
}
