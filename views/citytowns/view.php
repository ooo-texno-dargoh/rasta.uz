<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Citytowns */
?>
<div class="citytowns-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'code',
            'status',
            'region_id',
        ],
    ]) ?>

</div>
