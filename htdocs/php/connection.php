<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'iconnect');
$db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
 }
 /* echo "Connected successfully"; */
?>