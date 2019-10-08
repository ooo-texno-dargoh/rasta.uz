<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Goods */
?>
<div class="goods-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'weight',
            'unit_type_id',
            'count_in_case',
            'category_id',
            'brend_id',
            'factory_id',
            'min_count',
            'status',
            'data_time',
        ],
    ]) ?>

</div>
