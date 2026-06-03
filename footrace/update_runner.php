<?php include_once("countries/class.php");
$country_viewer = new CountryViewer();
$data = $country_viewer->List();

$id = $_GET["id"];
try {
    $name = $_POST["name"];
    $country_code = $_POST["country"];
}
catch (Exception $w) {
    //TODO select + where
    include_once("runners/class.php");
    $runner_manager = new RunnerManager();
    $runner = $runner_manager->Select($id);

    $name = $runner->name;
    $country_code = $runner->country_code;
}
?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Új futó felvétele</title>
</head>
<body>
    <form method="POST" action="runners/insert.php">
        <table><tbody>
            <tr>
                <td>Mezszám:</td>
                <td><?=$id ?></td>
            </tr>
            <tr>
                <td><label>Versenyző neve:</label></td>
                <td><input type="text" name="name" value="<?=$name?>"></td>
            </tr>
            <tr>
                <td><label>Származási ország:</label></td>
                <td><select name="country">
                    <?php foreach($data as $country) { ?>
                        <option value="<?=$country->code?>"
                            <?=$country->code === $country_code ? "selected" : ""?>>
                            <?=$country->name?>
                        </option>
                    <?php } ?>
                </select></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Küldés</button></td>
            </tr>
        </tbody></table>
    </form>
</body>
</html>