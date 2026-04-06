<!DOCTYPE html>
<html>
<head>
    <title>Tambah Kategori</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">
<div class="container mt-4">

<h3>Tambah Kategori</h3>

<form action="simpan_kategori.php" method="POST">
    <input type="text" name="nama_kategori" class="form-control mb-2" required>
    <button class="btn btn-primary">Simpan</button>
    <a href="kategori.php" class="btn btn-secondary">Kembali</a>
</form>

</div>
</body>
</html>