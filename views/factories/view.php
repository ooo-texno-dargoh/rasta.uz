<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Factories */
?>
<div class="factories-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'region_id',
            'citytown_id',
            'status',
        ],
    ]) ?>

</div>
