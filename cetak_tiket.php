
<?php
	include ('db.php');
	//$sql = "SELECT id, firstname, lastname FROM MyGuests";
	//$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Tayo Travel, Idola</title>
	<!--Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Tayo Travel, Idola">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
	<!-- //Custom-Stylesheet-Links -->
	<!--fonts -->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
	<!-- //fonts -->
</head>

<body>
	<!-- <h2>Silahkan cek kembali sebelum dicetak.</h2> -->
	<div class="container">
		<form method="post" action="cetak_tiket.php">
			<div id="printableArea" class="displayerBoxes txt-center" style="overflow-x:auto">
			<h1>Pemesanan Tiket Tayo Travel</h1>
				<table class="Displaytable sel-table" width="100%">
					<tr>
						<th>Tanggal Berangkat</th>
						<th>Rute</th>
						<th>Nama</th>
						<th>Jumlah</th>
						<th>Tempat Duduk</th>
					</tr>
					<tr>
						<td><?php echo $_POST['tanggalDisplay'];?></td>
						<td><?php echo $_POST['ruteDisplay'];?></td>
						<td><?php echo $_POST['nameDisplay'];?></td>
						<td><?php echo $_POST['NumberDisplay'];?></td>
						<td><?php echo $_POST['seatsDisplay'];?></td>
					</tr>

				</table>

			</div>
			<button onclick="printDiv()">Print</button>
			<!-- <input type="submit" value="Print"> -->
		</form>
		<!-- //details after booking displayed here -->
	</div>

<div class="copy-mss">
	<p>© Tayo Travel . Workshop BK Teknik Informatika-S1 Udinus.</p>
</div>

<?php
	$tgl = $_POST["tanggalDisplay"];
	$rute = $_POST["ruteDisplay"];
	$nama = $_POST["nameDisplay"];
	$jumlahkursi = $_POST["NumberDisplay"];
	$tmpt_duduk = $_POST["seatsDisplay"];
	
	$sql = "INSERT INTO pemesanan (pmsn_tgl, pmsn_jalur, pmsn_jml_kursi, pmsn_tmp_duduk)
	VALUE ('$tgl','$rute','$jumlahkursi','$tmpt_duduk')";
	$query = mysqli_query($db,$sql);
?>


<script>
	function printDiv() {
		var printContents = document.getElementById("printableArea").innerHTML;
		var originalContents = document.body.innerHTML;

		document.body.innerHTML = printContents;
		window.print();
		document.body.innerHTML = originalContents;
	}
</script>
</body>
</html>