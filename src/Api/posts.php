<?php

$basePath = dirname(__DIR__); // The base path of the project
include $basePath . '/database/db.php';
include $basePath . '/helpers/validatePost.php';

$table = 'post';//initialise the table
$topics = selectAll('topics');
$posts = selectAll($table);
$response = array('error' => false);

$action ='';

if (isset($_GET['action'])){
    $action = $_GET['action'];
}

if($action == 'login'){
    $username = $_POST['username'];
    $password = $_POST['password'];

    $response['message'] = $username." ".$password;
}


header('Content-Type: application/json');
echo json_encode($response);

?>

