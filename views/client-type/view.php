<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\ClientType */
?>
<div class="client-type-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'status',
        ],
    ]) ?>

</div>
