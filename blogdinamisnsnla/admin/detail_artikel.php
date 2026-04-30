<h5 class="mt-4">💬 Komentar</h5>

<form action="simpan_komentar.php" method="POST">
    <input type="hidden" name="artikel_id" value="<?= $data['id']; ?>">

    <input type="text" name="nama" class="form-control mb-2" placeholder="Nama kamu" required>

    <textarea name="isi" class="form-control mb-2" placeholder="Tulis komentar..." required></textarea>

    <button class="btn btn-primary btn-sm">Kirim</button>
</form>