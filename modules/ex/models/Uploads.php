<?php

namespace app\modules\ex\models;

use Yii;

/**
 * This is the model class for table "uploads".
 *
 * @property int $upload_id
 * @property string|null $ref
 * @property string|null $file_name
 * @property string|null $real_filename
 * @property string|null $create_date
 */
class Uploads extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'uploads';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ref', 'create_date'], 'string', 'max' => 45],
            [['file_name', 'real_filename'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'upload_id' => Yii::t('app', 'Upload ID'),
            'ref' => Yii::t('app', 'Ref'),
            'file_name' => Yii::t('app', 'File Name'),
            'real_filename' => Yii::t('app', 'Real Filename'),
            'create_date' => Yii::t('app', 'Create Date'),
        ];
    }
}
