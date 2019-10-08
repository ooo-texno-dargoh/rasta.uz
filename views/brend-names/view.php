<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\BrendNames */
?>
<div class="brend-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'brend_id',
            'lang_id',
            'status',
        ],
    ]) ?>

</div>
