<div class="container mt-4">

    <!-- WELCOME -->
    <div class="card p-4 shadow-sm mb-4">
        <h4>Selamat Datang 👋</h4>
        <p>
            Kelola semua <b>kegiatan organisasi</b> kamu di sini.  
            Dokumentasikan pengalamanmu agar lebih terstruktur dan profesional.
        </p>
    </div>

    <!-- STATISTIK -->
    <div class="row text-center">

        <div class="col-md-4 mb-3">
            <div class="card card-artikel shadow p-3">
                <h5><i class="bi bi-journal-text"></i> Artikel</h5>
                <h2><?= $jml_artikel; ?></h2>
                <a href="artikel.php" class="btn btn-light mt-2">Kelola</a>
            </div>
        </div>

        <div class="col-md-4 mb-3">
            <div class="card card-kategori shadow p-3">
                <h5><i class="bi bi-tags"></i> Kategori</h5>
                <h2><?= $jml_kategori; ?></h2>
                <a href="kategori.php" class="btn btn-light mt-2">Kelola</a>
            </div>
        </div>

        <div class="col-md-4 mb-3">
            <div class="card card-komentar shadow p-3">
                <h5><i class="bi bi-chat-dots"></i> Komentar</h5>
                <h2><?= $jml_komentar; ?></h2>
                <a href="komentar.php" class="btn btn-light mt-2">Kelola</a>
            </div>
        </div>

    </div>

</div>