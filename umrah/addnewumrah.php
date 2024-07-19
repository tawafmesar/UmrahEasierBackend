<?php 

include "../connect.php" ; 


$usersid = filterRequest("usersid") ; 


$data = array(
     "umrahdone_status"  =>  1 , 
    "umrahdone_user_id"  =>   $usersid , 
);


insertData("umrahdone" ,$data) ; 
