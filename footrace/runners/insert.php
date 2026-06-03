<?php include_once("class.php");
$manager = new RunnerManager();
$manager->Insert($_POST["id"], $_POST["name"], $_POST["country_code"]);

header("Location: ../index.php");