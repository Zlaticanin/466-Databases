<?php
/*  A way to select a part and a supplier and “buy” some number of parts from them, reducing the quantity they have left to supply by the amount “bought” */

try { // if something goes wrong, an exception is thrown
    include("secret.php");
    include("table.php");

    $dsn = "mysql:host=courses;dbname=z1847022";
	$pdo = new PDO($dsn, $username, $password);

    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

    $sql = "UPDATE SP
		  	  SET QTY = QTY - ?
			  WHERE S = ? AND P = ?;";

	$prepared = $pdo->prepare($sql);

	$prepared->execute(array($_GET["QTY"],$_GET["supplier"],$_GET["part"]));

	echo "Purchase Completed!";
}
    catch(PDOexception $e) {  // handle that exception
        echo "Connection to database failed: ". $e->getMessage();
    }
?>