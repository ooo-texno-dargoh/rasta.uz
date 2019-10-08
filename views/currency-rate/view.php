<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\CurrencyRate */
?>
<div class="currency-rate-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'rate',
            'datatime',
            'user_id',
            'klass',
            'color',
            'status',
        ],
    ]) ?>

</div>
