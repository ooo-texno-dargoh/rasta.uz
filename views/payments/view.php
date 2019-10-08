<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Payments */
?>
<div class="payments-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'order_id',
            'payment_type_id',
            'sum',
            'datetime',
            'status',
        ],
    ]) ?>

</div>
