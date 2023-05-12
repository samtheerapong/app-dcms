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
public function rules()
{
    return [
        [['sales_num'], 'autonumber', 'format' => 'SA/{Y/m}/?.???'],
        ...
    ];
}

// it will set value $model->sales_num as 'SA/2019/10/0.001'


public function behaviors()
{
    return [
        [
            'class' => 'class' => 'mdm\autonumber\Behavior',
            'attribute' => 'sales_num', // required
            'value' => 'SA/{Y/m}/?.???'
        ]
    ];
}

// another usage

public function actionCreate()
{
    $model = new Sales()
    $model->load(Yii::$app->request->post());
    $model->sales_num = mdm\autonumber\AutoNumber::generate('SA/{Y/m}/?.???');
    ...
}
```
http://mdmsoft.github.io/yii2-autonumber/index.html

<hr>