<?php
//initialize connection to mysql database
//included in ever page of the site
$servername = getenv('IP');
$username = getenv('C9_USER');
$password = "";
$database = "c9";
$dbport = 3306;

// Create connection
$db = new mysqli($servername, $username, $password, $database, $dbport);
//the variable $db can now be used in ever page to access the database

// Check connection
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
} 

session_start();
?>