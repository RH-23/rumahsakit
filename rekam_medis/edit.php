<?php include_once('../_header.php'); ?>

    <div class="box">
       <h1>Rekam Medis</h1>
        <h4>
            <small>Edit Data Rekam Medis</small>
            <div class="pull-right">
                <a href="data.php" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-chevron-left"></i>Kembali</a>
            </div>
        </h4>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
            	<?php
                    $id = @$_GET['id'];
                    $query = "SELECT * FROM tb_rekammedis
                            INNER JOIN tb_pasien ON tb_rekammedis.id_pasien = tb_pasien.id_pasien
                            INNER JOIN tb_dokter ON tb_rekammedis.id_dokter = tb_dokter.id_dokter
                            INNER JOIN tb_poliklinik ON tb_rekammedis.id_poli = tb_poliklinik.id_poli
                            WHERE id_rm = '$id'";
                    $sql_rm = mysqli_query($con, $query) or die (mysqli_error($con));
                    $data = mysqli_fetch_array($sql_rm);
                ?>
                <form action="proses.php" method="post">
                     <div class="form-group">
                        <label for="identitas">Nama Pasien</label>
                        <input type="hidden" name="id" value="<?=$data['id_rm']?>">
                        <input type="text" name="nama" id="nama" class="form-control" value="<?=$data['nama_pasien']?>" required>
                    </div>
                    <div class="form-group">
                        <label for="keluhan">Keluhan</label>
                        <textarea name="keluhan" id="keluhan" class="form-control" rows="4" required><?=$data['keluhan']?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="dokter">Dokter</label>
                        <select name="dokter" id="dokter" class="form-control" required>
                        <option value="">Pilih Dokter</option>    
                        <option value=""><?=$data['nama_dokter']?></option>
                            
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="diagnosa">Diagnosa</label>
                        <textarea name="diagnosa" id="diagnosa" class="form-control" required><?=$data['diagnosa']?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="poli">Poliklinik</label>
                        <select name="poli" id="poli" class="form-control" required>
                        	<option value=""><?=$data['nama_poli']?></option>
                        	<?php 
                        	
                        	
                        	?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="obat">Obat</label>
                        <select multiple name="obat[]" id="obat" class="form-control" size="7" required>
                        	<?php 
                            $sql_obat = mysqli_query($con, "SELECT * FROM tb_obat") or die (mysqli_error($con));
                            while ($data_obat = mysqli_fetch_array($sql_obat)) {
                                echo '<option value="'.$data_obat['id_obat'].'">
                                    '.$data_obat['nama_obat'].'</option>';
                            }
                        	?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="tgl">Tanggal Periksa</label>
                        <input type="date" name="tgl" id="tgl" value="<?=$data['tgl_periksa']?>" class="form-control" required>
                    </div>
                    <div class="form-group pull-right">
                        <input type="submit" name="edit" value="Simpan" class="btn btn-success">
                        <input type="reset" name="reset" value="Reset" class="btn btn-default">
                    </div>
                </form>
                <script>
                    CKEDITOR.replace( 'keluhan', {
                        uiColor: '#ec971f'
                    } );
                </script>
            </div>
        </div> 
    </div>

<?php include_once('../_footer.php'); ?>