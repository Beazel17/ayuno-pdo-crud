<?php

$host = 'localhost';
$dbname = 'beazel';
$username = 'root';
$password = '';
/*
$host = 'localhost';
$dbname = 'u593341949_db_ayuno';
$username = 'u593341949_dev_ayuno';
$password = '20221937ayuno';
*/
try {   
 $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
 $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
 die("Database connection failed: " . $e->getMessage());
}

