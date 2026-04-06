<?php
include "koneksi.php";

$data = mysqli_query($conn, "
SELECT komentar.*, artikel.judul 
FROM komentar
JOIN artikel ON komentar.artikel_id = artikel.id
ORDER BY komentar.id DESC
");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Komentar</title>

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
        .card {
            border-radius: 12px;
        }
    </style>
</head>

<body>
<div class="container mt-4">

    <!-- HEADER -->
    <div class="header d-flex justify-content-between align-items-center">
        <h4>💬 Komentar</h4>
        <a href="index.php" class="btn btn-light btn-sm">← Kembali</a>
    </div>

    <!-- CONTENT -->
    <div class="card mt-4 p-4 shadow">

        <div class="d-flex justify-content-between mb-3">
            <h5>Data Komentar</h5>
        </div>

        <table id="tabelKomentar" class="table table-striped table-hover align-middle">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Artikel</th>
                    <th>Nama</th>
                    <th>Komentar</th>
                    <th>Tanggal</th>
                    <th>Aksi</th>
                </tr>
            </thead>

            <tbody>
            <?php $no=1; while($d=mysqli_fetch_assoc($data)){ ?>
                <tr>
                    <td><?= $no++; ?></td>
                    <td><b><?= $d['judul']; ?></b></td>
                    <td><?= $d['nama']; ?></td>
                    <td><?= $d['isi']; ?></td>
                    <td><?= date('d M Y H:i', strtotime($d['tanggal'])); ?></td>
                    <td>
                        <a href="hapus_komentar.php?id=<?= $d['id']; ?>" 
                           class="btn btn-danger btn-sm"
                           onclick="return confirm('Yakin hapus komentar ini?')">
                           Hapus
                        </a>
                    </td>
                </tr>
            <?php } ?>
            </tbody>

        </table>

    </div>

</div>

<!-- JS -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>

<script>
$('#tabelKomentar').DataTable({
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
</script>

</body>
</html>