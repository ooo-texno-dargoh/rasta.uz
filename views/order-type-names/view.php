<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\OrderTypeNames */
?>
<div class="order-type-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'note',
            'lang_id',
            'order_type_id',
            'status',
        ],
    ]) ?>

</div>
