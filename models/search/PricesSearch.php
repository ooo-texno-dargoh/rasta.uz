<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Prices;

/**
 * PricesSearch represents the model behind the search form about `app\models\Prices`.
 */
class PricesSearch extends Prices
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'good_id', 'price_type_id', 'is_currency', 'status'], 'integer'],
            [['price'], 'number'],
            [['datetime'], 'safe'],
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
        $query = Prices::find();

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
            'good_id' => $this->good_id,
            'price_type_id' => $this->price_type_id,
            'price' => $this->price,
            'datetime' => $this->datetime,
            'is_currency' => $this->is_currency,
            'status' => $this->status,
        ]);

        return $dataProvider;
    }
}
