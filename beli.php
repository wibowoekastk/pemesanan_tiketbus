<?php 
session_start();

$id_rute = $_GET['id_rute'];

if (isset($_SESSION['pesanan'][$id_rute]))
{
	$_SESSION['pesanan'][$id_rute]+=1;
}

else 
{
	$_SESSION['pesanan'][$id_rute]=1;
}

echo "<script>alert('tiket_onlybus telah masuk ke pesanan anda');</script>";
echo "<script>location= 'pesanan_pembeli.php'</script>";

 ?>