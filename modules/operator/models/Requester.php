<?php

namespace app\modules\operator\models;

use Yii;

/**
 * This is the model class for table "requester".
 *
 * @property int $id
 * @property int|null $types_id ประเภทการร้องขอ
 * @property int|null $status_id สถานะ
 * @property int|null $created_at สร้างเมื่อ
 * @property int|null $updated_at ปรับปรุงล่าสุดเมื่อ
 * @property int|null $created_by สร้างโดย
 * @property int|null $updated_by ปรับปรุงโดย
 * @property int|null $request_by จัดทำโดย
 * @property int|null $categories_id ระดับเอกสาร
 * @property int|null $departments_id แผนกที่รับผิดชอบ
 * @property string|null $document_title เรื่อง
 * @property string|null $details รายละเอียดเอกสาร
 * @property string|null $pdf_file แนบไฟล์  PDF
 * @property string|null $docs_file แนบไฟล์ Docs
 *
 * @property Categories $categories
 * @property Departments $departments
 * @property Status $status
 * @property Types $types
 * @property User $requestBy
 * @property Reviewer[] $reviewers
 */
class Requester extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'requester';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['types_id', 'status_id', 'created_at', 'updated_at', 'created_by', 'updated_by', 'request_by', 'categories_id', 'departments_id'], 'integer'],
            [['details'], 'string'],
            [['document_title'], 'string', 'max' => 255],
            [['categories_id'], 'exist', 'skipOnError' => true, 'targetClass' => Categories::className(), 'targetAttribute' => ['categories_id' => 'id']],
            [['departments_id'], 'exist', 'skipOnError' => true, 'targetClass' => Departments::className(), 'targetAttribute' => ['departments_id' => 'id']],
            [['status_id'], 'exist', 'skipOnError' => true, 'targetClass' => Status::className(), 'targetAttribute' => ['status_id' => 'id']],
            [['types_id'], 'exist', 'skipOnError' => true, 'targetClass' => Types::className(), 'targetAttribute' => ['types_id' => 'id']],
            [['request_by'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['request_by' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'types_id' => Yii::t('app', 'ประเภทการร้องขอ'),
            'status_id' => Yii::t('app', 'สถานะ'),
            'created_at' => Yii::t('app', 'สร้างเมื่อ'),
            'updated_at' => Yii::t('app', 'ปรับปรุงล่าสุดเมื่อ'),
            'created_by' => Yii::t('app', 'สร้างโดย'),
            'updated_by' => Yii::t('app', 'ปรับปรุงโดย'),
            'request_by' => Yii::t('app', 'จัดทำโดย'),
            'categories_id' => Yii::t('app', 'ระดับเอกสาร'),
            'departments_id' => Yii::t('app', 'แผนกที่รับผิดชอบ'),
            'document_title' => Yii::t('app', 'เรื่อง'),
            'details' => Yii::t('app', 'รายละเอียดเอกสาร'),
            'pdf_file' => Yii::t('app', 'แนบไฟล์  PDF'),
            'docs_file' => Yii::t('app', 'แนบไฟล์ Docs'),
        ];
    }

    public function getCategories()
    {
        return $this->hasOne(Categories::className(), ['id' => 'categories_id']);
    }

    public function getDepartments()
    {
        return $this->hasOne(Departments::className(), ['id' => 'departments_id']);
    }

    public function getStatus()
    {
        return $this->hasOne(Status::className(), ['id' => 'status_id']);
    }

    public function getTypes()
    {
        return $this->hasOne(Types::className(), ['id' => 'types_id']);
    }

    public function getRequestBy()
    {
        return $this->hasOne(User::className(), ['id' => 'request_by']);
    }

    public function getReviewers()
    {
        return $this->hasMany(Reviewer::className(), ['requester_id' => 'id']);
    }

    public function getCreatedBy()
    {
        return $this->hasOne(User::className(), ['id' => 'created_by']);
    }

    public function getUpdatedBy()
    {
        return $this->hasOne(User::className(), ['id' => 'updated_by']);
    }

    public function getProfileName()
    {
        return $this->requestBy->profile->name;
    }
}
