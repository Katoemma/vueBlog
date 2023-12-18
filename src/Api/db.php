<?php

session_start();

 include('connection.php');

 

 function executeQuery($sql, $data){
    global $conn;
    $stmt = $conn -> prepare($sql);
    $values = array_values($data);
    $types = str_repeat('s', count($values));
    $stmt ->bind_param($types, ...$values);
    $stmt -> execute();
    return $stmt;
 }

 function selectAll($table, $conditions = []){
    global $conn; 
    $sql = "SELECT * FROM $table";

    if(empty($conditions)){
        $stmt = $conn -> prepare($sql);
        $stmt -> execute();
        $records = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
        return $records;
    }else {

        $i = 0;
        foreach ($conditions as $key => $value){
            if($i === 0){
                $sql = $sql . " WHERE $key=?";
            }else {
                $sql = $sql . " AND $key=?";
            }
            $i++;
        }
        $stmt = executeQuery($sql, $conditions);
        $records = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
        return $records;
    }
    
    
 }

 function selectOne($table, $conditions){
    global $conn; 
    $sql = "SELECT * FROM $table";

    $i = 0;
    foreach ($conditions as $key => $value){
        if($i === 0){
            $sql = $sql . " WHERE $key=?";
        }else {
            $sql = $sql . " AND $key=?";
        }
        $i++;
    }
    $sql = $sql . " LIMIT 1";
    $stmt = executeQuery($sql, $conditions);
    $records = $stmt->get_result()->fetch_assoc();
    return $records;
    
 }

 function create($table, $data){
    global $conn;
    //$sql = "CREATE users SET username=?, admin=?, password=?";
    $sql = "INSERT INTO $table SET ";

    $i = 0;
    foreach ($data as $key => $value){
        if($i === 0){
            $sql = $sql . " $key=? ";
        }else {
            $sql = $sql . ", $key=?";
        }
        $i++;
    }
    
    $stmt = executeQuery($sql, $data);
    $id = $stmt->insert_id;
    return $id;

 }

 function update($table, $id ,  $data){
    global $conn;
   
    $sql = "UPDATE $table SET ";

    $i = 0;
    foreach ($data as $key => $value){
        if($i === 0){
            $sql = $sql . " $key=? ";
        }else {
            $sql = $sql . ", $key=?";
        }
        $i++;
    }
    $sql = $sql . " WHERE id=?";
    $data['id']= $id;
    $stmt = executeQuery($sql, $data);
    return $stmt -> affected_rows;
 }

 function delete($table, $id){
    global $conn;
    $sql = "DELETE FROM $table WHERE id=?";
    
    $stmt = executeQuery($sql, ['id' => $id]);
    return $stmt -> affected_rows;
 }

//  function getPublishedPosts(){
//     global $conn;
//     //SELECT * FROM posts WHERE published=1;
//     $sql = "SELECT p.*, u.username FROM posts AS p.user_id=u_id WHERE p.publisher=?"
//  }

function searchPosts($term)
{
    global $conn;
    
    $stmt = $conn->prepare("SELECT * FROM post WHERE published = 1 AND (title LIKE ? OR body LIKE ?)");
    $term = '%' . $term . '%';
    $stmt->bind_param('ss', $term, $term);
    $stmt->execute();
    
    $result = $stmt->get_result();
    $posts = $result->fetch_all(MYSQLI_ASSOC);
    
    $stmt->close();
    
    return $posts;
}

function getPostByTopic($topic_id)
{
    global $conn;
    $sql = $conn->prepare("SELECT * FROM post WHERE published=1 AND topic_id=?");
    $sql->bind_param("i", $topic_id);
    $sql->execute();
    $result = $sql->get_result();
    $posts = $result->fetch_all(MYSQLI_ASSOC);
    $sql->close();
    return $posts;
}



// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    // Decide if the origin in $_SERVER['HTTP_ORIGIN'] is one
    // you want to allow, and if so, set it in $allowedOrigin
    $allowedOrigin = "*";
    header('Access-Control-Allow-Origin: ' . $allowedOrigin);
    header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
    header('Access-Control-Allow-Headers: Content-Type, Authorization');
    header('Access-Control-Allow-Credentials: true');
}


?>
