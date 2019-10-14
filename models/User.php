<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property int $id
 * @property string $username
 * @property string $password
 * @property string $fio
 * @property int $role
 * @property string $phone
 * @property string $phone1
 * @property int $lang_id
 * @property string $photo
 * @property string $telegram
 * @property int $is_active
 * @property int $online
 * @property int $status
 *
 * @property CurrencyRate[] $currencyRates
 * @property Orders[] $orders
 * @property Roles $role0
 * @property Lang $lang
 * @property Wherehouses[] $wherehouses
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
            [['username', 'password', 'fio', 'phone', 'phone1', 'photo', 'telegram', 'is_active', 'online'], 'required'],
            [['role', 'lang_id', 'is_active', 'online', 'status'], 'integer'],
            [['username', 'password', 'fio', 'photo', 'telegram'], 'string', 'max' => 250],
            [['phone', 'phone1'], 'string', 'max' => 100],
            [['role'], 'exist', 'skipOnError' => true, 'targetClass' => Roles::className(), 'targetAttribute' => ['role' => 'role']],
            [['lang_id'], 'exist', 'skipOnError' => true, 'targetClass' => Lang::className(), 'targetAttribute' => ['lang_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => 'Username',
            'password' => 'Password',
            'fio' => 'Fio',
            'role' => 'Role',
            'phone' => 'Phone',
            'phone1' => 'Phone1',
            'lang_id' => 'Lang ID',
            'photo' => 'Photo',
            'telegram' => 'Telegram',
            'is_active' => 'Is Active',
            'online' => 'Online',
            'status' => 'Status',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCurrencyRates()
    {
        return $this->hasMany(CurrencyRate::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOrders()
    {
        return $this->hasMany(Orders::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRole0()
    {
        return $this->hasOne(Roles::className(), ['role' => 'role']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLang()
    {
        return $this->hasOne(Lang::className(), ['id' => 'lang_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getWherehouses()
    {
        return $this->hasMany(Wherehouses::className(), ['user_id' => 'id']);
    }
}
