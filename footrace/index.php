<?php include_once("classes/runners.php");
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
        </tr></thead>
        <tbody><?php foreach($data as $runner) { ?>
            <tr>
                <td><?=$runner->id?></td>
                <td><?=$runner->name?></td>
            </tr>
        <?php } ?></tbody>
    </table>
</body>
</html>