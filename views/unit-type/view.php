<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\UnitType */
?>
<div class="unit-type-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'status',
        ],
    ]) ?>

</div>
