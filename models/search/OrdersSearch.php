<?php

namespace app\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Orders;

/**
 * OrdersSearch represents the model behind the search form of `app\models\Orders`.
 */
class OrdersSearch extends Orders
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'user_id', 'client_id', 'kash_id', 'order_type_id', 'good_types_count', 'goods_count', 'status'], 'integer'],
            [['datetime'], 'safe'],
            [['total_sum', 'nds', 'discount'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
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
        $query = Orders::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'datetime' => $this->datetime,
            'user_id' => $this->user_id,
            'client_id' => $this->client_id,
            'kash_id' => $this->kash_id,
            'total_sum' => $this->total_sum,
            'nds' => $this->nds,
            'discount' => $this->discount,
            'order_type_id' => $this->order_type_id,
            'good_types_count' => $this->good_types_count,
            'goods_count' => $this->goods_count,
            'status' => $this->status,
        ]);

        return $dataProvider;
    }
}
