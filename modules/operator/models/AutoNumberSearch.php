<?php

namespace app\modules\operator\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\modules\operator\models\AutoNumber;

/**
 * AutoNumberSearch represents the model behind the search form of `app\modules\operator\models\AutoNumber`.
 */
class AutoNumberSearch extends AutoNumber
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['group'], 'safe'],
            [['number', 'optimistic_lock', 'update_time'], 'integer'],
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
        $query = AutoNumber::find();

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
            'number' => $this->number,
            'optimistic_lock' => $this->optimistic_lock,
            'update_time' => $this->update_time,
        ]);

        $query->andFilterWhere(['like', 'group', $this->group]);

        return $dataProvider;
    }
}
