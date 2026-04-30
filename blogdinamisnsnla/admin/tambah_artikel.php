<?php
include 'koneksi.php';

// ambil kategori & tag
$kategori = mysqli_query($conn, "SELECT * FROM kategori");
$tag = mysqli_query($conn, "SELECT * FROM tag");

if(isset($_POST['simpan'])){

    $judul = $_POST['judul'];
    $isi = $_POST['isi'];
    $kategori_id = $_POST['kategori_id'];

    // ======================
    // UPLOAD GAMBAR
    // ======================
    $gambar = $_FILES['gambar']['name'];
    $tmp = $_FILES['gambar']['tmp_name'];

    $namaBaru = "";

    if(!empty($gambar)){
        $ext = strtolower(pathinfo($gambar, PATHINFO_EXTENSION));
        $allowed = ['jpg','jpeg','png'];

        if(in_array($ext, $allowed)){
            $namaBaru = "artikel_" . time() . "." . $ext;
            move_uploaded_file($tmp, "gambar/".$namaBaru);
        }
    }

    // ======================
    // SIMPAN ARTIKEL
    // ======================
    mysqli_query($conn, "
    INSERT INTO artikel (judul, isi, gambar, kategori_id) 
    VALUES ('$judul','$isi','$namaBaru','$kategori_id')
    ");

    $id_artikel = mysqli_insert_id($conn);

    // ======================
    // SIMPAN TAG
    // ======================
    if(!empty($_POST['tag'])){
        foreach($_POST['tag'] as $tag_id){
            mysqli_query($conn, "
            INSERT INTO artikel_tag (artikel_id, tag_id)
            VALUES ('$id_artikel','$tag_id')
            ");
        }
    }

    echo "<script>alert('Artikel berhasil ditambahkan');location='artikel.php';</script>";
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Tambah Artikel</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body { background:#f4f6fb; }
.card { border-radius:15px; }
.btn-custom { background:#764ba2; color:white; }
</style>
</head>

<body>

<div class="container mt-4">
    <div class="card p-4 shadow">
        <h4>Tambah Artikel</h4>
        <hr>

        <form method="POST" enctype="multipart/form-data">

            <label>Judul</label>
            <input type="text" name="judul" class="form-control mb-3" required>

            <label>Isi Artikel</label>
            <textarea name="isi" class="form-control mb-3" rows="5" required></textarea>

            <label>Upload Gambar</label>
            <input type="file" name="gambar" class="form-control mb-3">

            <label>Kategori</label>
            <select name="kategori_id" class="form-control mb-3" required>
                <option value="">-- Pilih Kategori --</option>
                <?php while($k = mysqli_fetch_assoc($kategori)){ ?>
                    <option value="<?= $k['id']; ?>">
                        <?= $k['nama_kategori']; ?>
                    </option>
                <?php } ?>
            </select>

            <label>Tag</label>
            <?php while($t = mysqli_fetch_assoc($tag)){ ?>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="tag[]" value="<?= $t['id']; ?>">
                    <label class="form-check-label">
                        <?= $t['nama_tag']; ?>
                    </label>
                </div>
            <?php } ?>

            <br>

            <button type="submit" name="simpan" class="btn btn-custom">Simpan</button>
            <a href="artikel.php" class="btn btn-secondary">Kembali</a>

        </form>
    </div>
</div>

</body>
</html>