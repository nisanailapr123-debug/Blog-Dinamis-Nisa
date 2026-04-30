-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2026 at 02:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensionline`
--
CREATE DATABASE IF NOT EXISTS `absensionline` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `absensionline`;

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `absensionlinensnla`
--
CREATE DATABASE IF NOT EXISTS `absensionlinensnla` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `absensionlinensnla`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `blogdinamis`
--
CREATE DATABASE IF NOT EXISTS `blogdinamis` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blogdinamis`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `blogdinamisgagal`
--
CREATE DATABASE IF NOT EXISTS `blogdinamisgagal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blogdinamisgagal`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `category_id`, `created_at`) VALUES
(2, 'Himpunan Mahasiswa Informatika (HIMAFOR) Gelar Rapat Kerja (RAKER) untuk Menyusun Program Nyata bagi Mahasiswa Informatika', 'Himpunan Mahasiswa Informatika (HIMAFOR) menyelenggarakan Rapat Kerja (RAKER) kepengurusan periode 2026–2027 pada hari Minggu, 15 Februari 2026 bertempat di ruang Laboratorium Jaringan Gedung Siber Lantai 7. Kegiatan ini menjadi langkah awal dalam merumuskan Program Kerja dan kegiatan organisasi selama satu periode ke depan agar selaras dengan kebutuhan Mahasiswa Informatika. Rapat Kerja (RAKER) dilaksanakan melalui sidang pleno dengan mekanisme musyawarah mufakat. suasana kegiatan berlangsung serius, demokratis, namun tetap hangat dan penuh semangat kebersamaan antar pengurus.\r\n\r\nPersidangan Rapat Kerja (RAKER) dibuka oleh Pimpinan Sidang I yaitu Haikal Azkal Azkiya (Ketua Umum HIMAFOR) dan Pimpinan Sidang II Muhammad ‘Arif Nur Shidiq (Wakil Ketua Umum HIMAFOR), kemudian dilanjutkan dengan pembahasan tata tertib persidangan pada pleno 1 sebagai pedoman jalannya kegiatan. Sedangkan pleno 2 setiap departemen HIMAFOR memaparkan rancangan Program Kerja, Agenda Kegiatan, serta teknis pelaksanaan yang akan dijalankan selama satu periode kepengurusan. Melalui forum ini, para peserta diberikan kesempatan untuk menyampaikan saran, masukan, serta tanggapan guna menyempurnakan program yang telah dirancang.\r\n', 2, '2026-04-02 15:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `article_tags`
--

CREATE TABLE `article_tags` (
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_tags`
--

INSERT INTO `article_tags` (`article_id`, `tag_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'nisa'),
(2, 'nisa, nzail');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','author') DEFAULT 'author'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `article_tags`
--
ALTER TABLE `article_tags`
  ADD KEY `article_id` (`article_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `article_tags`
--
ALTER TABLE `article_tags`
  ADD CONSTRAINT `article_tags_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `article_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
--
-- Database: `blogdinamisnisa`
--
CREATE DATABASE IF NOT EXISTS `blogdinamisnisa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blogdinamisnisa`;

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staf`
--

INSERT INTO `staf` (`id`, `username`, `password`, `nama`, `created_at`) VALUES
(1, 'admin', '$2y$10$wH8Qz5u7kP0X9qYq6u5YzO1FjYJ6KJ3gX0yX2Z3rW8q9uL5kG9e2a', 'Administrator', '2026-04-04 03:56:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staf`
--
ALTER TABLE `staf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `blogdinamisns`
--
CREATE DATABASE IF NOT EXISTS `blogdinamisns` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blogdinamisns`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `kategori` varchar(100) DEFAULT NULL,
  `tanggal_kegiatan` date DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `isi`, `created_at`, `kategori`, `tanggal_kegiatan`, `lokasi`, `gambar`) VALUES
(2, 'a', 'a', '2026-04-04 06:43:22', 'a', '1111-11-11', 'a', 'WhatsApp Image 2026-04-01 at 20.24.17.jpeg'),
(3, 'b', 'b', '2026-04-04 06:43:46', 'b', '2222-02-22', 'b', 'Gambar WhatsApp 2025-09-18 pukul 22.50.02_33871e2a.jpg'),
(4, 'c', 'cc', '2026-04-04 06:44:56', 'c', '3333-03-31', 'v', 'WIN_20250602_15_15_11_Pro.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staf`
--

INSERT INTO `staf` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staf`
--
ALTER TABLE `staf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `blogdinamisnsnla`
--
CREATE DATABASE IF NOT EXISTS `blogdinamisnsnla` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blogdinamisnsnla`;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal` datetime DEFAULT current_timestamp(),
  `kategori_id` int(11) DEFAULT NULL,
  `staf_id` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `kategori_id`, `staf_id`, `views`) VALUES
(267, 'Kegiatan Fortation 2025 HIMAFOR: Membangun Solidaritas dan Semangat Mahasiswa Baru', 'Kegiatan Fortation 2025 yang diselenggarakan oleh Himpunan Mahasiswa Informatika (HIMAFOR) menjadi salah satu momen penting dalam menyambut mahasiswa baru di lingkungan kampus. Acara ini bertujuan untuk memperkenalkan dunia perkuliahan, khususnya di bidang informatika, sekaligus membangun rasa kebersamaan antar mahasiswa.\r\n\r\nFortation (Forum Orientation) tahun ini mengusung tema \"Membangun Generasi Informatika yang Aktif, Kreatif, dan Berintegritas\". Kegiatan ini diikuti oleh seluruh mahasiswa baru program studi informatika dengan penuh antusiasme.\r\n\r\nSelama kegiatan berlangsung, peserta mendapatkan berbagai materi menarik seperti pengenalan organisasi HIMAFOR, sistem perkuliahan, serta peluang karir di bidang teknologi. Tidak hanya itu, terdapat juga sesi motivasi yang memberikan semangat kepada mahasiswa baru agar siap menghadapi tantangan di dunia perkuliahan.\r\n\r\nSelain materi, Fortation 2025 juga diisi dengan kegiatan interaktif seperti games, diskusi kelompok, dan ice breaking yang membuat suasana menjadi lebih seru dan tidak membosankan. Kegiatan ini bertujuan untuk mempererat hubungan antar mahasiswa baru serta kakak tingkat.\r\n\r\nDengan adanya Fortation 2025, diharapkan mahasiswa baru dapat lebih mengenal lingkungan kampus, aktif dalam organisasi, serta memiliki semangat belajar yang tinggi. HIMAFOR sebagai penyelenggara juga berharap kegiatan ini dapat menjadi awal yang baik dalam perjalanan akademik mahasiswa.\r\n\r\nKegiatan ini ditutup dengan sesi refleksi dan dokumentasi bersama sebagai kenang-kenangan. Fortation 2025 bukan hanya sekadar kegiatan orientasi, tetapi juga menjadi langkah awal dalam membangun solidaritas dan kebersamaan di lingkungan mahasiswa informatika.', 'Fortation.jpeg', '2026-04-11 19:09:53', NULL, NULL, 0),
(268, 'Kegiatan Pramuka Kompas Jabar: Membangun Karakter dan Jiwa Kepemimpinan Generasi Muda', 'Cirebon – Semangat Kolaborasi dan Pengabdian Pramuka di Jawa Barat\r\n\r\nKegiatan KOMPAS Jabar (Kompetisi dan Pengabdian Pramuka Jawa Barat) kembali menjadi ajang bergengsi yang mempertemukan para anggota Pramuka dari berbagai perguruan tinggi di Jawa Barat. Salah satu peserta yang turut berpartisipasi adalah Pramuka UIN Siber Syekh Nurjati Cirebon, yang menunjukkan semangat tinggi dalam setiap rangkaian kegiatan.\r\n\r\nKegiatan ini tidak hanya menjadi ajang kompetisi, tetapi juga wadah untuk mempererat persaudaraan, meningkatkan keterampilan kepramukaan, serta menumbuhkan jiwa kepemimpinan dan pengabdian kepada masyarakat.\r\n\r\nPartisipasi Pramuka UIN Siber Syekh Nurjati Cirebon\r\n\r\nDelegasi Pramuka dari UIN Siber Syekh Nurjati Cirebon tampil dengan penuh semangat dan disiplin dalam berbagai cabang lomba yang diadakan. Mulai dari lomba ketangkasan, pengetahuan kepramukaan, hingga kegiatan lapangan yang menguji kerja sama tim.\r\n\r\nSelain mengikuti perlombaan, para peserta juga aktif dalam kegiatan sosial dan pengabdian masyarakat yang menjadi ciri khas KOMPAS Jabar. Hal ini menunjukkan bahwa Pramuka tidak hanya berfokus pada kompetisi, tetapi juga pada nilai-nilai kemanusiaan dan kepedulian sosial.\r\n\r\nTujuan dan Manfaat Kegiatan\r\n\r\nKOMPAS Jabar memiliki beberapa tujuan utama, di antaranya:\r\n\r\nMeningkatkan kualitas sumber daya anggota Pramuka\r\nMenumbuhkan jiwa kepemimpinan dan kemandirian\r\nMempererat tali persaudaraan antar Pramuka perguruan tinggi\r\nMengasah kemampuan kerja sama tim dan problem solving\r\n\r\nBagi Pramuka UIN Siber Syekh Nurjati Cirebon, kegiatan ini menjadi pengalaman berharga yang dapat menambah wawasan serta memperkuat karakter sebagai generasi muda yang tangguh dan berintegritas.\r\n\r\nHarapan ke Depan\r\n\r\nDengan adanya kegiatan seperti KOMPAS Jabar, diharapkan Pramuka di lingkungan perguruan tinggi semakin aktif, kreatif, dan inovatif. Pramuka UIN Siber Syekh Nurjati Cirebon juga diharapkan dapat terus berkontribusi dalam berbagai kegiatan positif, baik di tingkat regional maupun nasional.\r\n\r\nKegiatan ini menjadi bukti bahwa semangat Pramuka tetap hidup dan relevan dalam membentuk generasi muda yang siap menghadapi tantangan zaman.', 'Kompasjabar.jpeg', '2026-04-11 19:16:28', NULL, NULL, 0),
(269, 'Perjalanan Berharga di Pemilihan Duta Kampus UIN Siber Syekh Nurjati Cirebon', 'Mengikuti kegiatan Pemilihan Duta Kampus UIN Siber Syekh Nurjati Cirebon merupakan salah satu pengalaman yang sangat berkesan dalam perjalanan saya sebagai mahasiswa. Kegiatan ini bukan hanya sekadar ajang kompetisi, tetapi juga menjadi wadah untuk mengembangkan diri, menambah relasi, serta meningkatkan rasa percaya diri.\r\n\r\nAwal Mula Mengikuti Kegiatan\r\n\r\nAwalnya saya tidak pernah menyangka akan ikut serta dalam ajang pemilihan duta kampus. Namun, dorongan dari teman-teman serta keinginan untuk mencoba hal baru membuat saya memberanikan diri mendaftar. Proses seleksi yang harus dilalui cukup menantang, mulai dari administrasi, wawancara, hingga unjuk bakat dan pengetahuan umum tentang kampus.\r\n\r\nProses Seleksi yang Menantang\r\n\r\nSetiap tahap seleksi memberikan pengalaman berharga bagi saya. Pada sesi wawancara, saya belajar bagaimana menyampaikan ide dan pendapat dengan percaya diri. Sementara itu, pada tahap unjuk bakat, saya berusaha menampilkan kemampuan terbaik yang saya miliki.\r\n\r\nTidak hanya itu, saya juga bertemu dengan banyak peserta lain yang memiliki latar belakang dan kemampuan luar biasa. Hal ini membuat saya semakin termotivasi untuk terus belajar dan berkembang.\r\n\r\nPengalaman Berharga yang Didapat\r\n\r\nSelama mengikuti kegiatan ini, saya mendapatkan banyak pelajaran penting, di antaranya:\r\n\r\nMeningkatkan rasa percaya diri\r\nBelajar public speaking yang baik\r\nMenambah relasi dan teman baru\r\nMelatih kedisiplinan dan tanggung jawab\r\nMemahami pentingnya citra diri sebagai mahasiswa\r\nKesimpulan\r\n\r\nBagi saya, mengikuti Pemilihan Duta Kampus UIN Siber Syekh Nurjati Cirebon adalah pengalaman yang sangat berharga. Walaupun hasil akhir bukanlah satu-satunya tujuan, proses yang saya jalani memberikan banyak pelajaran yang tidak ternilai.\r\n\r\nSaya berharap kegiatan seperti ini terus diadakan agar mahasiswa dapat terus mengembangkan potensi diri dan menjadi generasi yang lebih percaya diri, aktif, dan berprestasi.', 'Pemilihan duka kampus.jpeg', '2026-04-11 19:19:03', NULL, NULL, 0),
(270, 'On Duty sebagai MC Kegiatan Smart Pro Korps Protokoler Pramuka Pancasena UIN Siber Syekh Nurjati Cirebon', 'Menjadi Master of Ceremony (MC) dalam sebuah kegiatan resmi merupakan pengalaman yang sangat berharga bagi saya. Pada kesempatan ini, saya mendapat amanah untuk on duty sebagai MC dalam kegiatan Smart Pro Korps Protokoler Pramuka Pancasena UIN Siber Syekh Nurjati Cirebon.\r\n\r\nAwal Persiapan\r\n\r\nSebelum kegiatan dimulai, saya melakukan berbagai persiapan, mulai dari mempelajari rundown acara, memahami susunan acara, hingga berlatih dalam penyampaian kata-kata agar lebih percaya diri. Sebagai MC, saya menyadari bahwa peran ini sangat penting dalam menjaga kelancaran jalannya acara.\r\n\r\nPersiapan mental juga menjadi hal utama. Rasa gugup tentu ada, namun hal tersebut saya jadikan motivasi untuk memberikan yang terbaik.\r\n\r\nPelaksanaan Tugas sebagai MC\r\n\r\nSaat hari pelaksanaan, saya mulai menjalankan tugas sebagai MC sesuai dengan susunan acara yang telah ditentukan. Saya berusaha untuk menjaga intonasi suara, kejelasan penyampaian, serta ketepatan waktu agar acara berjalan dengan baik dan tertib.\r\n\r\nMenjadi bagian dari Korps Protokoler Pramuka Pancasena memberikan pengalaman tersendiri dalam memahami bagaimana sebuah acara formal dikelola secara profesional, rapi, dan penuh tanggung jawab.\r\n\r\nTantangan yang Dihadapi\r\n\r\nSelama menjadi MC, terdapat beberapa tantangan yang saya hadapi, seperti rasa gugup di awal acara, menjaga fokus agar tidak salah menyebutkan susunan acara, serta menyesuaikan tempo dengan kondisi di lapangan.\r\n\r\nNamun, dengan dukungan panitia serta latihan yang telah dilakukan sebelumnya, semua tantangan tersebut dapat saya lalui dengan baik.\r\n\r\nPelajaran yang Didapat\r\n\r\nDari pengalaman ini, saya mendapatkan banyak pelajaran berharga, di antaranya:\r\n\r\nMeningkatkan kemampuan public speaking\r\nMelatih rasa percaya diri\r\nBelajar mengelola emosi dan rasa gugup\r\nMemahami pentingnya kerja sama dalam sebuah kepanitiaan\r\nMenambah pengalaman dalam dunia protokoler\r\nKesimpulan\r\n\r\nMenjadi MC dalam kegiatan Smart Pro Korps Protokoler Pramuka Pancasena UIN Siber Syekh Nurjati Cirebon adalah pengalaman yang sangat berkesan dan penuh pembelajaran. Pengalaman ini tidak hanya melatih kemampuan berbicara di depan umum, tetapi juga membentuk kedisiplinan, tanggung jawab, serta profesionalisme.\r\n\r\nSaya berharap pengalaman ini dapat menjadi bekal untuk kegiatan-kegiatan berikutnya dan terus meningkatkan kualitas diri di bidang protokoler dan komunikasi.', 'smart pro.jpeg', '2026-04-11 19:23:35', NULL, NULL, 0),
(271, 'On Duty Drigen pada Kegiatan Bimtek Orgakum Kwarcab Kota Cirebon', 'Menjadi bagian dari kepanitiaan dalam sebuah kegiatan kepramukaan adalah pengalaman yang sangat berharga. Pada kesempatan ini, saya mendapat amanah sebagai on duty drigen (dirigen) dalam kegiatan Bimbingan Teknis (Bimtek) Orgakum Kwartir Cabang Kota Cirebon.\r\n\r\nAwal Persiapan\r\n\r\nSebelum kegiatan dimulai, saya melakukan beberapa persiapan penting, seperti memahami susunan acara, mempelajari lagu-lagu yang akan dipimpin, serta melatih gerakan dirigen agar lebih kompak dan percaya diri. Selain itu, saya juga berusaha menjaga kondisi mental agar tetap tenang saat tampil di depan peserta.\r\n\r\nPelaksanaan Tugas Drigen\r\n\r\nSaat pelaksanaan kegiatan, saya bertugas memimpin jalannya lagu-lagu dalam acara dengan gerakan dirigen. Tugas ini menuntut konsentrasi tinggi, ketepatan tempo, serta kekompakan dengan peserta agar suasana acara tetap tertib dan khidmat.\r\n\r\nMomen menjadi dirigen memberikan pengalaman tersendiri, karena saya harus mampu mengendalikan ritme dan memastikan seluruh peserta dapat mengikuti dengan baik.\r\n\r\nTantangan yang Dihadapi\r\n\r\nSelama menjalankan tugas sebagai drigen, ada beberapa tantangan yang saya hadapi, seperti rasa gugup saat pertama kali berdiri di depan peserta, menjaga fokus agar tidak kehilangan tempo, serta memastikan gerakan tetap jelas dan kompak.\r\n\r\nNamun, dengan latihan dan dukungan dari rekan-rekan panitia, semua tantangan tersebut dapat saya jalani dengan baik.\r\n\r\nPelajaran yang Didapat\r\n\r\nDari pengalaman ini, saya mendapatkan banyak pembelajaran berharga, di antaranya:\r\n\r\nMeningkatkan rasa percaya diri\r\nMelatih konsentrasi dan ketepatan waktu\r\nBelajar kerja sama dalam sebuah kegiatan\r\nMengembangkan kemampuan kepemimpinan\r\nMenambah pengalaman di bidang keprotokolan kepramukaan\r\nKesimpulan\r\n\r\nMenjadi on duty drigen pada kegiatan Bimtek Orgakum Kwarcab Kota Cirebon merupakan pengalaman yang sangat berkesan. Tugas ini tidak hanya melatih kemampuan teknis dalam memimpin lagu, tetapi juga membentuk mental, disiplin, dan rasa tanggung jawab.\r\n\r\nSaya berharap pengalaman ini dapat menjadi langkah awal untuk terus berkembang dan berkontribusi dalam kegiatan-kegiatan kepramukaan selanjutnya.', 'orgakum.jpeg', '2026-04-11 19:29:30', NULL, NULL, 0),
(272, 'Kegiatan Upgrading Gerakan Pramuka UIN Siber Syekh Nurjati Cirebon', 'Kegiatan upgrading Pramuka UIN Siber Syekh Nurjati Cirebon merupakan salah satu program penting yang bertujuan untuk meningkatkan kualitas, kemampuan, serta kapasitas anggota Pramuka dalam menjalankan peran organisasi. Kegiatan ini menjadi wadah pembinaan agar setiap anggota semakin siap, solid, dan profesional dalam berorganisasi.\r\n\r\nTujuan Kegiatan Upgrading\r\n\r\nUpgrading ini dilaksanakan dengan tujuan utama untuk meningkatkan kompetensi anggota, baik dalam bidang kepramukaan maupun kepemimpinan. Selain itu, kegiatan ini juga menjadi sarana evaluasi dan penguatan karakter agar setiap anggota memiliki semangat disiplin, tanggung jawab, dan kerja sama yang baik.\r\n\r\nRangkaian Kegiatan\r\n\r\nDalam kegiatan upgrading ini, peserta mengikuti berbagai sesi materi dan pelatihan yang bermanfaat, di antaranya:\r\n\r\nPenguatan nilai-nilai dasar kepramukaan\r\nManajemen organisasi dan kepemimpinan\r\nPublic speaking dan komunikasi efektif\r\nTeam building dan kerja sama tim\r\nEvaluasi program kerja organisasi\r\n\r\nSetiap sesi dirancang agar peserta tidak hanya memahami teori, tetapi juga mampu menerapkannya dalam kegiatan organisasi sehari-hari.\r\n\r\nManfaat yang Didapat\r\n\r\nKegiatan upgrading memberikan banyak manfaat bagi anggota, khususnya bagi Pramuka UIN Siber Syekh Nurjati Cirebon, di antaranya:\r\n\r\nMeningkatkan kemampuan kepemimpinan\r\nMenambah wawasan organisasi\r\nMemperkuat solidaritas antar anggota\r\nMelatih kedisiplinan dan tanggung jawab\r\nMeningkatkan rasa percaya diri dalam berorganisasi\r\nKesimpulan\r\n\r\nKegiatan upgrading Pramuka menjadi langkah penting dalam membentuk anggota yang lebih berkualitas dan siap menghadapi tantangan organisasi. Melalui kegiatan ini, diharapkan seluruh anggota dapat terus berkembang dan memberikan kontribusi terbaik bagi organisasi maupun lingkungan kampus.\r\n\r\nDengan adanya kegiatan ini, Pramuka UIN Siber Syekh Nurjati Cirebon semakin menunjukkan komitmennya dalam mencetak generasi muda yang aktif, tangguh, dan berkarakter.', 'upgreading.jpeg', '2026-04-11 19:36:54', NULL, NULL, 0),
(282, 'Ngoding (Ngopi Dingin): Kombinasi Santai yang Bikin Produktif', 'Di era digital seperti sekarang, ngoding bukan lagi sekadar aktivitas teknis, tapi sudah menjadi gaya hidup. Banyak programmer—baik pemula maupun profesional—punya ritual sendiri supaya tetap fokus dan produktif. Salah satu yang paling populer? Ngoding sambil ditemani segelas kopi dingin.\r\n\r\nKenapa Harus Kopi Dingin?\r\n\r\nBerbeda dengan kopi panas yang identik dengan suasana serius atau formal, kopi dingin memberikan kesan santai dan fresh. Sensasi dinginnya bisa membantu menjaga fokus, terutama saat ngoding di siang hari atau ketika cuaca lagi panas.\r\n\r\nSelain itu, kandungan kafein dalam kopi tetap bekerja sama efektifnya untuk meningkatkan konsentrasi, memperbaiki mood, dan mengurangi rasa ngantuk. Jadi, walaupun suasananya santai, otak tetap “on fire”.\r\n\r\nNgoding Lebih Fokus dan Flow\r\n\r\nBanyak programmer percaya bahwa kondisi terbaik saat ngoding adalah ketika masuk ke dalam “flow state”—yaitu kondisi di mana kita benar-benar tenggelam dalam pekerjaan tanpa distraksi. Ngopi dingin bisa jadi salah satu pemicu untuk masuk ke kondisi ini.\r\n\r\nBayangkan: duduk di depan laptop, playlist favorit mengalun pelan, dan segelas kopi dingin di samping. Perlahan, baris demi baris kode mulai tersusun rapi. Error yang tadinya bikin pusing jadi terasa lebih ringan untuk dipecahkan.\r\n\r\nTeman Setia Begadang\r\n\r\nTidak bisa dipungkiri, dunia ngoding seringkali identik dengan begadang—entah itu karena deadline, debugging, atau sekadar eksplorasi. Di saat seperti ini, kopi dingin jadi sahabat terbaik.\r\n\r\nDibanding kopi panas yang kadang bikin cepat enek saat diminum terus-menerus, kopi dingin terasa lebih ringan dan menyegarkan, sehingga cocok untuk menemani sesi coding yang panjang.\r\n\r\nLebih dari Sekadar Minuman\r\n\r\nNgopi sambil ngoding bukan cuma soal kafein, tapi juga soal suasana. Ini tentang menciptakan momen nyaman agar ide-ide bisa mengalir lebih lancar. Banyak ide kreatif justru muncul saat kita dalam kondisi santai.\r\n\r\nBahkan, bagi sebagian orang, ritual ini jadi semacam “trigger” untuk mulai produktif. Begitu kopi dingin sudah siap, itu tandanya saatnya masuk ke dunia coding.\r\n\r\nPenutup\r\n\r\nNgoding dan kopi dingin adalah kombinasi sederhana, tapi punya efek besar. Dengan suasana yang santai dan pikiran yang tetap fokus, produktivitas bisa meningkat tanpa harus merasa tertekan.\r\n\r\nJadi, kalau kamu lagi stuck atau butuh suasana baru, coba deh ambil segelas kopi dingin, buka laptop, dan mulai ngoding. Siapa tahu, bug yang tadi bikin frustrasi langsung ketemu solusinya 😉', 'ngoding.jpeg', '2026-04-13 01:02:02', 7, 2, 0),
(283, 'Kunjungan Industri Bersama SMK Bina Insan Mandiri: Peran Tim Media dalam Mengabadikan Momen Berharga', 'Kegiatan kunjungan industri menjadi salah satu program penting dalam dunia pendidikan, khususnya bagi siswa Sekolah Menengah Kejuruan (SMK). Melalui kegiatan ini, siswa dapat melihat langsung bagaimana dunia kerja berjalan secara nyata. Salah satu kegiatan tersebut dilakukan oleh siswa SMK Bina Insan Mandiri, yang melaksanakan kunjungan industri sebagai bagian dari pembelajaran di luar kelas.\r\n\r\nDalam kegiatan ini, tim media memiliki peran yang tidak kalah penting. Saya berkesempatan menjadi bagian dari tim media yang bertugas untuk mendokumentasikan seluruh rangkaian acara. Mulai dari keberangkatan, kegiatan di lokasi industri, hingga sesi penutup, semuanya kami abadikan dalam bentuk foto dan video.\r\n\r\nSebagai tim media, kami dituntut untuk sigap dan peka terhadap momen. Tidak hanya sekadar mengambil gambar, tetapi juga memastikan setiap dokumentasi memiliki nilai cerita. Kami berusaha menangkap ekspresi antusias siswa, interaksi dengan pihak industri, hingga suasana pembelajaran yang berlangsung.\r\n\r\nSelama kegiatan berlangsung, saya belajar banyak hal, tidak hanya terkait teknis pengambilan gambar, tetapi juga tentang kerja sama tim, manajemen waktu, dan komunikasi. Tim media harus mampu berkoordinasi dengan panitia lain agar tidak mengganggu jalannya kegiatan, namun tetap mendapatkan hasil dokumentasi yang maksimal.\r\n\r\nSelain itu, hasil dokumentasi ini nantinya akan digunakan sebagai bahan publikasi, baik untuk media sosial maupun laporan kegiatan sekolah. Oleh karena itu, kualitas dan ketepatan momen menjadi hal yang sangat diperhatikan.\r\n\r\nKunjungan industri ini tidak hanya memberikan pengalaman berharga bagi para siswa, tetapi juga bagi saya sebagai bagian dari tim media. Saya merasa bangga dapat berkontribusi dalam mengabadikan momen penting yang akan menjadi kenangan sekaligus dokumentasi berharga bagi sekolah.\r\n\r\nMelalui kegiatan ini, saya semakin menyadari bahwa peran tim media sangat penting dalam setiap acara. Bukan hanya sebagai “pengambil gambar”, tetapi juga sebagai penyampai cerita melalui visual.', 'smkbima.jpeg', '2026-04-13 01:07:03', 1, 2, 0),
(284, 'On Duty sebagai MC dalam Kegiatan Informatics Fair Vol. 1', 'Menjadi Master of Ceremony (MC) dalam sebuah acara merupakan pengalaman yang menantang sekaligus berharga. Hal ini saya rasakan saat mendapat kesempatan untuk on duty sebagai MC dalam kegiatan Informatics Fair Vol. 1, sebuah acara yang menjadi wadah bagi para peserta untuk menampilkan kreativitas dan inovasi di bidang teknologi dan informatika.\r\n\r\nSebagai MC, saya memiliki tanggung jawab besar untuk memastikan acara berjalan dengan lancar, tertib, dan tetap menarik bagi seluruh peserta serta tamu yang hadir. Mulai dari membuka acara, memandu setiap rangkaian kegiatan, hingga menutup acara dengan baik, semuanya harus dilakukan dengan penuh persiapan dan percaya diri.\r\n\r\nSebelum acara dimulai, saya mempersiapkan diri dengan menyusun rundown, memahami alur kegiatan, serta berlatih intonasi dan penyampaian agar terlihat profesional. Koordinasi dengan panitia juga menjadi hal penting, agar setiap transisi acara dapat berjalan dengan mulus tanpa hambatan.\r\n\r\nSaat acara berlangsung, saya berusaha menciptakan suasana yang hidup dan interaktif. Tidak hanya membacakan susunan acara, tetapi juga membangun komunikasi dengan audiens agar mereka tetap antusias mengikuti setiap sesi yang ada. Tantangan seperti perubahan jadwal mendadak atau kendala teknis menjadi hal yang harus dihadapi dengan tenang dan sigap.\r\n\r\nPengalaman ini memberikan banyak pelajaran bagi saya, terutama dalam hal public speaking, kepercayaan diri, serta kemampuan beradaptasi di situasi yang dinamis. Menjadi MC bukan hanya soal berbicara di depan umum, tetapi juga tentang bagaimana menghidupkan suasana dan menjadi penghubung antara seluruh elemen dalam acara.\r\n\r\nMelalui peran ini, saya merasa bangga dapat berkontribusi dalam kesuksesan kegiatan Informatics Fair Vol. 1. Pengalaman ini tentunya menjadi bekal berharga untuk terus berkembang di kesempatan-kesempatan berikutnya.', 'itfair.jpeg', '2026-04-13 01:10:45', 2, 2, 0),
(285, 'Mengabdi dalam Semangat Pancasila: Penugasan KPP pada Peringatan Hari Lahir Pancasila di UIN SSC', 'Peringatan Hari Lahir Pancasila menjadi momen penting untuk menumbuhkan kembali nilai-nilai kebangsaan, persatuan, dan semangat gotong royong di tengah masyarakat. Dalam rangka memperingati hari bersejarah tersebut, UIN SSC menyelenggarakan kegiatan yang melibatkan berbagai elemen, termasuk mahasiswa yang tergabung dalam penugasan KPP.\r\n\r\nSaya berkesempatan menjadi bagian dari penugasan KPP dalam kegiatan ini. Peran yang diemban bukan hanya sekadar menjalankan tugas, tetapi juga menjadi bentuk kontribusi nyata dalam menyukseskan acara yang sarat makna nasionalisme.\r\n\r\nSebagai bagian dari KPP, kami bertanggung jawab dalam membantu kelancaran jalannya kegiatan, mulai dari persiapan hingga pelaksanaan. Koordinasi dengan panitia menjadi kunci utama agar setiap tugas dapat dijalankan dengan baik dan sesuai dengan rencana yang telah disusun.\r\n\r\nSelama kegiatan berlangsung, suasana penuh khidmat terasa sangat kental. Upacara peringatan Hari Lahir Pancasila menjadi inti acara, di mana seluruh peserta mengikuti dengan penuh rasa hormat dan kesadaran akan pentingnya nilai-nilai Pancasila dalam kehidupan sehari-hari.\r\n\r\nPengalaman ini memberikan banyak pelajaran berharga, terutama dalam hal kedisiplinan, tanggung jawab, serta kerja sama tim. Selain itu, keterlibatan langsung dalam kegiatan ini juga menumbuhkan rasa bangga sebagai bagian dari generasi muda yang turut menjaga dan mengamalkan nilai-nilai Pancasila.\r\n\r\nMelalui penugasan ini, saya semakin memahami bahwa peringatan Hari Lahir Pancasila bukan sekadar seremonial, tetapi juga momentum untuk merefleksikan diri dan memperkuat komitmen dalam mengamalkan nilai-nilai luhur bangsa.', 'penugasanpancasila.jpeg', '2026-04-13 01:13:40', 2, 2, 0),
(286, 'Adu Gagasan dan Visi: Debat Kandidat Calon Ketua Umum HIMAFOR 2026', 'Debat kandidat calon Ketua Umum HIMAFOR 2026 menjadi salah satu momen penting dalam rangkaian proses pemilihan kepemimpinan organisasi. Kegiatan ini tidak hanya menjadi ajang untuk memperkenalkan para kandidat, tetapi juga sebagai wadah bagi mereka untuk menyampaikan visi, misi, serta program kerja yang akan dijalankan ke depan.\r\n\r\nAcara debat berlangsung dengan penuh antusiasme dari para peserta dan audiens. Setiap kandidat diberikan kesempatan untuk memaparkan gagasan terbaiknya dalam membangun HIMAFOR yang lebih progresif, inovatif, dan berdaya saing. Berbagai isu strategis turut dibahas, mulai dari pengembangan organisasi, peningkatan kualitas anggota, hingga kontribusi HIMAFOR terhadap lingkungan akademik dan masyarakat.\r\n\r\nDalam sesi tanya jawab, para kandidat diuji dengan berbagai pertanyaan kritis yang menuntut kemampuan berpikir cepat, ketegasan dalam mengambil keputusan, serta kejelasan arah kepemimpinan. Momen ini menjadi penilaian penting bagi audiens dalam menentukan pilihan mereka.\r\n\r\nSelain itu, debat ini juga mencerminkan nilai demokrasi yang sehat di lingkungan organisasi mahasiswa. Proses ini menunjukkan bahwa setiap kandidat memiliki kesempatan yang sama untuk menyampaikan ide dan mendapatkan dukungan dari anggota.\r\n\r\nMelalui kegiatan debat kandidat ini, diharapkan seluruh anggota HIMAFOR dapat lebih mengenal para calon pemimpin mereka secara mendalam. Tidak hanya dari janji atau program kerja, tetapi juga dari cara berpikir, sikap, dan kemampuan komunikasi yang ditunjukkan selama debat berlangsung.\r\n\r\nDebat kandidat calon Ketua Umum HIMAFOR 2026 bukan hanya sekadar formalitas, tetapi menjadi langkah penting dalam menentukan arah dan masa depan organisasi. Siapapun yang terpilih nantinya, diharapkan mampu membawa HIMAFOR menjadi organisasi yang lebih solid, aktif, dan berdampak positif.', 'debat.jpeg', '2026-04-13 01:16:00', 2, 2, 0),
(287, 'Membangun Semangat Kebangsaan: On Duty sebagai MC dalam Sosialisasi 4 Pilar MPR RI', 'Kegiatan sosialisasi 4 Pilar MPR RI merupakan salah satu upaya penting dalam menanamkan nilai-nilai kebangsaan kepada generasi muda. Empat pilar tersebut meliputi Pancasila, UUD 1945, NKRI, dan Bhinneka Tunggal Ika yang menjadi dasar dalam kehidupan berbangsa dan bernegara.\r\n\r\nDalam kegiatan ini, saya mendapatkan kesempatan untuk on duty sebagai Master of Ceremony (MC). Peran ini menjadi pengalaman berharga sekaligus tantangan tersendiri, karena saya harus mampu memandu jalannya acara dengan baik, tertib, dan komunikatif.\r\n\r\nSebagai MC, saya bertanggung jawab untuk membuka acara, mengarahkan alur kegiatan sesuai rundown, serta menjaga suasana agar tetap kondusif dan interaktif. Persiapan yang matang menjadi kunci utama, mulai dari memahami susunan acara, mengenal narasumber, hingga melatih intonasi dan kepercayaan diri dalam berbicara di depan umum.\r\n\r\nSelama acara berlangsung, saya berusaha menciptakan suasana yang nyaman bagi peserta. Interaksi yang baik dengan audiens menjadi salah satu cara untuk menjaga perhatian dan antusiasme mereka dalam mengikuti materi yang disampaikan.\r\n\r\nKegiatan sosialisasi ini menghadirkan narasumber yang kompeten di bidangnya, sehingga memberikan wawasan yang luas mengenai pentingnya mengamalkan nilai-nilai 4 pilar dalam kehidupan sehari-hari. Sebagai MC, saya juga turut merasakan manfaat dari materi yang disampaikan, sehingga tidak hanya menjalankan tugas, tetapi juga memperoleh ilmu yang berharga.\r\n\r\nPengalaman ini memberikan banyak pelajaran, terutama dalam hal public speaking, pengelolaan acara, serta kemampuan beradaptasi dengan situasi yang dinamis. Saya merasa bangga dapat berkontribusi dalam kegiatan yang memiliki nilai edukatif dan nasionalisme yang tinggi.\r\n\r\nMelalui peran ini, saya semakin memahami bahwa menjadi MC bukan hanya sekadar membacakan susunan acara, tetapi juga menjadi penghubung antara panitia, narasumber, dan peserta dalam menciptakan kegiatan yang sukses dan bermakna.', 'mpr.jpeg', '2026-04-13 01:18:02', 2, 2, 0),
(288, 'Meneguhkan Semangat Persatuan: Menghadiri Apel Kebangsaan 10.000 Banser', 'Menghadiri Apel Kebangsaan 10.000 Banser menjadi pengalaman yang penuh makna dan kebanggaan. Kegiatan ini bukan sekadar pertemuan besar, tetapi juga simbol kuatnya semangat persatuan, nasionalisme, dan komitmen dalam menjaga keutuhan bangsa.\r\n\r\nApel kebangsaan ini diikuti oleh ribuan anggota Barisan Ansor Serbaguna (Banser) dari berbagai daerah. Kehadiran mereka mencerminkan kesiapan dan dedikasi dalam menjaga nilai-nilai kebangsaan serta mendukung terciptanya kehidupan yang damai dan harmonis di tengah masyarakat.\r\n\r\nSuasana kegiatan berlangsung dengan penuh khidmat dan semangat. Barisan peserta yang rapi, atribut yang dikenakan, serta yel-yel kebangsaan yang dikumandangkan menambah rasa haru dan bangga sebagai bagian dari bangsa Indonesia. Momentum ini menjadi pengingat akan pentingnya menjaga persatuan di tengah keberagaman.\r\n\r\nSelama kegiatan berlangsung, berbagai pesan kebangsaan disampaikan oleh para tokoh yang hadir. Mereka menekankan pentingnya menjaga toleransi, memperkuat solidaritas, serta terus mengamalkan nilai-nilai Pancasila dalam kehidupan sehari-hari.\r\n\r\nBagi saya, menghadiri kegiatan ini memberikan pengalaman berharga dan memperluas wawasan tentang arti kebersamaan dalam bingkai kebangsaan. Tidak hanya sebagai peserta, tetapi juga sebagai generasi muda yang memiliki tanggung jawab untuk menjaga keutuhan dan keharmonisan bangsa.\r\n\r\nApel Kebangsaan 10.000 Banser bukan hanya sebuah acara seremonial, tetapi menjadi momentum untuk memperkuat komitmen dalam menjaga persatuan dan kesatuan. Semangat yang tercipta dalam kegiatan ini diharapkan dapat terus terjaga dan menjadi inspirasi bagi seluruh elemen masyarakat.', 'banser.jpeg', '2026-04-13 01:20:50', 2, 2, 0),
(289, 'Merayakan Inovasi dan Kreativitas: Menghadiri Techno Versery UNIKU', 'Menghadiri kegiatan Techno Versery UNIKU menjadi pengalaman yang penuh inspirasi dan semangat inovasi. Acara ini merupakan salah satu bentuk perayaan yang menghadirkan berbagai kegiatan menarik di bidang teknologi, kreativitas, dan pengembangan diri, khususnya bagi mahasiswa.\r\n\r\nKegiatan Techno Versery ini menjadi wadah bagi para peserta untuk menampilkan ide, karya, serta potensi terbaik mereka. Berbagai rangkaian acara seperti pameran teknologi, kompetisi, hingga seminar edukatif turut memeriahkan suasana dan memberikan pengalaman yang berharga bagi seluruh peserta yang hadir.\r\n\r\nSelama kegiatan berlangsung, suasana terasa sangat hidup dan dinamis. Antusiasme peserta terlihat dari partisipasi aktif dalam setiap sesi, baik dalam mengikuti lomba, berdiskusi, maupun mengeksplorasi berbagai inovasi yang dipamerkan.\r\n\r\nBagi saya, menghadiri acara ini tidak hanya sekadar menjadi peserta, tetapi juga menjadi kesempatan untuk belajar dan memperluas wawasan di bidang teknologi. Banyak ide kreatif dan inovatif yang dapat dijadikan inspirasi untuk terus berkembang, baik secara akademik maupun non-akademik.\r\n\r\nSelain itu, kegiatan ini juga menjadi ajang untuk mempererat relasi antar mahasiswa dari berbagai latar belakang. Interaksi yang terjadi selama acara membuka peluang kolaborasi dan pertukaran ide yang positif.\r\n\r\nTechno Versery UNIKU tidak hanya menjadi perayaan semata, tetapi juga momentum untuk mendorong generasi muda agar terus berinovasi dan berkontribusi dalam perkembangan teknologi. Harapannya, kegiatan seperti ini dapat terus diselenggarakan dan memberikan dampak positif yang lebih luas.', 'uniku.jpeg', '2026-04-13 01:23:43', 2, 2, 0),
(290, 'Mengasah Kompetensi di Dunia Industri: Mengikuti Magang Guru di PT Telkom Cirebon', 'Mengikuti program magang guru di PT Telkom Indonesia wilayah Cirebon menjadi pengalaman berharga dalam upaya meningkatkan kompetensi dan wawasan di dunia industri. Kegiatan ini bertujuan untuk menjembatani dunia pendidikan dengan kebutuhan nyata di lapangan, khususnya dalam bidang teknologi dan komunikasi.\r\n\r\nSelama pelaksanaan magang, saya mendapatkan kesempatan untuk mengenal lebih dalam sistem kerja di industri telekomunikasi. Berbagai pengetahuan praktis diberikan, mulai dari pengenalan jaringan, layanan digital, hingga pengelolaan sistem yang digunakan dalam operasional perusahaan.\r\n\r\nTidak hanya itu, saya juga belajar mengenai budaya kerja profesional yang diterapkan di lingkungan perusahaan. Disiplin, tanggung jawab, serta kemampuan bekerja dalam tim menjadi nilai penting yang saya pelajari selama kegiatan berlangsung. Hal ini tentu menjadi bekal berharga untuk diterapkan dalam proses pembelajaran di sekolah.\r\n\r\nMelalui program ini, saya dapat memahami perkembangan teknologi terkini yang relevan dengan dunia pendidikan. Pengetahuan tersebut nantinya dapat diintegrasikan ke dalam materi pembelajaran, sehingga siswa mendapatkan wawasan yang lebih up-to-date dan sesuai dengan kebutuhan industri.\r\n\r\nSelain meningkatkan kompetensi, kegiatan magang ini juga membuka peluang untuk membangun relasi dan kerja sama antara dunia pendidikan dan industri. Hal ini sangat penting dalam menciptakan lulusan yang siap kerja dan memiliki keterampilan yang sesuai dengan tuntutan zaman.\r\n\r\nMengikuti magang guru di PT Telkom Cirebon bukan hanya sekadar kegiatan belajar di luar sekolah, tetapi juga menjadi langkah nyata dalam meningkatkan kualitas diri sebagai pendidik. Pengalaman ini diharapkan dapat memberikan dampak positif, baik bagi pengembangan pribadi maupun bagi kemajuan pendidikan di masa depan.', 'pt telkom.jpeg', '2026-04-13 01:24:48', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `artikel_tag`
--

CREATE TABLE `artikel_tag` (
  `id` int(11) NOT NULL,
  `artikel_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel_tag`
--

INSERT INTO `artikel_tag` (`id`, `artikel_id`, `tag_id`) VALUES
(7, 284, 3),
(8, 290, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, 'Kegiatan Sekolah'),
(2, 'Organisasi'),
(7, 'Gen Z');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `artikel_id` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tanggal` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `artikel_id`, `nama`, `isi`, `tanggal`) VALUES
(6, 270, 'nisaa', 'keren banget\r\n\r\n', '2026-04-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','author') DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staf`
--

INSERT INTO `staf` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin'),
(2, 'author', 'e22591bbe1941fcc4b78972d4c60281f', 'author');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `nama_tag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `nama_tag`) VALUES
(2, 'Pramuka'),
(3, 'Seminar'),
(5, 'Pelatihan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `artikel_tag`
--
ALTER TABLE `artikel_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikel_id` (`artikel_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_komentar_artikel2` (`artikel_id`);

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `artikel_tag`
--
ALTER TABLE `artikel_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staf`
--
ALTER TABLE `staf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);

--
-- Constraints for table `artikel_tag`
--
ALTER TABLE `artikel_tag`
  ADD CONSTRAINT `artikel_tag_ibfk_1` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `artikel_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `fk_komentar_artikel` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_komentar_artikel2` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`) ON DELETE CASCADE;
--
-- Database: `blogdinamisuts`
--
CREATE DATABASE IF NOT EXISTS `blogdinamisuts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blogdinamisuts`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','author') DEFAULT 'author'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `blog_admin`
--
CREATE DATABASE IF NOT EXISTS `blog_admin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog_admin`;
--
-- Database: `blog_db`
--
CREATE DATABASE IF NOT EXISTS `blog_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog_db`;
--
-- Database: `dbumkma1`
--
CREATE DATABASE IF NOT EXISTS `dbumkma1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbumkma1`;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `harga`, `stok`, `deskripsi`, `gambar`) VALUES
(2, 'pp', 6776, 0, '7', '1774802431_Twibbon Selamat Datang Mahasiswa Baru Informatika Tahun Ajaran 20252026_20250903_142553_0000.png'),
(3, 'nnnn', 66, 0, '8', '1774802456_Twibbon Selamat Datang Mahasiswa Baru Informatika Tahun Ajaran 20252026_20250903_142553_0000.png');

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `level` enum('admin','staf') DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staf`
--

INSERT INTO `staf` (`id`, `username`, `password`, `nama`, `level`) VALUES
(1, 'admin', 'admin123', 'nisa', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staf`
--
ALTER TABLE `staf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_admin`
--
CREATE DATABASE IF NOT EXISTS `db_admin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_admin`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-03-09 01:39:28', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `umkm`
--
CREATE DATABASE IF NOT EXISTS `umkm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `umkm`;

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `level` enum('admin','staf') DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staf`
--

INSERT INTO `staf` (`id`, `username`, `password`, `nama`, `level`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Administrator', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staf`
--
ALTER TABLE `staf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `umkm1`
--
CREATE DATABASE IF NOT EXISTS `umkm1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `umkm1`;
--
-- Database: `umkmjulon`
--
CREATE DATABASE IF NOT EXISTS `umkmjulon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `umkmjulon`;

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staf`
--

INSERT INTO `staf` (`id`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'nisa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staf`
--
ALTER TABLE `staf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `umkmsejahtera`
--
CREATE DATABASE IF NOT EXISTS `umkmsejahtera` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `umkmsejahtera`;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `harga`, `deskripsi`, `gambar`) VALUES
(3, 'baju piyama', 3000, 'PPPPPPPPPP', 'WhatsApp Image 2026-04-01 at 20.24.17.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `role` enum('admin') NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staf`
--

INSERT INTO `staf` (`id`, `username`, `password`, `nama`, `role`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Administrator', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staf`
--
ALTER TABLE `staf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `umkm_nusantara`
--
CREATE DATABASE IF NOT EXISTS `umkm_nusantara` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `umkm_nusantara`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
