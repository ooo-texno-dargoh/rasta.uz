<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Brends */
?>
<div class="brends-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'factory_id',
            'status',
        ],
    ]) ?>

</div>
