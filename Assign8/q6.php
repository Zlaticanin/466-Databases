<?php
// Form that allows a user to add a new part to the database

try { // if something goes wrong, an exception is thrown
    include("secret.php");
    include("table.php");

    $dsn = "mysql:host=courses;dbname=z1847022";
	$pdo = new PDO($dsn, $username, $password);

    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

    $sql = "INSERT INTO P(PNAME,COLOR,WEIGHT)
            VALUES(?,?,?)";
    
    $prepared = $pdo->prepare($sql);

	$prepared->execute(array($_POST["PName"],$_POST["Color"],$_POST["Weight"]));
    
    echo "Part Added To The Database!";
}
    catch(PDOexception $e) {  // handle that exception
        echo "Connection to database failed: ". $e->getMessage();
    }
?>