<?php
$address = "127.0.0.1";
$port = 3306; //lehet 3307 vagy egyéb
$username = "root";
$password= "";
$database= "footrace";

$connection = new PDO("mysql:host=$address;port=$port;dbname=$database",
                      $username, $password);
