<?php
session_start();
include "koneksi.php";

if ($_SESSION['role'] != 'author') {
    header("Location: login.php");
    exit;
}

$id = $_SESSION['id'];

// QUERY + JOIN KATEGORI
$data = mysqli_query($conn, "
SELECT artikel.*, kategori.nama_kategori 
FROM artikel 
LEFT JOIN kategori ON artikel.kategori_id = kategori.id
WHERE artikel.staf_id='$id'
ORDER BY artikel.id DESC
");
?>

<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<title>Artikel Saya</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- DataTables -->
<link href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css" rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<style>
body {
    background: #f1f3f9;
}

.header {
    background: linear-gradient(135deg,#667eea,#764ba2);
    color: white;
    padding: 20px;
    border-radius: 15px;
}

.card-custom {
    border-radius: 15px;
}

.table thead {
    background: #667eea;
    color: white;
}

.table tbody tr:hover {
    background: #eef1ff;
}

.img-thumb {
    width: 60px;
    height: 60px;
    object-fit: cover;
    border-radius: 10px;
}
</style>
</head>

<body>

<div class="container mt-4">

    <!-- HEADER -->
    <div class="header d-flex justify-content-between align-items-center">
        <h4 class="mb-0"><i class="bi bi-journal-text"></i> Artikel Saya</h4>
        <a href="dashboard.php" class="btn btn-light btn-sm">
            <i class="bi bi-arrow-left"></i> Kembali
        </a>
    </div>

    <!-- CARD -->
    <div class="card card-custom mt-4 shadow p-4">

        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5 class="mb-0">📋 Data Artikel</h5>
            <a href="tambah_artikel.php" class="btn btn-primary btn-sm">
                <i class="bi bi-plus-circle"></i> Tambah Artikel
            </a>
        </div>

        <!-- TABLE -->
        <div class="table-responsive">
            <table id="tabel" class="table table-striped align-middle">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Gambar</th>
                        <th>Judul</th>
                        <th>Kategori</th>
                        <th>Tanggal</th>
                        <th class="text-center">Aksi</th>
                    </tr>
                </thead>

                <tbody>
                <?php $no=1; while($d=mysqli_fetch_assoc($data)){ ?>
                    <tr>
                        <td><?= $no++; ?></td>

                        <!-- GAMBAR -->
                        <td>
                            <?php if(!empty($d['gambar']) && file_exists("gambar/".$d['gambar'])){ ?>
                                <img src="gambar/<?= $d['gambar']; ?>" class="img-thumb">
                            <?php } else { ?>
                                <span class="text-muted">Tidak ada</span>
                            <?php } ?>
                        </td>

                        <td><?= $d['judul']; ?></td>

                        <td>
                            <span class="badge bg-primary">
                                <?= $d['nama_kategori'] ?? 'Tidak ada'; ?>
                            </span>
                        </td>

                        <td><?= date('d M Y', strtotime($d['tanggal'])); ?></td>

                        <td class="text-center">
                            <a href="edit_artikel.php?id=<?= $d['id']; ?>" class="btn btn-warning btn-sm">
                                <i class="bi bi-pencil-square"></i>
                            </a>

                            <a href="hapus_artikel.php?id=<?= $d['id']; ?>" 
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Yakin hapus artikel ini?')">
                                <i class="bi bi-trash"></i>
                            </a>
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

<script>
$(document).ready(function() {
    $('#tabel').DataTable({
        pageLength: 5,
        language: {
            search: "🔍 Cari:",
            lengthMenu: "Tampilkan _MENU_ data",
            zeroRecords: "Data tidak ditemukan",
            info: "Menampilkan _START_ - _END_ dari _TOTAL_ data",
            paginate: {
                next: "→",
                previous: "←"
            }
        }
    });
});
</script>

</body>
</html>