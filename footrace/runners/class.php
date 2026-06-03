<?php
include_once(__DIR__ . "/../connection.php");
class Runner {
    public $id, $name;
    public function __construct(int $id, string $name) {
        $this->id = $id;
        $this->name = $name;
    }
}

class RunnerManager {
    //TODO select, insert, update, delete, select+where

    public function Select(): array
    {
        OpenConnection();
        global $connection;

        $sql = "SELECT id, name FROM runners";
        $result = $connection->query($sql);

        $runners = [];
        while($row = $result->fetch()) {
            $id = $row["id"];
            $name = $row["name"];
            array_push($runners, new Runner($id, $name));
        }

        CloseConnection();
        return $runners;
    }
    public function Insert(int $id, string $name, string $country_code = "US"): bool {
        OpenConnection();
        global $connection;

        $sql = "INSERT INTO runners (id, name, country_code)
                VALUES (:id, :name, :country_code)";
        $statement = $connection->prepare($sql);

        $statement->bindParam(":id", $id, PDO::PARAM_INT);
        $statement->bindParam(":name", $name, PDO::PARAM_STR);
        $statement->bindParam(":country_code", $country_code, PDO::PARAM_STR);
        $hasInserted = $statement->execute();

        CloseConnection();
        return $hasInserted;
    }
}