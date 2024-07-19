<?php


include "../connect.php";

$numberOfumrah = filterRequest("numberOfumrah");
$umrah_rukn_id = filterRequest("umrah_rukn_id");
$user_id = filterRequest("user_id");




getAllData("umrahtask", "numberOfumrah = ?  AND umrah_rukn_id =  ? AND user_id = ?", array($numberOfumrah , $umrah_rukn_id ,$user_id));
