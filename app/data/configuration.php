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
	// ...