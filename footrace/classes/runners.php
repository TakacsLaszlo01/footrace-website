<?php
$cm = include_once("../connection.php");
class Runner {
    public $id, $name;
    public function __construct(int $id, string $name) {
        $this->id = $id;
        $this->name = $name;
    }
}

class RunnerManager {
    //TODO select, insert, update, delete, select+where

    function Select()
    {

    }    
}