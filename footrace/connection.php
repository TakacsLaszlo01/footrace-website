<?php
$address = "127.0.0.1";
$port = 3306; //lehet 3307 vagy egyéb
$username = "root";
$password= "";
$database= "footrace";

$connection;
function OpenConnection()
{
    global $address, $port, $database, $username, $password, $connection;
    $connection = new PDO("mysql:host=$address;port=$port;dbname=$database",
                  $username, $password);
}
function CloseConnection() {
    global $connection;
    $connection = null;
}