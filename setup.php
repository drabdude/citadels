<?php
    
    require "config.php";
    
    $discard = rand(1,8);
    mysqli_query($link, "UPDATE citadels SET role1='" . $discard . "' WHERE username='bot'");



?>