<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\WherehouseGroups */
?>
<div class="wherehouse-groups-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'adress',
            'status',
        ],
    ]) ?>

</div>
