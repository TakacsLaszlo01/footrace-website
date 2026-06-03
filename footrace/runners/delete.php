<?php include_once("class.php");
$manager = new RunnerManager();
$manager->Delete($_POST["id"]);

header("Location: ../index.php");