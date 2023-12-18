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
    $response = $posts;
}
if($action == 'login'){
   $response = $posts;
}


header('Content-Type: application/json');
echo json_encode($posts);

?>

