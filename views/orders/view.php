<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Orders */
?>
<div class="orders-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'datetime',
            'user_id',
            'client_id',
            'kash_id',
            'total_sum',
            'nds',
            'discount',
            'order_type_id',
            'good_types_count',
            'goods_count',
            'status',
        ],
    ]) ?>

</div>
