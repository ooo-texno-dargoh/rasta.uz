<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\OrderTypeNames;

/**
 * OrderTypeNamesSearch represents the model behind the search form about `app\models\OrderTypeNames`.
 */
class OrderTypeNamesSearch extends OrderTypeNames
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'lang_id', 'order_type_id', 'status'], 'integer'],
            [['name', 'note'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = OrderTypeNames::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'lang_id' => $this->lang_id,
            'order_type_id' => $this->order_type_id,
            'status' => $this->status,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'note', $this->note]);

        return $dataProvider;
    }
}
