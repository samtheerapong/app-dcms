<?php

namespace app\modules\operator\models;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;
use yii\db\BaseActiveRecord;

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

    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::class,
                'attributes' => [
                    // self::EVENT_BEFORE_INSERT => ['reviewer_at'],
                    self::EVENT_BEFORE_UPDATE => ['reviewer_at'],
                ],
                'value' => function () {
                    return date('Y-m-d H:i:s');
                },
            ],
            [
                'class' => BlameableBehavior::class,
                'attributes' => [
                    // BaseActiveRecord::EVENT_BEFORE_INSERT => ['reviewer_name'],
                    BaseActiveRecord::EVENT_BEFORE_UPDATE => ['reviewer_name'],
                ],
            ],
        ];
    }


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
            [['requester_id', 'reviewer_name', 'points_id'], 'integer'],
            [['document_revision'], 'number'],
            [['reviewer_comment', 'additional_training'], 'string'],
            [['reviewer_at'], 'string', 'max' => 45],
            [['document_ref', 'document_tags'], 'string', 'max' => 255],
            [['points_id'], 'exist', 'skipOnError' => true, 'targetClass' => Points::class, 'targetAttribute' => ['points_id' => 'id']],
            [['requester_id'], 'exist', 'skipOnError' => true, 'targetClass' => Requester::class, 'targetAttribute' => ['requester_id' => 'id']],
            [['reviewer_name'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['reviewer_name' => 'id']],
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
            'reviewer_name' => Yii::t('app', 'reviewer_name'),
            'reviewer_at' => Yii::t('app', 'reviewer_at'),
            'document_revision' => Yii::t('app', 'document_revision'),
            'document_ref' => Yii::t('app', 'document_ref'),
            'document_tags' => Yii::t('app', 'document_tags'),
            'points_id' => Yii::t('app', 'points_id'),
            'reviewer_comment' => Yii::t('app', 'reviewer_comment'),
            'additional_training' => Yii::t('app', 'additional_training'),
            //
            'categories_id' => Yii::t('app', 'categories_id'),
            'reviewerName.profile.name' => Yii::t('app', 'reviewerName.profile.name'),
            'approverName.profile.name' => Yii::t('app', 'approverName.profile.name'),
        ];
    }

    public function getPoints()
    {
        return $this->hasOne(Points::class, ['id' => 'points_id']);
    }

    public function getRequester()
    {
        return $this->hasOne(Requester::class, ['id' => 'requester_id']);
    }

    public function getReviewerName()
    {
        return $this->hasOne(User::class, ['id' => 'reviewer_name']);
    }

    public function getApproverName()
    {
        return $this->hasOne(User::class, ['id' => 'approver_by']);
    }


   
}
