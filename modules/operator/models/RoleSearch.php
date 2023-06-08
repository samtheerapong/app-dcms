<?php

namespace app\modules\operator\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\modules\operator\models\Role;

/**
 * RoleSearch represents the model behind the search form of `app\modules\operator\models\Role`.
 */
class RoleSearch extends Role
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['role_code', 'role_name', 'role_color'], 'safe'],
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
        $query = Role::find();

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
        ]);

        $query->andFilterWhere(['like', 'role_code', $this->role_code])
            ->andFilterWhere(['like', 'role_name', $this->role_name])
            ->andFilterWhere(['like', 'role_color', $this->role_color]);

        return $dataProvider;
    }
}
