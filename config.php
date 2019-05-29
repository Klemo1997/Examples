<?php
/**
 * Created by PhpStorm.
 * User: Klemo
 * Date: 18-Apr-19
 * Time: 19:34
 */

define("HOSTNAME", "localhost");
define("USERNAME", "YOUR_NAME");
define("PASSWORD", "YOUR_PASSWORD");
define("DBNAME", "mashup");


// Create connection
$conn = new mysqli(HOSTNAME, USERNAME, PASSWORD, DBNAME);
//Set utf8 charset
$conn->set_charset("utf8");
// Check connection
if($conn->connect_error){
    die("Connection failed" . $conn->connect_error);
}