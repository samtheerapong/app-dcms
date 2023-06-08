<?php

namespace app\modules\operator\models;

use Yii;

/**
 * This is the model class for table "role".
 *
 * @property int $id
 * @property string|null $role_code
 * @property string|null $role_name
 * @property string|null $role_color
 */
class Role extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'role';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['role_code', 'role_color'], 'string', 'max' => 20],
            [['role_name'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'role_code' => Yii::t('app', 'Role Code'),
            'role_name' => Yii::t('app', 'Role Name'),
            'role_color' => Yii::t('app', 'Role Color'),
        ];
    }
}
