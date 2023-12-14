<?php
// Define your API key
$validApiKey = 'your_api_key_here';

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

// Handling preflight requests
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    header('Access-Control-Allow-Origin: ' . $allowedOrigin);
    header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
    header('Access-Control-Allow-Headers: Content-Type, Authorization');
    header('Access-Control-Allow-Credentials: true');
    exit;
}

// Check for the API key in the request headers
if ($_SERVER['REQUEST_METHOD'] !== 'OPTIONS' && !isset($_SERVER['HTTP_API_KEY'])) {
    http_response_code(401);
    echo json_encode(['error' => 'Unauthorized - API key missing']);
    exit;
}

$apiKey = $_SERVER['HTTP_API_KEY'];

// Validate the API key
if ($apiKey !== $validApiKey) {
    http_response_code(403);
    echo json_encode(['error' => 'Forbidden - Invalid API key']);
    exit;
}

// Your PHP code goes here
// For example, handling a POST request
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Process POST request data
    // ...
    // Send response
    echo json_encode(['message' => 'Data received successfully']);
}
?>