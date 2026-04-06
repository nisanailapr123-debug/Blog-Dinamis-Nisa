<?php
include "koneksi.php";
$data = mysqli_query($conn, "SELECT * FROM kategori ORDER BY id DESC");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Kategori</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" rel="stylesheet">

    <style>
        body { background:#f4f6fb; }
        .header {
            background: linear-gradient(135deg,#667eea,#764ba2);
            color:white;
            padding:20px;
            border-radius:12px;
        }
    </style>
</head>

<body>
<div class="container mt-4">

    <div class="header d-flex justify-content-between">
        <h4>🏷️ Kategori</h4>
        <a href="dashboard.php" class="btn btn-light btn-sm">← Kembali</a>
    </div>

    <div class="card mt-4 p-4 shadow">
        <div class="d-flex justify-content-between mb-3">
            <h5>Data Kategori</h5>
            <a href="tambah_kategori.php" class="btn btn-primary btn-sm">+ Tambah</a>
        </div>

        <table id="tabelKategori" class="table table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Kategori</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
            <?php $no=1; while($d=mysqli_fetch_assoc($data)){ ?>
                <tr>
                    <td><?= $no++; ?></td>
                    <td><?= $d['nama_kategori']; ?></td>
                    <td>
                        <a href="edit_kategori.php?id=<?= $d['id']; ?>" class="btn btn-warning btn-sm">Edit</a>
                        <a href="hapus_kategori.php?id=<?= $d['id']; ?>" class="btn btn-danger btn-sm" onclick="return confirm('Hapus?')">Hapus</a>
                    </td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>

</div>

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>

<script>
$('#tabelKategori').DataTable();
</script>
</body>
</html>