<?php

namespace app\modules\operator\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\modules\operator\models\Approver;

/**
 * ApproverSearch represents the model behind the search form of `app\modules\operator\models\Approver`.
 */
class ApproverSearch extends Approver
{

    // **************** เพิ่ม  1 ********************
    public $status_id;
    public $document_number;
    public $latest_rev;
    public $request_by;


    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'requester_id', 'approver_by'], 'integer'],
            [['approver_at', 'approver_comment', 'document_number'], 'safe'],
            [['status_id', 'latest_rev', 'request_by'], 'integer'], // **************** เพิ่ม  2 ********************
            [['latest_rev'], 'number'], // **************** เพิ่ม  2 ********************
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
        // $query = Approver::find();
        // **************** เพิ่ม  3 ********************
        $query = Approver::find()->joinWith('requester.status')->andFilterWhere(['status.id' => [3, 4]]);



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

        // **************** เพิ่ม  4 ********************
        $query->andFilterWhere(['status.id' => $this->status_id]);
        $query->andFilterWhere(['requester.request_by' => $this->request_by]);
        $query->andFilterWhere(['like', 'requester.document_number', $this->document_number]);
        $query->andFilterWhere(['like', 'requester.latest_rev', $this->latest_rev]);

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'requester_id' => $this->requester_id,
            'approver_by' => $this->approver_by,
        ]);

        $query->andFilterWhere(['like', 'approver_at', $this->approver_at])
            ->andFilterWhere(['like', 'approver_comment', $this->approver_comment]);

        return $dataProvider;
    }
}
