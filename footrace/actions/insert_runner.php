<?php include_once(__DIR__ . "/../runners.php");
$manager = new RunnerManager();
$manager->Insert($_POST["id"], $_POST["name"]);