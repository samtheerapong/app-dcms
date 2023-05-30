<?php

namespace app\modules\operator\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\modules\operator\models\PrivateRequester;

/**
 * PrivateRequesterSearch represents the model behind the search form of `app\modules\operator\models\PrivateRequester`.
 */
class PrivateRequesterSearch extends PrivateRequester
{
    public $document_number;
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['latest_rev', 'document_age'], 'number'],
            [['id', 'types_id', 'status_id', 'created_by', 'updated_by', 'request_by', 'categories_id', 'departments_id'], 'integer'],
            [['document_title', 'details', 'covenant', 'docs', 'ref', 'fullname', 'created_at', 'document_number', 'document_name', 'updated_at', 'type_details', 'document_public_at'], 'safe'],
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
        $query = PrivateRequester::find();
        // $query = PrivateRequester::find()->andFilterWhere(['request_by' => Yii::$app->user->identity->profile->user_id,]);
        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => ['defaultOrder' => ['id' => SORT_DESC]],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere(['like', 'requester.document_number', $this->document_number]);


        $query->andFilterWhere([
            'id' => $this->id,
            'types_id' => $this->types_id,
            'status_id' => $this->status_id,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
            'request_by' => $this->request_by,
            'categories_id' => $this->categories_id,
            'departments_id' => $this->departments_id,
        ]);

        $query->andFilterWhere(['like', 'document_title', $this->document_title])
            ->andFilterWhere(['like', 'type_details', $this->type_details])
            ->andFilterWhere(['like', 'document_number', $this->document_number])
            ->andFilterWhere(['like', 'created_at', $this->created_at])
            ->andFilterWhere(['like', 'updated_at', $this->updated_at])
            ->andFilterWhere(['like', 'document_public_at', $this->document_public_at])
            ->andFilterWhere(['like', 'details', $this->details])
            ->andFilterWhere(['like', 'document_name', $this->document_name])
            ->andFilterWhere(['like', 'latest_rev', $this->latest_rev])
            ->andFilterWhere(['like', 'document_age', $this->document_age])
            ->andFilterWhere(['like', 'ref', $this->ref])
            ->andFilterWhere(['like', 'fullname', $this->fullname])
            ->andFilterWhere(['like', 'covenant', $this->covenant])
            ->andFilterWhere(['like', 'docs', $this->docs]);

        return $dataProvider;
    }
}
