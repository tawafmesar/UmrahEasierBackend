<?php 

include "../connect.php" ; 


$id = filterRequest("id") ; 


 
    $data = array("umrahdone_status" => "2") ; 

    updateData("umrahdone" , $data , "umrahdone_id = '$id'");


deleteData("umrahtask" , "numberOfumrah = $id") ; 