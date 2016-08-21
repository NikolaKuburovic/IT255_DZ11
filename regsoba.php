<?php 
	
	header("Access-Control-Allow-Origin: *");
	header('Access-Control-Allow-Methods: GET, POST');
	include("config.php");
	
	if(isset($_POST['ime']) && isset($_POST['sprat']) && isset($_POST['kreveti']) && isset($_POST['m2']) && isset($_POST['tv']) && isset($_POST['internet']) && isset($_POST['djakuzi']) && isset($_POST['rezervacija'])){
		$ime = ($_POST['ime']);
		$sprat = ($_POST['sprat']);
		$kreveti = $_POST['kreveti'];
		$m2 = ($_POST['m2']);
		$tv = ($_POST['tv']);
		$internet = $_POST['internet'];
		$djakuzi = ($_POST['djakuzi']);
		$rezervacija = ($_POST['rezervacija']);
		
		$stmt = $conn->prepare("INSERT INTO soba (ime, sprat, kreveti, m2, tv, internet, djakuzi, rezervacija) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("ssssssss",$ime, $sprat, $kreveti, $m2, $tv, $internet, $djakuzi, $rezervacija); $stmt->execute();
		echo "ok";
	}
?>