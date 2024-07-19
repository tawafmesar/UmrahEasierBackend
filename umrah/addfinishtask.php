<?php 

include "../connect.php" ; 


$numberOfumrah = filterRequest("numberOfumrah") ; 
$umrah_rukn_id	 = filterRequest("umrah_rukn_id") ; 
$usersid = filterRequest("usersid") ; 


$data = array(
    "numberOfumrah"  =>   $numberOfumrah , 
    "umrah_rukn_id"  =>   $umrah_rukn_id,
     "user_id"  =>   $usersid

);


insertData("umrahtask" ,$data) ; 
