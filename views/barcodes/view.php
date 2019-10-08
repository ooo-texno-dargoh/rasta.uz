<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Barcodes */
?>
<div class="barcodes-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'barcode',
            'good_id',
            'status',
        ],
    ]) ?>

</div>
