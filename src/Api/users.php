<?php
    include 'axios.php';

if(isset($_GET['action']) && $_GET['action'] == 'login'){


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
        //add token
        $token = bin2hex(random_bytes(50));
        $user['token'] = $token;
        echo json_encode($user);
    }else{
        echo json_encode(array("message" => "Invalid credentials"));
    }

} else {
    // Invalid credentials
    http_response_code(401);
    echo json_encode(array("message" => "Invalid credentials"));
}
}

$conn->close();
?>
