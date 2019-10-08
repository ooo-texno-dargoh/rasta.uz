<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\CurrencyRate;

/**
 * CurrencyRateSearch represents the model behind the search form about `app\models\CurrencyRate`.
 */
class CurrencyRateSearch extends CurrencyRate
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'user_id', 'status'], 'integer'],
            [['rate'], 'number'],
            [['datatime', 'klass', 'color'], 'safe'],
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
        $query = CurrencyRate::find();

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
            'rate' => $this->rate,
            'datatime' => $this->datatime,
            'user_id' => $this->user_id,
            'status' => $this->status,
        ]);

        $query->andFilterWhere(['like', 'klass', $this->klass])
            ->andFilterWhere(['like', 'color', $this->color]);

        return $dataProvider;
    }
}
