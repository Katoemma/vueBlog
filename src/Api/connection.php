<?php
    define('DB_HOST','localhost');
    define('DB_USER','root');
    define('DB_PASS','');
    define('DB_NAME','bloggydb');

    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME)
    or die("database has failed to load: ".mysqli_error($conn));

    $msg ='';
    if($conn){
        $msg = 'database connection successful';
    }else{
        $msg = 'database connection failed';
    }

    //encode the message as json for axios
    echo json_encode($msg);
?>