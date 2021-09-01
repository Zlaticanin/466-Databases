<?php
include("secret.php");  // including secret.php for the username and password
include("table.php");   // including table.php to create a table when called 

try {
    $dsn = "mysql:host=courses;dbname=z1847022";
	$pdo = new PDO($dsn, $username, $password);

    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

    $rsSup =$pdo->query("SELECT * FROM S;");
	$rows = $rsSup->fetchAll(PDO::FETCH_ASSOC);

    createtable($rows);
}

catch(PDOexception $e) {
    echo "Connection to Database failed: " . $e->getMessage();
}
?>