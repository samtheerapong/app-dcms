<?php

namespace app\components;

use yii\base\Component;
use app\modules\operator\models\User;
use app\modules\operator\models\Requester;

class Helpers extends Component
{
    public function countUsers(){
        $count = User::find()->count();
        return $count;
    }

    public function countDocs(){
        $count = Requester::find()->count();
        return $count;
    }

    public function countProcess(){
        $count = Requester::find()->where(['status_id' => 2])->orWhere(['status_id' => 3])->orWhere(['status_id' => 1])->count();
        return $count;
    }

    public function countSuccess(){
        $count = Requester::find()->where(['status_id' => 4])->count();
        return $count;
    }

}
