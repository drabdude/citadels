<?php

ob_start();
// Initialize the session
session_start();
require 'config.php';

// If session variable is not set it will redirect to login page
if(!isset($_SESSION['username']) || empty($_SESSION['username'])){
  header("location: login2.php");
  exit;
}

?>

<html>
<head>
    <title>Citadels</title>
</head>
<body>
    
Welcome!
</body>
</html>