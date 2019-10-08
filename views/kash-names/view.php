<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\KashNames */
?>
<div class="kash-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'kash_id',
            'name',
            'lang_id',
            'adress',
            'status',
        ],
    ]) ?>

</div>
