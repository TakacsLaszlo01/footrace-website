<?php
include_once(__DIR__ . "/../connection.php");
class Country {
    public $code, $name;
    public function __construct(string $code, string $name) {
        $this->code = $code;
        $this->name = $name;
    }
}

class CountryViewer {
    //TODO select, insert, update, delete, select+where

    public function Select(): array
    {
        OpenConnection();
        global $connection;

        $sql = "SELECT code, name FROM countries";
        $result = $connection->query($sql);

        $runners = [];
        while($row = $result->fetch()) {
            $code = $row["code"];
            $name = $row["name"];
            array_push($runners, new Country($code, $name));
        }

        CloseConnection();
        return $runners;
    }
}