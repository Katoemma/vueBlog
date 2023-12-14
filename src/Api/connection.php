<?php
 
    $conn = new mysqli("localhost", "root", "", "db_sistem_informasi");

    $msg="";

    if($conn){
        $msg = "Database Connected successfully";
    }else{
        $msg = "Database Connection failed".$conn->connect_error;
    }

    json_encode($$msg);
?>