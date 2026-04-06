<?php
include "koneksi.php";

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit;
}

// HITUNG DATA
$jml_artikel   = mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(*) as total FROM artikel"))['total'];
$jml_kategori  = mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(*) as total FROM kategori"))['total'];
$jml_komentar  = mysqli_fetch_assoc(mysqli_query($conn, "SELECT COUNT(*) as total FROM komentar"))['total'];

// AMBIL DATA DROPDOWN
$kategori = mysqli_query($conn, "SELECT * FROM kategori");
$tag = mysqli_query($conn, "SELECT * FROM tag");
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Blog Organisasi</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body { background: #f4f6fb; }

        .navbar {
            background: linear-gradient(135deg, #667eea, #764ba2);
        }

        .card {
            border-radius: 12px;
        }

        .card-artikel {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
        }

        .card-kategori {
            background: linear-gradient(135deg, #43cea2, #185a9d);
            color: white;
        }

        .card-komentar {
            background: linear-gradient(135deg, #f7971e, #ffd200);
            color: white;
        }

        .dropdown-menu {
            border-radius: 10px;
        }

        .dropdown-item:hover {
            background: #f0f2ff;
        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark shadow">
  <div class="container">
    
    <a class="navbar-brand" href="dashboard.php">
        <i class="bi bi-journal-text"></i> Blog Organisasi
    </a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">

        <!-- MENU -->
        <ul class="navbar-nav me-auto">

            <li class="nav-item">
                <a class="nav-link active" href="index.php">
                    <i class="bi bi-speedometer2"></i> Dashboard
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="index.php?menu=artikel">
                    <i class="bi bi-journal-text"></i> Artikel
                </a>
            </li>

            <!-- DROPDOWN -->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-tags"></i> Kategori & Tag
                </a>

                <ul class="dropdown-menu shadow">

                    <li class="dropdown-header">Kategori</li>
                    <?php while($k = mysqli_fetch_assoc($kategori)) { ?>
                        <li>
                            <a class="dropdown-item" href="index.php?menu=artikel&kategori=<?= $k['id']; ?>">
                                <?= $k['nama_kategori']; ?>
                            </a>
                        </li>
                    <?php } ?>

                    <li><hr class="dropdown-divider"></li>

                    <li class="dropdown-header">Tag</li>
                    <?php while($t = mysqli_fetch_assoc($tag)) { ?>
                        <li>
                            <a class="dropdown-item" href="index.php?menu=artikel&tag=<?= $t['id']; ?>">
                                #<?= $t['nama_tag']; ?>
                            </a>
                        </li>
                    <?php } ?>

                </ul>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="komentar.php">
                    <i class="bi bi-chat-dots"></i> Komentar
                </a>
            </li>

        </ul>

        <!-- USER -->
        <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                    <i class="bi bi-person-circle"></i> <?= $_SESSION['username']; ?>
                </a>
                <ul class="dropdown-menu dropdown-menu-end">
                    <li class="dropdown-item-text">
                        Role: <b><?= $_SESSION['role']; ?></b>
                    </li>
                    <li><hr class="dropdown-divider"></li>
                    <li>
                        <a class="dropdown-item text-danger" href="logout.php">
                            <i class="bi bi-box-arrow-right"></i> Logout
                        </a>
                    </li>
                </ul>
            </li>
        </ul>

    </div>
  </div>
</nav>

<!-- CONTENT DASHBOARD -->

<!-- ROUTING -->
<?php include "menu.php"; ?>

<!-- FOOTER -->
<?php include "footer.php"; ?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>