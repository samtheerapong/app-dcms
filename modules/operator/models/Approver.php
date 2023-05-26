<?php

namespace app\modules\operator\models;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;
use yii\db\BaseActiveRecord;

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

    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::class,
                'attributes' => [
                    BaseActiveRecord::EVENT_BEFORE_UPDATE => ['approver_at'],
                ],
                'value' => function () {
                    return date('Y-m-d H:i:s');
                },
            ],
            [
                'class' => BlameableBehavior::class,
                'attributes' => [
                    BaseActiveRecord::EVENT_BEFORE_UPDATE => ['approver_by'],
                ],
            ],
        ];
    }


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
            'requester_id' => Yii::t('app', 'requester_id'),
            'approver_by' => Yii::t('app', 'approver_by'),
            'approver_at' => Yii::t('app', 'approver_at'),
            'approver_comment' => Yii::t('app', 'approver_comment'),
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

    // public function getApproverName()
    // {
    //     // Assuming there is a foreign key relationship between Requester and Reviewer using requester_id
    //     return $this->hasOne(Reviewer::class, ['requester_id' => 'id']);
    // }

}
