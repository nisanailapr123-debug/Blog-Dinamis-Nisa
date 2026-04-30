<?php
include 'koneksi.php';
?>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Blog Dinamis</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body { background: #f8f9fa; }

/* UNGU */
.bg-ungu { background: #6f42c1 !important; }
.btn-ungu { background: #6f42c1; color: white; }
.btn-ungu:hover { background: #5a35a0; }

/* KATEGORI */
.scroll-kategori {
    display: flex;
    gap: 10px;
    overflow-x: auto;
}
.kategori-card {
    background: white;
    border-radius: 50px;
    padding: 8px 20px;
    border: 1px solid #ddd;
    transition: 0.3s;
    white-space: nowrap;
}
.kategori-card:hover {
    background: #6f42c1;
    color: white;
}

/* ARTIKEL */
.artikel-card {
    background: white;
    border-radius: 15px;
    overflow: hidden;
    transition: 0.3s;
}
.artikel-card:hover {
    transform: translateY(-5px);
}
.artikel-img {
    height: 200px;
    object-fit: cover;
    width: 100%;
}
.artikel-body {
    padding: 15px;
}
</style>

</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark bg-ungu shadow">
<div class="container">
<a class="navbar-brand" href="index.php">📰 Blog Dinamis</a>

<div class="ms-auto d-flex gap-2">
<a href="index.php" class="btn btn-light btn-sm">Reset</a>
<a href="author/login.php" class="btn btn-ungu btn-sm">Login</a>
</div>
</div>
</nav>

<!-- SEARCH -->
<div class="container mt-3">
<form method="GET" class="d-flex">
<input type="text" name="search" class="form-control me-2"
placeholder="Cari artikel..."
value="<?= isset($_GET['search']) ? htmlspecialchars($_GET['search']) : '' ?>">
<button class="btn btn-ungu">Cari</button>
</form>
</div>

<div class="container mt-4">

<!-- KATEGORI -->
<div class="scroll-kategori mb-3">
<?php
$kat = mysqli_query($conn,"SELECT * FROM kategori");
while($k=mysqli_fetch_assoc($kat)){
?>
<a href="?kategori=<?= $k['id'] ?>" style="text-decoration:none;color:black;">
<div class="kategori-card shadow-sm">
<?= $k['nama_kategori'] ?>
</div>
</a>
<?php } ?>
</div>

<!-- JUDUL -->
<div class="d-flex justify-content-between align-items-center mt-3">
<h5>
<?php
if(isset($_GET['search']) && $_GET['search'] != ''){
    echo "Hasil pencarian: ".htmlspecialchars($_GET['search']);
}
elseif(isset($_GET['kategori']) && $_GET['kategori'] != ''){
    $id = (int) $_GET['kategori'];
    $k = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM kategori WHERE id=$id"));
    echo "Kategori: ".$k['nama_kategori'];
}else{
    echo "Semua Artikel";
}
?>
</h5>

<?php if(isset($_GET['kategori']) || isset($_GET['search'])){ ?>
<a href="index.php" class="btn btn-sm btn-outline-secondary">Reset Filter</a>
<?php } ?>
</div>

<!-- ARTIKEL -->
<div class="row">

<?php
$where = "1=1";

if(isset($_GET['kategori']) && $_GET['kategori'] != ''){
    $id = (int) $_GET['kategori'];
    $where .= " AND a.kategori_id = $id";
}

if(isset($_GET['search']) && $_GET['search'] != ''){
    $s = mysqli_real_escape_string($conn, $_GET['search']);
    $where .= " AND (a.judul LIKE '%$s%' OR a.isi LIKE '%$s%')";
}

$data = mysqli_query($conn,"
SELECT a.*, COUNT(k.id) as jumlah_komentar
FROM artikel a
LEFT JOIN komentar k ON a.id = k.artikel_id
WHERE $where
GROUP BY a.id
ORDER BY a.id DESC
");

while($a=mysqli_fetch_assoc($data)){
?>

<div class="col-md-4 mt-3">
<div class="artikel-card shadow-sm">

<a href="detail_artikel.php?id=<?= $a['id'] ?>" style="text-decoration:none;color:black;">

<img src="img/<?= !empty($a['gambar']) ? $a['gambar'] : 'default.jpg' ?>" class="artikel-img">

<div class="artikel-body">
<h6><?= htmlspecialchars($a['judul']) ?></h6>

<p class="text-muted mb-1">
<?= substr(strip_tags($a['isi']),0,100) ?>...
</p>

<small class="text-secondary">
💬 <?= $a['jumlah_komentar'] ?> komentar • 📅 <?= $a['tanggal'] ?>
</small>

</div>

</a>

</div>
</div>

<?php } ?>

</div>

</div>

</body>
</html>