<?php
/*  Form that allows a user to select a part and see everyone who supplies that part, along
with how many of that part they have available */

try { // if something goes wrong, an exception is thrown
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
			  WHERE P = ?;";

	$prepared = $pdo->prepare($sql);

	$prepared->execute(array($_GET["part"]));

	$rows = $prepared->fetchAll(PDO::FETCH_ASSOC);

	createtable($rows);
}
    catch(PDOexception $e) {  // handle that exception
        echo "Connection to database failed: ". $e->getMessage();
    }
?>