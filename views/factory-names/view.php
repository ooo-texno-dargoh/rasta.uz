<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\FactoryNames */
?>
<div class="factory-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'lang_id',
            'adress',
            'factory_id',
            'status',
        ],
    ]) ?>

</div>
