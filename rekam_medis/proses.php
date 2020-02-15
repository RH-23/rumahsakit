<?php
require_once "../_config/config.php";
require "../_assets/libs/vendor/autoload.php";

use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;


if(isset($_POST['add'])) {
		$uuid = Uuid::uuid4()->toString();

		$pasien = trim(mysqli_real_escape_string($con, $_POST['pasien']));
		$keluhan = trim(mysqli_real_escape_string($con, $_POST['keluhan']));
		$dokter = trim(mysqli_real_escape_string($con, $_POST['dokter']));
		$diagnosa = trim(mysqli_real_escape_string($con, $_POST['diagnosa']));
		$poli = trim(mysqli_real_escape_string($con, $_POST['poli']));
		$tgl = trim(mysqli_real_escape_string($con, $_POST['tgl']));

		mysqli_query($con, "INSERT INTO tb_rekammedis (id_rm, id_pasien, keluhan, id_dokter, diagnosa, id_poli, tgl_periksa) VALUES ('$uuid','$pasien','$keluhan','$dokter','$diagnosa','$poli','$tgl')") or die (mysqli_error($con));

		$obat = $_POST['obat'];
		foreach ($obat as $ob) {
			mysqli_query($con, "INSERT INTO tb_rm_obat (id_rm, id_obat) VALUES ('$uuid','$ob')") or die (mysqli_error($con));
		}
		echo "<script>window.location='data.php';</script>";
	}
else if(isset($_POST['edit'])) {
		$id = $_POST['id'];
		$nama = trim(mysqli_real_escape_string($con, $_POST['nama']));
		$keluhan = trim(mysqli_real_escape_string($con, $_POST['keluhan']));
		$dokter = trim(mysqli_real_escape_string($con, $_POST['dokter']));
		$diagnosa = trim(mysqli_real_escape_string($con, $_POST['diagnosa']));
		$poli = trim(mysqli_real_escape_string($con, $_POST['poli']));
		$obat = trim(mysqli_real_escape_string($con, $_POST['obat']));
		$tgl = trim(mysqli_real_escape_string($con, $_POST['tgl']));

		mysqli_query($con, "UPDATE tb_rekammedis SET keluhan='$keluhan', diagnosa='$diagnosa', tgl_periksa='$tgl' WHERE id_rm = '$id'") or die (mysqli_error($con));
		mysqli_query($con, "UPDATE tb_pasien,tb_rekammedis SET tb_pasien.nama_pasien='$nama' WHERE tb_pasien.id_pasien = tb_rekammedis.id_pasien") or die (mysqli_error($con));
		mysqli_query($con, "UPDATE tb_dokter,tb_rekammedis SET tb_dokter.nama_dokter='$dokter' WHERE tb_dokter.id_dokter = tb_rekammedis.id_dokter") or die (mysqli_error($con));

		$obat = $_POST['obat'];
		foreach ($obat as $ob) {
			mysqli_query($con, "UPDATE tb_obat,tb_rm_obat SET tb_obat.nama_obat='$ob' WHERE tb_obat.id_obat = tb_rm_obat.id_obat") or die (mysqli_error($con));
		}
		// $obat = $_POST['obat'];
		// foreach ($obat as $ob) {
		// 	mysqli_query($con, "UPDATE tb_rm_obat") or die (mysqli_error($con));
		// }
		echo "<script>window.location='data.php';</script>";
	}

?>