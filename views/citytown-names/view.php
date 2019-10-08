<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\CitytownNames */
?>
<div class="citytown-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'lang_id',
            'status',
        ],
    ]) ?>

</div>
