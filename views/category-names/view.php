<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\CategoryNames */
?>
<div class="category-names-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'category_id',
            'name',
            'lang_id',
            'status',
        ],
    ]) ?>

</div>
