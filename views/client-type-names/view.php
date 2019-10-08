<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\ClientTypeNames */
?>
<div class="client-type-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'client_type_id',
            'name',
            'lang_id',
            'status',
        ],
    ]) ?>

</div>
