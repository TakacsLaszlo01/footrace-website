<?php include_once("classes/countries.php");
$country_viewer = new CountryViewer();
$data = $country_viewer->Select(); ?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Új futó felvétele</title>
</head>
<body>
    <form method="post" action="actions/insert_runner.php">
        <table><tbody>
            <tr>
                <td><label>Mezszám:</label></td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td><label>Versenyző neve:</label></td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td><label>Származási ország:</label></td>
                <td><select>
                    <?php foreach($data as $country) { ?>
                        <option value="<?=$country->code?>">
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