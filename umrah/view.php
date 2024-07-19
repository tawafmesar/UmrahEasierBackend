<?php


include "../connect.php";

$userid = filterRequest("usersid");



// $stmt = $con->prepare("SELECT * FROM `umrahdone` WHERE umrahdone_user_id =  $userid  )");

// $stmt->execute();
// $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
// $count  = $stmt->rowCount();

// if ($count > 0) {
//     echo json_encode(array("status" => "success", "data" => $data));
// } else {
//     echo json_encode(array("status" => "failure"));
// }

$userid = filterRequest("usersid");


getAllData("umrahdone", "umrahdone_user_id = ?  ", array($userid));
