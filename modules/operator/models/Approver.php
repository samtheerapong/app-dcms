<?php

namespace app\modules\operator\models;

use Yii;

/**
 * This is the model class for table "approver".
 *
 * @property int $id
 * @property int|null $requester_id เอกสารที่ร้องขอ
 * @property int|null $approver_by อนุมัติโดย
 * @property string|null $approver_at อนุมัติเมื่อ
 * @property string|null $approver_comment ความคิดเห็นของผู้อนุมัติ
 *
 * @property Requester $requester
 */
class Approver extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'approver';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['requester_id', 'approver_by'], 'integer'],
            [['approver_comment'], 'string'],
            [['approver_at'], 'string', 'max' => 45],
            [['requester_id'], 'exist', 'skipOnError' => true, 'targetClass' => Requester::className(), 'targetAttribute' => ['requester_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'requester_id' => Yii::t('app', 'เอกสารที่ร้องขอ'),
            'approver_by' => Yii::t('app', 'อนุมัติโดย'),
            'approver_at' => Yii::t('app', 'อนุมัติเมื่อ'),
            'approver_comment' => Yii::t('app', 'ความคิดเห็นของผู้อนุมัติ'),
        ];
    }

    /**
     * Gets query for [[Requester]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getRequester()
    {
        return $this->hasOne(Requester::className(), ['id' => 'requester_id']);
    }

    public function getApproverBy()
    {
        return $this->hasOne(User::class, ['id' => 'approver_by']);
    }

    public function getReviewer()
    {
        // Assuming there is a foreign key relationship between Requester and Reviewer using requester_id
        return $this->hasOne(Reviewer::class, ['requester_id' => 'id']);
    }
  
}
