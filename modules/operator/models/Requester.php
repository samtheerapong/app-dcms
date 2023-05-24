<?php

namespace app\modules\operator\models;

use Yii;
use yii\behaviors\TimestampBehavior;
use yii\behaviors\BlameableBehavior;
use yii\db\BaseActiveRecord;

//
use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\Json;

class Requester extends \yii\db\ActiveRecord
{

    const UPLOAD_FOLDER = 'documents';  // Create folder web/documents/

    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::class,
                'value' => function () {
                    return date('Y-m-d H:i:s');
                },
            ],
            [
                'class' => BlameableBehavior::class,
                'attributes' => [
                    BaseActiveRecord::EVENT_BEFORE_INSERT => ['request_by','created_by','updated_by'],
                    BaseActiveRecord::EVENT_BEFORE_UPDATE => ['updated_by'],
                ],
            ],
        ];
    }

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
            [['types_id', 'categories_id', 'departments_id', 'document_title','latest_rev','document_public_at'], 'required'],
            [['created_at', 'updated_at', 'document_public_at'], 'string', 'max' => 45],
            [['types_id', 'created_by', 'updated_by', 'request_by', 'categories_id', 'departments_id'], 'integer'],
            [['details', 'fullname'], 'string'],
            [['latest_rev', 'document_age'], 'number'],
            [['document_title', 'fullname', 'ref', 'document_number', 'type_details'], 'string', 'max' => 255],
            [['categories_id'], 'exist', 'skipOnError' => true, 'targetClass' => Categories::class, 'targetAttribute' => ['categories_id' => 'id']],
            [['departments_id'], 'exist', 'skipOnError' => true, 'targetClass' => Departments::class, 'targetAttribute' => ['departments_id' => 'id']],
            [['status_id'], 'exist', 'skipOnError' => true, 'targetClass' => Status::class, 'targetAttribute' => ['status_id' => 'id']],
            [['types_id'], 'exist', 'skipOnError' => true, 'targetClass' => Types::class, 'targetAttribute' => ['types_id' => 'id']],
            [['request_by'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['request_by' => 'id']],
            [['covenant'], 'file', 'maxFiles' => 1, 'skipOnEmpty' => true],
            [['docs'], 'file', 'maxFiles' => 10, 'skipOnEmpty' => true],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    { 
        return [
            'id' => Yii::t('app', 'ID'),
            'types_id' => Yii::t('app', 'types_id'),
            'type_details' => Yii::t('app', 'type_details'),
            'status_id' => Yii::t('app', 'status_id'),
            'created_at' => Yii::t('app', 'created_at'),
            'updated_at' => Yii::t('app', 'updated_at'),
            'created_by' => Yii::t('app', 'created_by'),
            'updated_by' => Yii::t('app', 'updated_by'),
            'request_by' => Yii::t('app', 'request_by'),
            'categories_id' => Yii::t('app', 'categories_id'),
            'departments_id' => Yii::t('app', 'departments_id'),
            'document_number' => Yii::t('app', 'document_number'),
            'latest_rev' => Yii::t('app', 'latest_rev'),
            'document_age' => Yii::t('app', 'document_age'),
            'document_public_at' => Yii::t('app', 'document_public_at'),
            'document_title' => Yii::t('app', 'document_title'),
            'details' => Yii::t('app', 'details'),
            'ref' => Yii::t('app', 'ref'),
            'fullname' => Yii::t('app', 'fullname'),
            'covenant' => Yii::t('app', 'covenant'),
            'docs' => Yii::t('app', 'docs'),
        ];
    }

    /****************  Relation   ********************/
    public function getCategories()
    {
        return $this->hasOne(Categories::class, ['id' => 'categories_id']);
    }

    public function getDepartments()
    {
        return $this->hasOne(Departments::class, ['id' => 'departments_id']);
    }

    public function getStatus()
    {
        return $this->hasOne(Status::class, ['id' => 'status_id']);
    }

    public function getTypes()
    {
        return $this->hasOne(Types::class, ['id' => 'types_id']);
    }

    public function getRequestBy()
    {
        return $this->hasOne(User::class, ['id' => 'request_by']);
    }

    public function getProfileName()
    {
        return $this->requestBy->profile->name;
    }

    public function getCreatedBy()
    {
        return $this->hasOne(User::class, ['id' => 'created_by']);
    }

    public function getUpdatedBy()
    {
        return $this->hasOne(User::class, ['id' => 'updated_by']);
    }

    public function getReviewer()
    {
        // Assuming there is a foreign key relationship between Requester and Reviewer using requester_id
        return $this->hasOne(Reviewer::class, ['requester_id' => 'id']);
    }

    /**************** Upload docs ********************/
    public static function getUploadPath()
    {
        return Yii::getAlias('@webroot') . '/' . self::UPLOAD_FOLDER . '/';
    }

    public static function getUploadUrl()
    {
        return Url::base(true) . '/' . self::UPLOAD_FOLDER . '/';
    }

    public function listDownloadFiles($type)
    {
        $docs_file = '';
        if (in_array($type, ['docs', 'covenant'])) {
            $data = $type === 'docs' ? $this->docs : $this->covenant;
            $files = Json::decode($data);
            if (is_array($files)) {
                $docs_file = '<ul>';
                foreach ($files as $key => $value) {
                    if (strpos($value, '.jpg') !== false || strpos($value, '.jpeg') !== false || strpos($value, '.png') !== false || strpos($value, '.gif') !== false) {
                        $thumbnail = Html::img(['/operator/requester/download', 'id' => $this->id, 'file' => $key, 'fullname' => $value], ['class' => 'img-thumbnail', 'alt' => 'Image', 'style' => 'width: 150px']);
                        $fullSize = Html::a($thumbnail, ['/operator/requester/download', 'id' => $this->id, 'file' => $key, 'fullname' => $value], ['target' => '_blank']);
                        $docs_file .= '<li>' . $fullSize . '</li>';
                    } else {
                        $docs_file .= '<li>' . Html::a($value, ['/operator/requester/download', 'id' => $this->id, 'file' => $key, 'fullname' => $value]) . '</li>';
                    }
                }
                $docs_file .= '</ul>';
            }
        }

        return $docs_file;
    }



    public function isImage($filePath)
    {
        return @is_array(getimagesize($filePath)) ? true : false;
    }


    public function initialPreview($data, $field, $type = 'file')
    {
        $initial = [];
        $files = Json::decode($data);
        if (is_array($files)) {
            foreach ($files as $key => $value) {
                $filePath = self::getUploadUrl() . $this->ref . '/' . $value;
                $filePathDownload = self::getUploadUrl() . $this->ref . '/' . $value;
    
                $isImage = $this->isImage($filePath);
    
                if ($type == 'file') {
                    $initial[] = "<div class='file-preview-other'><h2><i class='glyphicon glyphicon-file'></i></h2></div>";
                } elseif ($type == 'config') {
                    $initial[] = [
                        'caption' => $value,
                        'width'  => '120px',
                        'url'    => Url::to(['requester/deletefile', 'id' => $this->id, 'fileName' => $key, 'field' => $field]),
                        'key'    => $key
                    ];
                } else {
                    if ($isImage) {
                        $file = Html::img($filePath, ['class' => 'file-preview-image', 'alt' => $this->file_name, 'title' => $this->file_name]);
                    } else {
                        $file = Html::a('View File', $filePathDownload, ['target' => '_blank']);
                    }
                    $initial[] = $file;
                }
            }
        }
        return $initial;
    }


    // public function initialPreview($data, $field, $type = 'file')
    // {
    //     $initial = [];
    //     $files = Json::decode($data);
    //     if (is_array($files)) {
    //         foreach ($files as $key => $value) {
    //             if ($type == 'file') {
    //                 $initial[] = "<div class='file-preview-other'><h2><i class='glyphicon glyphicon-file'></i></h2></div>";
    //             } elseif ($type == 'config') {
    //                 $initial[] = [
    //                     'caption' => $value,
    //                     'width'  => '120px',
    //                     'url'    => Url::to(['requester/deletefile', 'id' => $this->id, 'fileName' => $key, 'field' => $field]),
    //                     'key'    => $key
    //                 ];
    //             } else {
    //                 $initial[] = Html::img(self::getUploadUrl() . $this->ref . '/' . $value, ['class' => 'file-preview-image', 'alt' => $model->file_name, 'title' => $model->file_name]);
    //             }
    //         }
    //     }
    //     return $initial;
    // }
}
