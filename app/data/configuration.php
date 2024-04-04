<?php
// Fichier data/configuration.php

// Debug
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Configuration de la base de données
$host =      'pgdb';
$database =  'appdb';
$port =      5432;
$user =      'postgres';
$password =  'letmein';

// TODO
// Connexion à la base de données
// Version finale du DSN :
$dsn = "pgsql:host=$host; port=$port; dbname=$database;";

// Ouvrir la connexion (=> créer un objet PDO)
$pdo = new PDO($dsn, $user, $password);


// Définir le SEARCH_Path
$sql = "SET SEARCH_PATH TO computerz";
$requete = $pdo->prepare($sql);
$requete->execute();

?>
