<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\WherehouseGroupNames */
?>
<div class="wherehouse-group-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'wherehouse_group_id',
            'lang_id',
            'note',
            'status',
        ],
    ]) ?>

</div>
