<?php

namespace app\modules\operator\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property int $id
 * @property string $username
 * @property string $email
 * @property int|null $updated
 * @property int|null $deleted
 * @property int|null $department
 * @property int|null $request
 * @property int|null $review
 * @property int|null $approve
 * @property string $password_hash
 * @property string $auth_key
 * @property int|null $confirmed_at
 * @property string|null $unconfirmed_email
 * @property int|null $blocked_at
 * @property string|null $registration_ip
 * @property int $created_at
 * @property int $updated_at
 * @property int $flags
 * @property int|null $last_login_at
 * @property int|null $status
 *
 * @property Departments[] $departments
 * @property Profile $profile
 * @property Requester[] $requesters
 * @property Reviewer[] $reviewers
 * @property SocialAccount[] $socialAccounts
 * @property Token[] $tokens
 */
class User extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['username', 'email', 'password_hash', 'auth_key', 'created_at', 'updated_at'], 'required'],
            [['updated', 'deleted', 'request', 'review', 'approve', 'confirmed_at', 'blocked_at', 'created_at', 'updated_at', 'flags', 'last_login_at', 'status','role1','role2','role3'], 'integer'],
            [['username', 'email', 'unconfirmed_email'], 'string', 'max' => 255],
            [['password_hash'], 'string', 'max' => 60],
            [['auth_key'], 'string', 'max' => 32],
            [['registration_ip'], 'string', 'max' => 45],
            [['username'], 'unique'],
            [['email'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'username' => Yii::t('app', 'Username'),
            'email' => Yii::t('app', 'Email'),
            'role' => Yii::t('app', 'Role'),
            'updated' => Yii::t('app', 'Updated'),
            'deleted' => Yii::t('app', 'Deleted'),
            'role1' => Yii::t('app', 'Role 1'),
            'role2' => Yii::t('app', 'Role 2'),
            'role3' => Yii::t('app', 'Role 3'),
            'request' => Yii::t('app', 'Request'),
            'review' => Yii::t('app', 'Review'),
            'approve' => Yii::t('app', 'Approve'),
            'password_hash' => Yii::t('app', 'Password Hash'),
            'auth_key' => Yii::t('app', 'Auth Key'),
            'confirmed_at' => Yii::t('app', 'Confirmed At'),
            'unconfirmed_email' => Yii::t('app', 'Unconfirmed Email'),
            'blocked_at' => Yii::t('app', 'Blocked At'),
            'registration_ip' => Yii::t('app', 'Registration Ip'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'flags' => Yii::t('app', 'Flags'),
            'last_login_at' => Yii::t('app', 'Last Login At'),
            'status' => Yii::t('app', 'Status'),
        ];
    }

    /**
     * Gets query for [[Role]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getRole01()
    {
        return $this->hasOne(Departments::class, ['id' => 'role1']);
    }

    /**
     * Gets query for [[Role]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getRole02()
    {
        return $this->hasOne(Departments::class, ['id' => 'role2']);
    }

    /**
     * Gets query for [[Role]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getRole03()
    {
        return $this->hasOne(Departments::class, ['id' => 'role3']);
    }


    /**
     * Gets query for [[Profile]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProfile()
    {
        return $this->hasOne(Profile::className(), ['user_id' => 'id']);
    }

    /**
     * Gets query for [[Requesters]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getRequesters()
    {
        return $this->hasMany(Requester::className(), ['request_by' => 'id']);
    }

    /**
     * Gets query for [[Reviewers]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getReviewers()
    {
        return $this->hasMany(Reviewer::className(), ['reviewer_name' => 'id']);
    }

    /**
     * Gets query for [[SocialAccounts]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSocialAccounts()
    {
        return $this->hasMany(SocialAccount::className(), ['user_id' => 'id']);
    }

    /**
     * Gets query for [[Tokens]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTokens()
    {
        return $this->hasMany(Token::className(), ['user_id' => 'id']);
    }

}
