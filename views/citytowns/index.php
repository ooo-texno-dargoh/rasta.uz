<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\search\CitytownsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Citytowns';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="citytowns-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Citytowns', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'code',
            'status',
            'region_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
