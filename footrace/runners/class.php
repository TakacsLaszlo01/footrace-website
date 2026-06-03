<?php
include_once(__DIR__ . "/../connection.php");
class Runner {
    public $id, $name, $country_code;
    public function __construct(int $id, string $name, string $country_code = "US") {
        $this->id = $id;
        $this->name = $name;
        $this->country_code = $country_code;
    }
}

class RunnerManager {
    //TODO select, insert, update, delete, select+where

    public function List(): array
    {
        OpenConnection();
        global $connection;

        $sql = "SELECT id, name, country_code FROM runners";
        $result = $connection->query($sql);

        $runners = [];
        while($row = $result->fetch()) {
            $id = $row["id"];
            $name = $row["name"];
            $country_code = $row["country_code"];
            array_push($runners, new Runner($id, $name, $country_code));
        }

        CloseConnection();
        return $runners;
    }
    public function Select(int $id): Runner
    {
        OpenConnection();
        global $connection;

        $sql = "SELECT id, name, country_code FROM runners";
        $result = $connection->query($sql);

        $runner = null;
        if ($row = $result->fetch()) {
            $name = $row["name"];
            $country_code = $row["country_code"];
            $runner = new Runner($id, $name, $country_code);
        }
        CloseConnection();
        return $runner;
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

    public function Update(int $id, string $name, string $country_code = "US"): bool {
        OpenConnection();
        global $connection;

        $sql = "UPDATE runners SET name = :name, country_code = :country_code
                WHERE id = :id";
        $statement = $connection->prepare($sql);

        $statement->bindParam(":id", $id, PDO::PARAM_INT);
        $statement->bindParam(":name", $name, PDO::PARAM_STR);
        $statement->bindParam(":country_code", $country_code, PDO::PARAM_STR);
        $hasUpdated = $statement->execute();

        CloseConnection(); 
        return $hasUpdated;
    }
    public function Delete(int $id): bool {
        OpenConnection();
        global $connection;

        $sql = "DELETE FROM runners WHERE id = :id";
        $statement = $connection->prepare($sql);

        $statement->bindParam(":id", $id, PDO::PARAM_INT);
        $hasDeleted = $statement->execute();

        CloseConnection();
        return $hasDeleted;
    }
}