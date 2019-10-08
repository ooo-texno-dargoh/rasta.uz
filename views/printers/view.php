<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Printers */
?>
<div class="printers-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'ip',
            'port',
            'host',
            'note',
            'status',
        ],
    ]) ?>

</div>
