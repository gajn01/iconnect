<?php
define('DB_SERVER', 'sql304.unaux.com');
define('DB_USERNAME', 'unaux_33266977');
define('DB_PASSWORD', 'ka98uy5iap');
define('DB_DATABASE', 'unaux_33266977_iconnect');
$db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
 }
 /* echo "Connected successfully"; */
?>