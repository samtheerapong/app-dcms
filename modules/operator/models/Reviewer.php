<?php

namespace app\modules\operator\models;

use Yii;

/**
 * This is the model class for table "reviewer".
 *
 * @property int $id
 * @property int|null $requester_id เอกสารที่ร้องขอ
 * @property int|null $reviewer_name ทบทวนโดย
 * @property string|null $reviewer_at ทบทวนเมื่อ
 * @property string|null $document_number เลขที่เอกสาร
 * @property float|null $document_revision แก้ไขครั้งที่
 * @property float|null $document_age อายุของเอกสาร
 * @property string|null $document_public_at วันที่ประกาศใช้
 * @property int|null $stamps_id ประทับตรา
 * @property string|null $document_ref เอกสารอ้างอิง
 * @property string|null $document_tags #tag
 * @property int|null $points_id จุดรับเอกสาร
 * @property string|null $reviewer_comment ความคิดเห็นของผู้ทบทวน
 * @property string|null $additional_training การอบรมเพิ่มเติม
 *
 * @property Approver[] $approvers
 * @property Points $points
 * @property Requester $requester
 * @property Stamps $stamps
 * @property User $reviewerName
 */
class Reviewer extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'reviewer';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['requester_id', 'reviewer_name', 'stamps_id', 'points_id'], 'integer'],
            [['document_revision', 'document_age'], 'number'],
            [['reviewer_comment', 'additional_training'], 'string'],
            [['reviewer_at', 'document_number', 'document_public_at'], 'string', 'max' => 45],
            [['document_ref', 'document_tags'], 'string', 'max' => 255],
            [['points_id'], 'exist', 'skipOnError' => true, 'targetClass' => Points::className(), 'targetAttribute' => ['points_id' => 'id']],
            [['requester_id'], 'exist', 'skipOnError' => true, 'targetClass' => Requester::className(), 'targetAttribute' => ['requester_id' => 'id']],
            [['stamps_id'], 'exist', 'skipOnError' => true, 'targetClass' => Stamps::className(), 'targetAttribute' => ['stamps_id' => 'id']],
            [['reviewer_name'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['reviewer_name' => 'id']],
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
            'reviewer_name' => Yii::t('app', 'ทบทวนโดย'),
            'reviewer_at' => Yii::t('app', 'ทบทวนเมื่อ'),
            'document_number' => Yii::t('app', 'เลขที่เอกสาร'),
            'document_revision' => Yii::t('app', 'แก้ไขครั้งที่'),
            'document_age' => Yii::t('app', 'อายุของเอกสาร'),
            'document_public_at' => Yii::t('app', 'วันที่ประกาศใช้'),
            'stamps_id' => Yii::t('app', 'ประทับตรา'),
            'document_ref' => Yii::t('app', 'เอกสารอ้างอิง'),
            'document_tags' => Yii::t('app', '#tag'),
            'points_id' => Yii::t('app', 'จุดรับเอกสาร'),
            'reviewer_comment' => Yii::t('app', 'ความคิดเห็นของผู้ทบทวน'),
            'additional_training' => Yii::t('app', 'การอบรมเพิ่มเติม'),
        ];
    }

    /**
     * Gets query for [[Approvers]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getApprovers()
    {
        return $this->hasMany(Approver::className(), ['reviewer_id' => 'id']);
    }

    /**
     * Gets query for [[Points]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPoints()
    {
        return $this->hasOne(Points::className(), ['id' => 'points_id']);
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

    /**
     * Gets query for [[Stamps]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getStamps()
    {
        return $this->hasOne(Stamps::className(), ['id' => 'stamps_id']);
    }

    /**
     * Gets query for [[ReviewerName]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getReviewerName()
    {
        return $this->hasOne(User::className(), ['id' => 'reviewer_name']);
    }
}
