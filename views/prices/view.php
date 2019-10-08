<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Prices */
?>
<div class="prices-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'good_id',
            'price_type_id',
            'price',
            'datetime',
            'is_currency',
            'status',
        ],
    ]) ?>

</div>
