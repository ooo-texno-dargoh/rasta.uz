<?php

namespace app\controllers;

use app\models\Bank;
use app\models\Lang;
use app\models\User;
use Yii;
use yii\base\Model;
use yii\helpers\ArrayHelper;
use yii\web\Response;

class SozlamalarController extends \yii\web\Controller
{

    public function actionTil()
    {
        $model=Lang::find()->all();
        return $this->render('til',[
            'model'=>$model,
        ]);
    }


}