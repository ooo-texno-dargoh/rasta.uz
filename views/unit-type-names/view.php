<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\UnitTypeNames */
?>
<div class="unit-type-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'lang_id',
            'name',
            'unit_type_id',
            'status',
        ],
    ]) ?>

</div>
