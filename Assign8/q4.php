<?php
/*  Form that allows a user to select a supplier and get a list of all of the parts they supply
and how many of each they have */

try { // // if something goes wrong, an exception is thrown
    include("secret.php");
    include("table.php");

    $dsn = "mysql:host=courses;dbname=z1847022";
	$pdo = new PDO($dsn, $username, $password);

    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT SNAME, PNAME, QTY
		  	  FROM SP JOIN P
		  	  USING(P) 
		  	  JOIN S
	          USING(S) 
			  WHERE S = ?;";

	$prepared = $pdo->prepare($sql);

	$prepared->execute(array($_GET["supplier"]));

	$rows = $prepared->fetchAll(PDO::FETCH_ASSOC);

	createtable($rows);
}
    catch(PDOexception $e) { // handle that exception
        echo "Connection to database failed: ". $e->getMessage();
    }
?>