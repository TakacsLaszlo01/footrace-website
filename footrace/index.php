<?php include_once("runners/class.php");
$manager = new RunnerManager();
$data = $manager->Select(); ?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Futóverseny résztvevői</title>
</head>
<body>
    <table>
        <thead><tr>
            <th>Azonosító</th>
            <th>Versenyző neve</th>
            <th colspan="2">Műveletek</th>
        </tr></thead>
        <tbody><?php foreach($data as $runner) {
             ?>
            <tr>
                <td><?=$runner->id?></td>
                <td><?=$runner->name?></td>
                <td><form method="POST" action="runners/delete.php">
                    <input type="hidden" name="id" value="<?=$runner->id ?>" />
                    <button>Törlés</button>
                </form></td>
                <td><form method="POST">
                    <button>Szerkesztés</button>
                </form></td>
            </tr>
        <?php } ?></tbody>
    </table>
</body>
</html>