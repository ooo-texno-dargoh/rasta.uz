<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\GoodFotos */
?>
<div class="good-fotos-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'url:url',
            'good_id',
            'status',
        ],
    ]) ?>

</div>
