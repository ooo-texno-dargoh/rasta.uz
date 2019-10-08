<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\SoldGoods */
?>
<div class="sold-goods-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'order_id',
            'good_id',
            'count',
            'price',
            'unit_type_id',
            'wherehouse_id',
            'status',
        ],
    ]) ?>

</div>
