<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "citytown_names".
 *
 * @property int $id
 * @property int $name
 * @property int $lang_id
 * @property int $status
 *
 * @property Citytowns $lang
 */
class CitytownNames extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'citytown_names';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['name', 'lang_id', 'status'], 'integer'],
            [['lang_id'], 'exist', 'skipOnError' => true, 'targetClass' => Citytowns::className(), 'targetAttribute' => ['lang_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'lang_id' => 'Lang ID',
            'status' => 'Status',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLang()
    {
        return $this->hasOne(Citytowns::className(), ['id' => 'lang_id']);
    }
}
