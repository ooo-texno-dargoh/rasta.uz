<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\PriceTypeNames */
?>
<div class="price-type-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'price_type_id',
            'lang_id',
            'status',
        ],
    ]) ?>

</div>
