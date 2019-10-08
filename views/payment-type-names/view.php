<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\PaymentTypes */
?>
<div class="payment-types-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'status',
        ],
    ]) ?>

</div>
