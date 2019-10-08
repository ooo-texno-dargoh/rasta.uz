<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Barcodes;

/**
 * BarcodesSearch represents the model behind the search form about `app\models\Barcodes`.
 */
class BarcodesSearch extends Barcodes
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'good_id', 'status'], 'integer'],
            [['barcode'], 'safe'],
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
        $query = Barcodes::find();

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
            'status' => $this->status,
        ]);

        $query->andFilterWhere(['like', 'barcode', $this->barcode]);

        return $dataProvider;
    }
}
