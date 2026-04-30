<footer class="mt-5">

    <style>
        .footer-custom {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
        }
        .footer-link {
            color: #e0e0ff;
            text-decoration: none;
            margin: 0 10px;
            transition: 0.3s;
        }
        .footer-link:hover {
            color: #ffffff;
            text-decoration: underline;
        }
        .footer-icon {
            font-size: 18px;
            margin: 0 8px;
            color: #e0e0ff;
            transition: 0.3s;
        }
        .footer-icon:hover {
            color: #ffffff;
            transform: scale(1.2);
        }
    </style>

    <div class="footer-custom pt-4 pb-3 shadow">

        <div class="container text-center">

            <!-- Judul -->
            <h5 class="mb-2">✨ Blog Organisasi</h5>

            <!-- Deskripsi -->
            <p class="mb-3" style="font-size: 14px;">
                Dokumentasi kegiatan, pengalaman, dan perjalanan organisasi
            </p>

            <!-- Menu -->
            <div class="mb-3">
                <a href="dashboard.php" class="footer-link">Dashboard</a>
                <a href="artikel.php" class="footer-link">Artikel</a>
                <a href="kategori.php" class="footer-link">Kategori</a>
            </div>

            <!-- Sosial / Icon -->
            <div class="mb-3">
                <i class="bi bi-instagram footer-icon"></i>
                <i class="bi bi-whatsapp footer-icon"></i>
                <i class="bi bi-envelope footer-icon"></i>
            </div>

            <!-- Copyright -->
            <small style="opacity: 0.8;">
                © <?= date('Y'); ?> Blog Organisasi • Made with ❤️
            </small>

        </div>

    </div>

</footer>