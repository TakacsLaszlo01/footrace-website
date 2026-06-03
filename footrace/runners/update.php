<?php include_once("class.php");
$manager = new RunnerManager();
$manager->Update($_POST["id"], $_POST["name"], $_POST["country"]);

header("Location: ../index.php");