<?php

class Home extends Controller{

    public function __construct(){
    }

    function SayHi() {
        $this->view("home",[
            "render"=>"home",
        ]);   
    }

}

?>
