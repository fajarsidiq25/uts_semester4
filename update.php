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
    //Cek apakah ada nilai yang dikirim menggunakan methos GET dengan tanggal id
    if (isset($_GET['id'])) {
        $id=input($_GET["id"]);

        $sql="select * from surat where id=$id";
        $hasil=mysqli_query($kon,$sql);
        $data = mysqli_fetch_assoc($hasil);
    }

    //Cek apakah ada kiriman form dari method post
    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $id=htmlspecialchars($_POST["id"]);
        $nomor=input($_POST["nomor"]);
        $tanggal=input($_POST["tanggal"]);
        $judul=input($_POST["judul"]);

        //Query update data pada tabel anggota
        $sql="update anggota set
			nomor='$nomor',
			tanggal='$tanggal',
			judul='$judul',
			where id=$id";

        //Mengeksekusi atau menjalankan query diatas
        $hasil=mysqli_query($kon,$sql);

        //Kondisi apakah berhasil atau tidak dalam mengeksekusi query diatas
        if ($hasil) {
            header("Location:index.php");
        }
        else {
            echo "<div class='alert alert-danger'> Data Gagal diupdate.</div>";

        }

    }

    ?>
    <h2>Update Data</h2>


    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
        <div class="form-group">
            <label>Nomor Surat:</label>
            <input type="text" name="nomor" class="form-control" value="<?php echo $data['nomor']; ?>" placeholder="Masukan nomor" required />

        </div>
        <div class="form-group">
            <label>Tanggal Surat:</label>
            <input type="text" name="tanggal" class="form-control" value="<?php echo $data['tanggal']; ?>" placeholder="Masukan tanggal" required/>

        </div>
        <div class="form-group">
            <label>Judul Surat:</label>
            <textarea name="judul" class="form-control" rows="5" placeholder="Masukan judul" required><?php echo $data['judul']; ?></textarea>

        </div>
       
        <input type="hidden" name="id" value="<?php echo $data['id']; ?>" />

        <button type="submit" name="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>