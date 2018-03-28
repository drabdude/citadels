<?php

ob_start();
session_start();

require_once ("config.php");

$user = $_SESSION['username']; //set your username to variable called user

$query = mysqli_query($link, "SELECT turn FROM citadels WHERE username = '$user'");
$result = mysqli_fetch_array($query);
$turn = $result['turn']; //gets value of turn for your user-- you need all 3 lines

$query = mysqli_query($link, "SELECT id FROM citadels WHERE username = '$user'");
$result = mysqli_fetch_array($query);
$id = $result['id'];

$query = mysqli_query($link, "SELECT gold FROM citadels WHERE username = 'bot   '");
$result = mysqli_fetch_array($query);
$total = $result['gold'];

$query = mysqli_query($link, "SELECT turn FROM citadels WHERE username = 'bot   '");
$result = mysqli_fetch_array($query);
$phase = $result['turn'];


$possible_roles = array(1,2,3,4,5,6,7,8);
$impossible_roles = array(0);

if($phase == 0){
        $discard = rand(1,8);
        mysqli_query($link, "UPDATE citadels SET role1='" . $discard . "' WHERE username='bot'");
        mysqli_query($link, "UPDATE citadels SET turn='1' WHERE username='bot'");
        header("Location:play.php");
}

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
                if($i==1){
                    $role = "Assassin";
                }
                if($i==2){
                    $role = "Thief";
                }
                if($i==3){
                    $role = "Magician";
                }
                if($i==4){
                    $role = "King";
                }
                if($i==5){
                    $role = "Bishop";
                }
                if($i==6){
                    $role = "Merchant";
                }
                if($i==7){
                    $role = "Architect";
                }
                if($i==8){
                    $role = "Warlord";
                }
                
                echo "<form method='POST' action='".htmlspecialchars($_SERVER["PHP_SELF"])."'>";
                echo "<input type='submit' name='". $i ."' value = '" . $role . "' />";
            }
            
            
            if(isset($_POST['1'])){
                mysqli_query($link, "UPDATE citadels SET role1='1' WHERE username='".$user."'"); //updates the database
            }
            
            if(isset($_POST['2'])){
                mysqli_query($link, "UPDATE citadels SET role1='2' WHERE username='".$user."'"); //updates the database
            }
            if(isset($_POST['3'])){
                mysqli_query($link, "UPDATE citadels SET role1='3' WHERE username='".$user."'"); //updates the database
            }
            if(isset($_POST['4'])){
                mysqli_query($link, "UPDATE citadels SET role1='4' WHERE username='".$user."'"); //updates the database
            }
            if(isset($_POST['5'])){
                mysqli_query($link, "UPDATE citadels SET role1='5' WHERE username='".$user."'"); //updates the database
            }
            if(isset($_POST['6'])){
                mysqli_query($link, "UPDATE citadels SET role1='6' WHERE username='".$user."'"); //updates the database
            }
            if(isset($_POST['7'])){
                mysqli_query($link, "UPDATE citadels SET role1='7' WHERE username='".$user."'"); //updates the database
            }
            if(isset($_POST['8'])){
                mysqli_query($link, "UPDATE citadels SET role1='8' WHERE username='".$user."'"); //updates the database
            }
            
            
            
            if(isset($_POST['1']) || isset($_POST['2']) || isset($_POST['3']) || isset($_POST['4']) || isset($_POST['5']) || isset($_POST['6']) || isset($_POST['7']) || isset($_POST['8'])){
                
                if($id==$total){
                    mysqli_query($link, "UPDATE citadels SET turn='0' WHERE username='".$user."'");
                    mysqli_query($link, "UPDATE citadels SET turn='1' WHERE id='2'");
                }
                else{
                    $newid = $id+1;
                    mysqli_query($link, "UPDATE citadels SET turn='1' WHERE id='".$newid."'");
                    mysqli_query($link, "UPDATE  citadels SET turn='0' WHERE username='".$user."'");
                }
                header("Location:play.php");   
                
            }
        
        
        
        
        
        
        
        
    }
    }
    else{
        echo "Please wait for your turn";
    }
}




?>