<?php
include 'koneksi.php';

$id = $_GET['id'];

$data = mysqli_query($conn,"
SELECT a.*, k.nama_kategori as kategori
FROM artikel a
LEFT JOIN kategori k ON a.kategori_id = k.id
WHERE a.id = $id
");

$d = mysqli_fetch_assoc($data);
?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><?= $d['judul'] ?></title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<div class="container mt-4">

<a href="index.php" class="btn btn-secondary mb-3">← Kembali</a>

<!-- ARTIKEL -->
<div class="card p-4 shadow">
<h3><?= $d['judul'] ?></h3>

<span class="badge bg-primary">
<?= $d['kategori'] ?? 'Tidak ada kategori' ?>
</span>

<hr>

<p><?= nl2br($d['isi']) ?></p>
</div>

<!-- KOMENTAR -->
<div class="card p-3 shadow mt-4">
<h5>Komentar</h5>

<?php
$k=mysqli_query($conn,"SELECT * FROM komentar WHERE artikel_id=$id");
while($c=mysqli_fetch_assoc($k)){
?>
<div class="mb-2">
<b><?= $c['nama'] ?></b><br>
<?= $c['isi'] ?><br>
<small><?= $c['tanggal'] ?></small>
</div>
<hr>
<?php } ?>

<!-- FORM -->
<form action="simpan_komentar.php" method="POST">

<input type="hidden" name="artikel_id" value="<?= $id ?>">

<input type="text" name="nama" class="form-control mb-2" placeholder="Nama" required>

<textarea name="isi" class="form-control mb-2" placeholder="Komentar..." required></textarea>

<button class="btn btn-primary">Kirim</button>

</form>

</div>

</div>

</body>
</html>