<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Wherehouses */
?>
<div class="wherehouses-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'good_id',
            'seriya',
            'count',
            'wherehouse_group_id',
            'expiry_date',
            'add_date',
            'user_id',
            'client_id',
            'retail_price',
            'base_price',
            'wholesale_price',
            'retail_dallor',
            'base_dallor',
            'wholesale_dallor',
            'status',
        ],
    ]) ?>

</div>
