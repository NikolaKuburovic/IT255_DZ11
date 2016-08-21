<?php 
	
	header("Access-Control-Allow-Origin: *");
	header('Access-Control-Allow-Methods: GET, POST');
	include("config.php");
	
	if(isset($_POST['naziv']) && isset($_POST['brojSoba']) && isset($_POST['kategorija']) && isset($_POST['adresa']) && isset($_POST['lokacija'])){
		$naziv = ($_POST['naziv']);
		$brojSoba = ($_POST['brojSoba']);
		$kategorija = $_POST['kategorija'];
		$adresa = ($_POST['adresa']);
		$lokacija = ($_POST['lokacija']);
		
		$stmt = $conn->prepare("INSERT INTO hotel (naziv, brojSoba, kategorija, adresa, lokacija) VALUES (?, ?, ?, ?, ?)");
		$stmt->bind_param("sssss",$naziv, $brojSoba, $kategorija, $adresa, $lokacija); $stmt->execute();
		echo "ok";
	}
?>