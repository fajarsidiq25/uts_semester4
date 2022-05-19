<!DOCTYPE html>
<html>
<head>
    <!-- Load file CSS Bootstrap offline -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <br>
    <h4>Aplikasi Perekaman Surat Keluar</h4>
    <?php

        include "koneksi.php";

        //Cek apakah ada nilai dari method GET dengan nama id
        if (isset($_GET['id'])) {
            $id=htmlspecialchars($_GET["id"]);

            $sql="delete from surat where id='$id' ";
            $hasil=mysqli_query($kon,$sql);

            //Kondisi apakah berhasil atau tidak
                if ($hasil) {
                    header("Location:index.php");

                }
                else {
                    echo "<div class='alert alert-danger'> Data Gagal dihapus.</div>";

                }
            }
    ?>


    <table class="table table-bordered table-hover">
        <br>
        <thead>
        <tr>
            <th>No</th>
            <th>Nomor Surat</th>
            <th>Tanggal Surat</th>
            <th>Judul Surat</th>
            <th colspan='2'>Aksi</th>

        </tr>
        </thead>
        <?php
        include "koneksi.php";
        $sql="select * from surat order by id desc";

        $hasil=mysqli_query($kon,$sql);
        $no=0;
        while ($data = mysqli_fetch_array($hasil)) {
            $no++;

            ?>
            <tbody>
            <tr>
                <td><?php echo $no;?></td>
                <td><?php echo $data["nomor"]; ?></td>
                <td><?php echo $data["tanggal"];   ?></td>
                <td><?php echo $data["judul"];   ?></td>
                <td>
                    <a href="update.php?id=<?php echo htmlspecialchars($data['id']); ?>" class="btn btn-warning" role="button">Update</a>
                    <a href="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>?id=<?php echo $data['id']; ?>" class="btn btn-danger" role="button">Delete</a>
                </td>
            </tr>
            </tbody>
            <?php
        }
        ?>
    </table>
    <a href="create.php" class="btn btn-primary" role="button">Tambah Data</a>

</div>
</body>
</html>