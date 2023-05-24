# Install

```
composer update
```

<hr>

## Demo user

```
User = admin
Password = admin123456
```

<hr>

## Autonumber

```
php composer require --prefer-dist mdmsoft/yii2-autonumber "*"
```

```
yii migrate --migrationPath=@mdm/autonumber/migrations
```

```
use mdm\autonumber\AutoNumber;

 public function actionCreate()
    {
        $model = new Requester();
        $modelReviewer = new Reviewer();

        if ($model->load(Yii::$app->request->post())) {

            $model->ref = substr(Yii::$app->getSecurity()->generateRandomString(), 10);
            $this->CreateDir($model->ref);

            $model->covenant = $this->uploadSingleFile($model);
            $model->docs = $this->uploadMultipleFile($model);

            // Get format nimber Ex. FM-GR-001
            $fullname = $model->categories->category_code . '-' . $model->departments->department_code;

            if ($model->save()) {
                $modelReviewer->requester_id = $model->id;
                $modelReviewer->document_number = AutoNumber::generate($fullname . '-???'); // Set document_number @Reviewer
                $modelReviewer->save();
            }
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
            'modelReviewer' => $modelReviewer,
        ]);
    }
```

http://mdmsoft.github.io/yii2-autonumber/index.html

<hr>

"philippfrenzel/yii2fullcalendar":"3.9.0"


## format date รูปแบบวันที่   24 พ.ค. 2023
```php
[
        'attribute' => 'approver_at',
        'value' => function ($model) {
            if ($model->approver_at !== null) {
                $timestamp = strtotime($model->approver_at);
                if ($model->approver_at !== null) {
                    $timestamp = strtotime($model->approver_at);
                    $monthNames = [
                        'ม.ค.', 'ก.พ.', 'มี.ค.', 'เม.ย.',
                        'พ.ค.', 'มิ.ย.', 'ก.ค.', 'ส.ค.',
                        'ก.ย.', 'ต.ค.', 'พ.ย.', 'ธ.ค.'
                    ];
                    $day = date('d', $timestamp);
                    $month = $monthNames[date('n', $timestamp) - 1];
                    $year = date('Y', $timestamp);
                    return "$day $month $year";
                } else {
                    return '';
                }
            }
        },
        'filter' => DatePicker::widget([
            'model' => $searchModel,
            'attribute' => 'approver_at',
            'options' => ['placeholder' => Yii::t('app', 'Select...')],
            'pluginOptions' => [
                'format' => 'yyyy-mm-dd',
                'autoclose' => true,
            ]
        ]),
    ],
```
