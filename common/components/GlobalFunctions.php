<?php

use yii\web\Response;

/**
 * @param $arr
 * @param bool|true $flg
 */
function pr($arr, $flg = true)
{
    if(is_array($arr)){
            echo "<pre>";
            print_R($arr);
            echo "</pre>";
    }elseif(is_string($arr)){
        echo "<br>arr==";
        echo $arr;
        echo "</br>";
    }
    if(!$flg){
        die('arr end');
    }else{
        echo "<br><hr>";
    }
}