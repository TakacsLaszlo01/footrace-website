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
    //TODO select

    public function List(): array
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
    public function Select(string $code): Country
    {
        OpenConnection();
        global $connection;

        $sql = "SELECT code, name FROM countries";
        $result = $connection->query($sql);

        $country = null;
        if ($row = $result->fetch()) {
            $code = $row["code"];
            $name = $row["name"];
            $country = new Country($code, $name);
        }
        CloseConnection();
        return $country;
    }
}