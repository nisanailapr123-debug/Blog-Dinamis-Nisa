<?php
include 'koneksi.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Artikel</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- DataTables -->
    <link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" rel="stylesheet">

    <style>
        body {
            background: #f4f6fb;
        }
        .header {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            padding: 20px;
            border-radius: 12px;
        }
        .card {
            border-radius: 15px;
        }
        .btn-custom {
            background: #764ba2;
            color: white;
        }
        .btn-custom:hover {
            background: #5a3c8c;
            color: white;
        }
        img {
            border-radius: 10px;
            object-fit: cover;
        }
    </style>
</head>

<body>

<div class="container mt-4">

    <!-- HEADER -->
    <div class="header d-flex justify-content-between align-items-center">
        <div>
            <h4 class="mb-0">📝 Artikel Kegiatan</h4>
            <small>Kelola kegiatan organisasi kamu</small>
        </div>
        <a href="index.php" class="btn btn-light btn-sm">← Kembali</a>
    </div>

    <!-- CONTENT -->
    <div class="card mt-4 p-4 shadow">

        <div class="d-flex justify-content-between mb-3">
            <h5>Data Artikel</h5>
            <a href="tambah_artikel.php" class="btn btn-custom btn-sm">+ Tambah</a>
        </div>

        <div class="table-responsive">
        <table id="tabelArtikel" class="table table-striped table-hover align-middle">
            <thead class="table-light">
                <tr>
                    <th>No</th>
                    <th>Gambar</th>
                    <th>Judul</th>
                    <th>Tanggal</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>

            <?php
            $no = 1;
            $data = mysqli_query($conn, "SELECT * FROM artikel ORDER BY id DESC");
            while($d = mysqli_fetch_array($data)) {
            ?>
                <tr>
                    <td><?= $no++; ?></td>
                    <td>
                        <img src="upload/<?= $d['gambar']; ?>" width="70" height="50">
                    </td>
                    <td><b><?= $d['judul']; ?></b></td>
                    <td><?= date('d M Y', strtotime($d['tanggal'])); ?></td>
                    <td>
                        <a href="?menu=edit_artikel&id=<?= $d['id']; ?>" class="btn btn-warning btn-sm">Edit</a>
                        <a href="hapus_artikel.php?id=<?= $d['id']; ?>" class="btn btn-danger btn-sm" onclick="return confirm('Yakin hapus?')">Hapus</a>
                    </td>
                </tr>
            <?php } ?>

            </tbody>
        </table>
        </div>

    </div>

</div>

<!-- JS -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>

<script>
$(document).ready(function() {
    $('#tabelArtikel').DataTable({
        "language": {
            "search": "Cari:",
            "lengthMenu": "Tampilkan _MENU_ data",
            "zeroRecords": "Data tidak ditemukan",
            "info": "Menampilkan _START_ sampai _END_ dari _TOTAL_ data",
            "paginate": {
                "next": "Next",
                "previous": "Prev"
            }
        }
    });
});
</script>

</body>
</html>