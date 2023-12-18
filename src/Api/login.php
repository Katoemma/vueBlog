<?php
// login.php

// Allow requests from specific origins (replace example.com with your frontend's domain)
header("Access-Control-Allow-Origin: http://localhost:5173");
// If you want to allow requests from multiple origins:
// header("Access-Control-Allow-Origin: http://example.com, http://another-domain.com");

// Allow specific methods (e.g., POST)
header("Access-Control-Allow-Methods: POST,GET");

// Allow specific headers
header("Access-Control-Allow-Headers: Content-Type");

// Handling OPTIONS method for preflight requests
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

// Establish a connection to MySQL database
$dbHost = 'localhost';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'bloggydb';

$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch POST data from Vue frontend
$data = json_decode(file_get_contents("php://input"));

$email = $data->email;
$password = $data->password;



// Perform a query to check user credentials (ensure to hash passwords properly in your database)
$sql = "SELECT * FROM users WHERE email = '$email'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // User found, login successful
    $user = $result->fetch_assoc();

    $verifyPass = password_verify($password, $user['password']);
    if ($verifyPass) {
        echo json_encode($user);
    }else{
        echo json_encode(array("message" => "Invalid credentials"));
    }

} else {
    // Invalid credentials
    http_response_code(401);
    echo json_encode(array("message" => "Invalid credentials"));
}

$conn->close();
?>
