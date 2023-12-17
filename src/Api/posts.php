<?php

include './db.php';

$table = 'post';//initialise the table
$topics = selectAll('topics');
$posts = selectAll($table);
$response = array();

$action ='';

if (isset($_GET['action'])){
    $action = $_GET['action'];
}

if($action == 'posts'){
    $response['posts'] = $posts;
}
if($action == 'login'){
    $username = $_GET['email'];
    $password = $_GET['password'];

    $response['message'] = $username." ".$password;
}


header('Content-Type: application/json');
echo json_encode($response);

?>

