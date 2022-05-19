<!DOCTYPE html>
<html>
<head>
    <title>Form Pendaftaran Anggota</title>
    <!-- Load file CSS Bootstrap offline -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

</head>
<body>
<div class="container">
    <?php
    //Include file koneksi, untuk koneksikan ke database
    include "koneksi.php";
    
    //Fungsi untuk mencegah inputan karakter yang tidak sesuai
    function input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    //Cek apakah ada kiriman form dari method post
    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $nomor=input($_POST["nomor"]);
        $tanggal=input($_POST["tanggal"]);
        $judul=input($_POST["judul"]);

        //Query input menginput data kedalam tabel anggota
        $sql="insert into surat (nomor,tanggal,judul) values
		('$nomor','$tanggal','$judul')";

        //Mengeksekusi/menjalankan query diatas
        $hasil=mysqli_query($kon,$sql);

        //Kondisi apakah berhasil atau tidak dalam mengeksekusi query diatas
        if ($hasil) {
            header("Location:index.php");
        }
        else {
            echo "<div class='alert alert-danger'> Data Gagal disimpan.</div>";

        }

    }
    ?>
    <h2>Input Data</h2>


    <form action="<?php echo $_SERVER["PHP_SELF"];?>" method="post">
        <div class="form-group">
            <label>Nomor Surat:</label>
            <input type="text" name="nomor" class="form-control" placeholder="Masukan nomor" required />

        </div>
        <div class="form-group">
            <label>Tanggal Surat:</label>
            <input type="text" name="tanggal" class="form-control" placeholder="Masukan tanggal" required/>

        </div>
        <div class="form-group">
            <label>Judul Surat:</label>
            <textarea name="judul" class="form-control" rows="5"placeholder="Masukan judul" required></textarea>

        </div>
        
        <button type="submit" name="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>