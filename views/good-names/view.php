<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\GoodNames */
?>
<div class="good-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'shortname',
            'body:ntext',
            'lang_id',
            'good_id',
            'status',
        ],
    ]) ?>

</div>
