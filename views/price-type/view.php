<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\PriceType */
?>
<div class="price-type-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'percent',
            'status',
        ],
    ]) ?>

</div>
