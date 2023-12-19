<?php
    include './db.php';
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
    
    if (isset($_GET['action'])) {
        $action = $_GET['action'];
    }
?>