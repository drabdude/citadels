<?php

ob_start();
session_start();
require "config.php";

$user = $_SESSION['username'];

$query = mysqli_query($link, "SELECT turn FROM citadels WHERE username = '$user'");
$result = mysqli_fetch_array($query);
$turn = $result['turn'];

$query = mysqli_query($link, "SELECT gold FROM citadels WHERE username = 'bot   '");
$result = mysqli_fetch_array($query);
$total = $result['gold'];


$phase = 1; //in reality, we will get phase from database

$possible_roles = array(1,2,3,4,5,6,7,8);
$impossible_roles = array(0);


if($phase == 1){
    if($turn == 1){
        echo "It's your turn!";
        
        for($i = 1; $i <= $total; $i++){
            $query = mysqli_query($link, "SELECT role1 FROM citadels WHERE id = '$i'");
            $result = mysqli_fetch_array($query);
            $role1 = $result['role1'];
            
            $query = mysqli_query($link, "SELECT role2 FROM citadels WHERE id = '$i'");
            $result = mysqli_fetch_array($query);
            $role2 = $result['role2'];
            
            array_push($impossible_roles,$role1,$role2);
        }
        
        
        for($i = 1; $i <= 8; $i++){
        
            $array1 = array($i);
            if(implode("",array_intersect($array1,$impossible_roles))==$i){
            
            
            }
            else{
                
                echo $i;
            }
            
        
        
        
        
        
        
        
        
    }
    }
    else{
        echo "Please wait for your turn";
    }
}




?>