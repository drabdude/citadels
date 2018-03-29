<?php

class Card {

       public $name;

    public function __construct($n){
    
        $this -> name = $n;
    
    }

    public function display(){
        return $this -> name;
        
    }

}

?>