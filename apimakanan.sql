-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2024 pada 18.11
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apimakanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `coments`
--

CREATE TABLE `coments` (
  `id` int(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `komentar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `coments`
--

INSERT INTO `coments` (`id`, `name`, `komentar`) VALUES
(1, 'coba dulu', 'masak apa aja'),
(1, 'Thoriq ar r', 'Sangat membantu saya ketika saya masak '),
(1, 'jbvdv', 'sdvsv'),
(1, 'Agus', 'Terimakasih resep yang sudah diberikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daerahs`
--

CREATE TABLE `daerahs` (
  `id` int(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `pictureId` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daerahs`
--

INSERT INTO `daerahs` (`id`, `name`, `deskripsi`, `pictureId`) VALUES
(1, 'Jawa Barat', 'Jawa Barat, yang terletak di bagian barat Pulau Jawa, adalah tempat bagi kekayaan kuliner Indonesia. Dikenal dengan sebutan \"Pusaka Kuliner Nusantara\", provinsi ini menyajikan beragam hidangan yang memikat lidah. Budaya makanan di Jawa Barat tidak hanya mencerminkan kekayaan alamnya, tetapi juga sejarah, tradisi, dan keragaman budaya masyarakatnya.', 'https://c.files.bbci.co.uk/2767/production/_108578001_gettyimages-923316538.jpg'),
(2, 'Jawa Tengah', 'Jawa Tengah, dengan keberagaman budaya dan sejarahnya yang kaya, juga menawarkan hidangan-hidangan yang lezat dan beragam. Dikenal sebagai \"Warisan Rasa dari Tanah Jawa Tengah\", provinsi ini mempersembahkan cita rasa yang khas dan menggugah selera.', 'https://asset.kompas.com/crops/T2o0W94mqoZnRqMl0xRtoIo7FeM=/49x0:638x393/750x500/data/photo/2022/03/24/623c7f47e99c6.jpg'),
(3, 'Jawa Timur', 'Jawa Timur, dengan kota utamanya Surabaya, adalah tempat bagi beberapa hidangan paling ikonik di Indonesia. Terletak di Pulau Jawa bagian timur, wilayah ini kaya akan keanekaragaman kuliner dari mulai masakan pedas, manis, hingga gurih.', 'https://asset.kompas.com/crops/zkD6z9YxKGyFuD4HvAsLynT2ClY=/144x3:1506x911/750x500/data/photo/2022/03/02/621f8fa8c4913.jpg'),
(4, 'DKI Jakarta', 'Jakarta, sebagai ibu kota Indonesia, adalah pusat kegiatan ekonomi, politik, dan budaya negara ini. Selain itu, Jakarta juga merupakan surga bagi para pecinta kuliner dengan ragam hidangan dari seluruh penjuru nusantara dan dunia. Dikenal sebagai \"Metropolis Kuliner di Jantung Nusantara\", Jakarta mempersembahkan cita rasa yang menggugah selera dari berbagai tradisi kuliner.', 'https://asset.kompas.com/crops/fC8lObClL8TCjL1q0OYZHh3aOH4=/215x55:785x435/1200x800/data/photo/2023/03/10/640aee8483506.jpg'),
(5, 'Kalimantan Tengah', 'Kalimantan Tengah, yang berada di jantung Pulau Kalimantan, adalah destinasi kuliner yang memikat dengan kekayaan rasa dan keanekaragaman bahan alaminya. Dikenal sebagai \"Warisan Rasa dari Hutan dan Sungai\", provinsi ini menghadirkan hidangan-hidangan yang menggugah selera dan memukau indera.', 'https://kompaspedia.kompas.id/wp-content/uploads/2020/10/ISEN-MULANG-5-12-1156x800.jpg'),
(6, 'Kalimantan Selatan', 'Kalimantan Selatan, dengan keindahan alamnya yang menakjubkan dan keragaman budaya yang kaya, juga menawarkan hidangan-hidangan yang menggugah selera dan mengundang petualangan kuliner. Dari hidangan laut hingga makanan tradisional suku Dayak, Kalimantan Selatan mempersembahkan beragam rasa yang mencerminkan kekayaan alam dan budaya daerah.', 'https://mediaim.expedia.com/destination/2/a114c0222ca9d6b649c4edbec8fb3401.jpg'),
(7, 'Kalimantan Utara', 'Kalimantan Utara, dengan kekayaan alamnya yang melimpah dan keanekaragaman budayanya yang kaya, menawarkan hidangan-hidangan yang lezat dan autentik. Dikenal sebagai \"Merayakan Kelezatan di Borneo Utara\", provinsi ini mempersembahkan cita rasa yang khas dan menggugah selera.', 'https://www.gerbangkaltim.com/wp-content/uploads/2022/10/Tempat-wisata-di-Tanjung-Selor.jpg'),
(8, 'Kalimantan Timur', 'Kalimantan Timur, bersemayam di tepian Sungai Mahakam, memikat dengan kekayaan budaya dan alamnya. Dikenal sebagai \"Melahap Aroma Aneka Budaya di Tepian Sungai\", provinsi ini menawarkan hidangan-hidangan yang menggugah selera dengan sentuhan unik dari beragam budaya di sepanjang sungai tersebut.', 'https://mmc.tirto.id/image/2023/03/16/landmark-kota-samarinda-istock-1468649261_ratio-16x9.jpg'),
(9, 'Kalimantan Barat', 'Kalimantan Barat, dengan ibu kotanya Pontianak, menawarkan hidangan-hidangan yang unik dan lezat dengan cita rasa yang khas. Terletak di bagian barat Pulau Kalimantan, wilayah ini kaya akan rempah-rempah dan hasil laut.', 'https://dinaskebudayaan.jakarta.go.id/encyclopedia/file/gallery/3146/06dabfb1b8ba0cfed409e8133d784f46fe73676b.jpg'),
(10, 'Sumatera Selatan', 'Sumatera Selatan, dengan kekayaan alamnya yang melimpah dan warisan budayanya yang kaya, menawarkan hidangan-hidangan yang menggugah selera. Dikenal sebagai \"Kelezatan Bumi Sriwijaya\", provinsi ini mempersembahkan cita rasa yang autentik dan memikat hati.', 'https://kompaspedia.kompas.id/wp-content/uploads/2020/11/20200911ED25-scaled.jpg'),
(11, 'Sumatera Utara', 'Sumatera Utara, dengan kekayaan alamnya yang melimpah dan keberagaman budaya yang kaya, menawarkan ragam hidangan lezat yang mencerminkan keanekaragaman daerah ini. Dari hidangan laut hingga makanan pedas khas Batak, Sumatera Utara adalah surga bagi para pecinta kuliner yang mencari petualangan rasa.', 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/899/2024/02/12/b3369ea0b6855b85f7a2f1ac1260801e-3960329975.jpg'),
(12, 'Sumatera Barat', 'Sumatera Barat, dengan kekayaan alamnya yang melimpah dan budaya Minangkabau yang kaya, menawarkan hidangan-hidangan yang lezat dan beragam. Dikenal sebagai \"Bumi Rendang dan Padang\", provinsi ini mempersembahkan cita rasa yang khas dan autentik yang tidak dapat ditemukan di tempat lain.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Istano_Pagaruyuang.jpg/288px-Istano_Pagaruyuang.jpg'),
(13, 'Gorontalo', 'Gorontalo, dengan keindahan alam bawah lautnya yang memukau, juga menawarkan hidangan-hidangan laut yang lezat dan menggugah selera. Dikenal sebagai \"Kelezatan Laut di Bumi Jalea\", provinsi ini mempersembahkan cita rasa yang autentik dan kaya akan rempah.', 'https://upload.wikimedia.org/wikipedia/id/8/8b/Gorontalo.jpg'),
(14, 'Jambi', 'Jambi, dengan kekayaan alamnya yang melimpah dan budayanya yang kaya, menawarkan hidangan-hidangan yang unik dan autentik. Dikenal sebagai \"Kekayaan Rasa di Bumi Sembilan Lurah\", provinsi ini mempersembahkan cita rasa yang menggugah selera dan memikat hati.', 'https://cdn.antaranews.com/cache/1200x800/2018/05/kotajambi.jpg'),
(15, 'Kepulauan Riau\r\n', 'Kepulauan Riau yang terdiri dari berbagai pulau yang tersebar di antara Sumatera dan Semenanjung Malaya, menjadi rumah bagi kekayaan laut yang melimpah. Dikenal sebagai \"Keanekaragaman Lautan di Tengah Birunya Samudra\", provinsi ini menghadirkan hidangan-hidangan laut yang lezat dan menggugah selera.', 'https://palpos.disway.id/upload/b332cb1a67e8916b86722536d28983a5.jpg'),
(16, 'Lampung', 'Lampung, dengan kekayaan alamnya yang melimpah dan keindahan alamnya yang memukau, juga menawarkan hidangan-hidangan yang lezat dan menggugah selera. Dikenal sebagai \"Kelezatan Kuliner di Tanah Umpak\", provinsi ini mempersembahkan cita rasa yang autentik dan khas.', 'https://bandarlampungkota.go.id/new/images/destinasi/462_tugugajah.jpg'),
(17, 'Maluku', 'Maluku, yang terkenal dengan keindahan alamnya yang memesona dan keanekaragaman rempahnya, juga menawarkan hidangan-hidangan yang lezat dan unik. Dikenal sebagai \"Kelezatan Rasa di Jantung Kepulauan Rempah\", provinsi ini mempersembahkan cita rasa yang autentik dan memikat hati.\r\n\r\n', 'https://webicdn.com/sdirmember/36/35014/produk/6vxyj.jpg'),
(18, 'Maluku Utara', 'Maluku Utara, dengan keindahan alamnya yang memukau dan kekayaan rempah-rempahnya yang melimpah, menjadi tempat bagi hidangan-hidangan yang lezat dan menggugah selera. Dikenal sebagai \"Aroma Rempah-Rempah di Tanah Maluku Utara\", provinsi ini mempersembahkan cita rasa yang autentik dan khas.', 'https://kalesang.id/wp-content/uploads/2023/04/CEA9A4BD-DEF7-4ECD-9F1B-B214C36C7E43.jpeg'),
(19, 'Nusa Tenggara Barat', 'Nusa Tenggara Barat, yang terdiri dari berbagai pulau indah termasuk Pulau Lombok, menawarkan hidangan-hidangan tradisional yang lezat dan memikat hati. Dikenal sebagai \"Kelezatan Tradisional di Pulau Lombok\", provinsi ini mempersembahkan cita rasa yang autentik dan menggugah selera.', 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/lombokpost/2020/08/Monumen-Mataram-Metro-1.jpg'),
(20, 'Nusa Tenggara Timur', 'Nusa Tenggara Timur, dengan keindahan alamnya yang memukau dan budayanya yang kaya, juga menawarkan hidangan-hidangan yang lezat dan unik. Dikenal sebagai \"Keajaiban Rasa di Tanah Sumba\", provinsi ini mempersembahkan cita rasa yang autentik dan menggugah selera.', 'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/04/24/IMG_20230424_161431JPG-3191915746.jpg'),
(21, 'Papua', 'Papua, dengan kekayaan alamnya yang melimpah dan keanekaragaman budayanya yang kaya, menawarkan hidangan-hidangan yang lezat dan autentik. Dikenal sebagai \"Keanekaragaman Kuliner di Tanah Papua\", provinsi ini mempersembahkan cita rasa yang unik dan menggugah selera.', 'https://www.malanesia.news/wp-content/uploads/2023/06/MN-123.jpg'),
(22, 'Papua Barat', 'Papua Barat, yang terletak di ujung barat Pulau Papua, juga memiliki kekayaan kuliner yang unik dan memikat. Dikenal sebagai \"Kelezatan Tradisional di Ujung Pulau Papua\", provinsi ini menawarkan hidangan-hidangan yang autentik dan kaya akan cita rasa.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Mansinam_Jesus_Statue.jpg/800px-Mansinam_Jesus_Statue.jpg'),
(23, 'Riau', 'Riau, yang terletak di Pulau Sumatera, adalah tempat bagi kekayaan kuliner Indonesia. Dikenal dengan sebutan \"Keberagaman Rasa di Negeri Lancang Kuning\", provinsi ini menyajikan beragam hidangan yang memikat lidah. Budaya makanan di Riau tidak hanya mencerminkan kekayaan alamnya, tetapi juga sejarah, tradisi, dan keragaman budaya masyarakatnya.', 'https://asset.kompas.com/crops/NM7ghvrs5xW7fOk3VYw_LHZeWlk=/0x0:750x500/750x500/data/photo/2022/11/20/637a05f6b12f8.jpg'),
(24, 'Sulawesi Barat', 'Sulawesi Barat, yang terletak di ujung barat Pulau Sulawesi, juga memiliki kekayaan kuliner yang unik dan menggugah selera. Dikenal sebagai \"Kelezatan Rasa di Tanah Mandar\", provinsi ini menawarkan hidangan-hidangan yang autentik dan kaya akan cita rasa.', 'https://asset.kompas.com/crops/Km0OWa5nRmRW1UDzf_hcWtpOlH8=/32x0:872x560/750x500/data/photo/2022/03/17/62330f81605e4.jpg'),
(25, 'Sulawesi Tengah', 'Sulawesi Tengah, yang terletak di bagian tengah Pulau Sulawesi, juga memiliki kekayaan kuliner yang unik dan menggugah selera. Dikenal sebagai \"Kelezatan Rasa di Tanah Minahasa\", provinsi ini menawarkan hidangan-hidangan yang autentik dan kaya akan cita rasa.', 'https://asset.kompas.com/crops/pQJw6Uev6aKr4EQNEqgwMDvan3M=/82x11:670x403/750x500/data/photo/2022/08/08/62f0e39a1dee7.jpeg'),
(26, 'Sulawesi Tenggara\r\n', 'Sulawesi Tenggara, yang terletak di bagian tenggara Pulau Sulawesi, juga memiliki kekayaan kuliner yang unik dan memikat. Dikenal sebagai \"Keindahan Rasa di Tanah Mekongga\", provinsi ini menawarkan hidangan-hidangan yang autentik dan kaya akan cita rasa.', 'https://labrita.id/gambar_berita/8.JPG'),
(27, 'Sulawesi Utara', 'Sulawesi Utara, yang terletak di ujung utara Pulau Sulawesi, juga memiliki kekayaan kuliner yang unik dan menggugah selera. Dikenal sebagai \"Kelezatan Rasa di Tanah Minahasa\", provinsi ini menawarkan hidangan-hidangan yang autentik dan kaya akan cita rasa.', 'https://asset.kompas.com/crops/FwwXToO5AAU9BsTb2D9JOSbC1CM=/292x0:1000x472/750x500/data/photo/2022/02/21/621274c0b7d7c.jpg'),
(28, 'Sulawesi Selatan', 'Sulawesi Selatan, dengan kekayaan budayanya yang beragam dan keindahan alamnya yang memukau, juga menawarkan hidangan-hidangan yang lezat dan unik. Dikenal sebagai \"Kekayaan Rasa di Bumi Andalas\", provinsi ini mempersembahkan cita rasa yang autentik dan khas.', 'https://halilintarnews.id/wp-content/uploads/2022/03/IMG-20220313-WA0017.jpg'),
(29, 'Papua Tengah', 'Papua Tengah, dengan kekayaan alamnya yang luar biasa dan keanekaragaman budayanya yang kaya, menawarkan hidangan-hidangan yang lezat dan unik. Dikenal sebagai \"Kenikmatan Kuliner di Tanah Tinggi Papua\", provinsi ini mempersembahkan cita rasa yang autentik dan khas.', 'https://asset-2.tstatic.net/papua/foto/bank/images/kawasan-kantor-bupati-nabire.jpg'),
(30, 'Papua Selatan', 'Papua Selatan, dengan keindahan alamnya yang memukau dan keberagaman budayanya yang kaya, juga menawarkan hidangan-hidangan yang lezat dan unik. Dikenal sebagai \"Kuliner Khas di Ujung Timur Indonesia\", provinsi ini mempersembahkan cita rasa yang autentik dan khas.', 'https://asset.kompas.com/crops/H92KL_UrG3wurrTJIqP56rOSPnU=/0x0:750x500/750x500/data/photo/2022/02/03/61fb5123d575d.jpg'),
(31, 'Papua Barat Daya', 'Papua Barat Daya, yang terletak di ujung barat Pulau Papua, juga memiliki kekayaan kuliner yang unik dan memikat. Dikenal sebagai \"Pesona Kuliner di Pulau Raja Ampat\", provinsi ini menawarkan hidangan-hidangan yang autentik dan kaya akan cita rasa.', 'https://asset-2.tstatic.net/papuabarat/foto/bank/images/Kota-Sorong-lm.jpg'),
(32, 'Papua Pegunungan', 'Papua Pegunungan Jayawijaya, terletak di puncak Indonesia, menyuguhkan kekayaan alam dan budaya yang mengagumkan. Dikenal sebagai \"Memetik Kelezatan di Lereng Gunung Tertinggi\", wilayah ini menawarkan hidangan-hidangan tradisional yang memperkaya pengalaman kuliner Anda.', 'https://bangunpapua.com/storage/2022/07/Kota-Wamena.jpeg'),
(33, 'Bangka Belitung', 'Bangka Belitung, terkenal dengan keindahan pantainya yang eksotis, juga menyajikan ragam hidangan laut yang lezat dan unik. Dikenal sebagai \"Sajian Lautan Rasa dari Pulau Seribu Pantai\", provinsi ini menghadirkan cita rasa yang segar dan autentik yang tidak dapat ditemukan di tempat lain.', 'https://www.gardaoto.com/wp-content/uploads/2023/10/f10f7e355118ff6de40e8eb4f0d57896.jpg'),
(34, 'Banda Aceh', 'Banda Aceh, ibu kota Provinsi Aceh, menawarkan kekayaan kuliner yang mencerminkan budaya dan sejarahnya yang kaya. Terletak di ujung utara Pulau Sumatra, kota ini dikenal akan hidangan lautnya yang lezat dan rempah-rempah yang melimpah.', 'https://upload.wikimedia.org/wikipedia/commons/b/b8/Meuseujid_Raya_Baiturrahman%2C_Aceh.jpg'),
(35, 'Bali', 'Bali, dengan keindahan alamnya yang memukau dan budaya yang kaya, juga menawarkan pengalaman kuliner yang tak terlupakan. Dikenal sebagai \"Surga Kuliner Tropis di Pulau Dewata\", Bali mempersembahkan ragam hidangan lezat yang mencerminkan kekayaan alam dan budaya pulau ini.', 'https://i0.wp.com/blog.eigeradventure.com/wp-content/uploads/2023/06/Untitled-design-11.jpg?fit=800%2C594&ssl=1'),
(36, 'Banten', 'Banten, dengan kekayaan alamnya yang melimpah dan sejarahnya yang kaya, menawarkan hidangan-hidangan yang lezat dan beragam. Dikenal sebagai \"Kelezatan Laut dan Daratan di Tanah Serang\", provinsi ini mempersembahkan cita rasa yang autentik dan menggugah selera.', 'https://asset.kompas.com/crops/_i1RkpLoZ-G0TAXkDKoLf-9Gnp0=/23x11:964x639/750x500/data/photo/2022/03/12/622ca58e77830.jpg'),
(37, 'Bengkulu', 'Bengkulu, dengan keindahan alamnya yang menakjubkan dan warisan budayanya yang kaya, juga menawarkan hidangan-hidangan yang memikat lidah. Dikenal sebagai \"Dapur Rasa di Tanah Rafflesia\", provinsi ini menghadirkan cita rasa yang autentik dan menggugah selera.', 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/10/2024/01/24/bengkulu-okeee-2928737172.jpg'),
(38, 'Daerah Istimewa Yogyakarta', 'Daerah Istimewa Yogyakarta, dengan kekayaan budaya dan sejarahnya yang mendalam, juga menawarkan ragam hidangan lezat yang mencerminkan warisan kuliner Nusantara. Di tengah gemerlapnya keraton dan keindahan alamnya, Yogyakarta mempersembahkan cita rasa yang menggugah selera dan memikat hati pengunjung.', 'https://www.gotravelaindonesia.com/wp-content/uploads/Kota-Yogyakarta-Tugu-Jogja.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanans`
--

CREATE TABLE `makanans` (
  `id` varchar(128) NOT NULL,
  `name` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `tingkatSulit` varchar(20) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `rating` varchar(11) NOT NULL,
  `image` varchar(350) NOT NULL,
  `bahan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `makanans`
--

INSERT INTO `makanans` (`id`, `name`, `publisher`, `description`, `tingkatSulit`, `waktu`, `rating`, `image`, `bahan`) VALUES
('1', 'Surabi', 'Gilang', 'Surabi adalah makanan tradisional khas dari Jawa Barat, Indonesia. Surabi dibuat dari adonan berbahan dasar tepung beras yang dicampur dengan santan, kemudian dipanggang hingga matang. Makanan ini biasanya disajikan dengan topping yang beragam, seperti gula merah cair atau serundeng (kelapa parut goreng). Surabi memiliki tekstur yang kenyal dan rasa yang gurih, cocok dinikmati sebagai camilan atau makanan penutup. <br>\r\n\r\n<b>Bahan-Bahan Surabi</b> <br>\r\n<b>Bahan Utama</b>:<br>\r\nTepung Beras - 250 gram <br>\r\nSantan Kental - 500 ml <br>\r\nAir - 100 ml <br>\r\nKelapa Parut - 50 gram <br>\r\nGaram - 1/2 sendok teh <br><br>\r\n\r\n<b>Bahan Pelengkap</b>:<br>\r\nGula Merah Cair - 200 ml (gula merah dicairkan dengan air) <br>\r\nSerundeng - 100 gram (kelapa parut goreng) <br>\r\nGula Pasir - 1 sendok makan (opsional) <br>\r\nPandan atau Vanili - 1/2 sendok teh (opsional) <br>\r\nRagi Instan - 1/2 sendok teh (opsional) <br><br>\r\n\r\n<b>Cara Membuat Surabi</b>:<br>\r\n\r\nAdonan Surabi: <br>\r\nCampurkan tepung beras, kelapa parut, dan garam. Tambahkan santan sedikit demi sedikit sambil diaduk hingga rata. Tambahkan air jika terlalu kental. (Opsional: tambahkan ragi dan diamkan 30 menit).<br>\r\nMemasak Surabi: <br>\r\nPanaskan cetakan atau wajan anti lengket dengan api kecil. Tuang adonan, tutup, dan masak hingga bagian bawah kecoklatan. Sajikan dengan gula merah cair dan serundeng.<br>', 'Rendah', '1 Jam', '4.8', 'https://thumb.viva.id/vivabandung/665x374/2023/09/04/64f581e1085dc-ilustrasi-resep-surabi-makanan-khas-indoensia_bandung.jpg', 'Tepung beras, Santan, Air, Garam, Gula, Baking powder, Kelapa parut, Gula merah, Gula Pasir, tepung terigu,'),
('9', 'Pengkang', 'Gilang', 'Pengkang adalah makanan tradisional dari Kalimantan Barat, Indonesia. Terbuat dari ketan yang diisi dengan udang ebi, kemudian dibungkus daun pisang dan dipanggang hingga matang. Makanan ini memiliki rasa gurih dan aroma yang khas dari daun pisang. <br>\r\n\r\n<b>Bahan-Bahan Pengkang</b> <br>\r\n<b>Bahan Utama</b>:<br>\r\nBeras Ketan - 500 gram <br>\r\nSantan - 500 ml <br>\r\nGaram - 1 sendok teh <br>\r\nDaun Pisang - secukupnya <br><br>\r\n\r\n<b>Bahan Isian</b>:<br>\r\nUdang Ebi - 100 gram, rendam dan cincang halus <br>\r\nBawang Merah - 4 siung, iris halus <br>\r\nBawang Putih - 2 siung, iris halus <br>\r\nGula Merah - 1 sendok makan <br>\r\nGaram - secukupnya <br><br>\r\n<b>Cara Membuat Pengkang</b>:<br>\r\n- Adonan Ketan: <br>\r\nMasak ketan dengan santan dan garam hingga matang.<br>\r\n- Isian: <br>\r\nTumis bawang merah dan bawang putih hingga harum, masukkan ebi, gula merah, dan garam, masak hingga matang.\r\n<br>\r\n- Pembungkusan dan Pemanggangan:<br>\r\nAmbil sedikit ketan, beri isian, bungkus dengan daun pisang, panggang hingga daun pisang kecoklatan.\r\n</li>\r\n</ul>\r\n', 'Sulit', '2 Jam', '4.7', 'https://asset.kompas.com/crops/ziyL3d140VlgLEUIp-Vca-QL3R4=/0x4:992x665/750x500/data/photo/2022/06/24/62b5811290a7c.jpg', 'Tepung beras, Kelapa parut, Gula merah, Daun pisang untuk membungkus.'),
('33', 'Lempah', 'Thoriq', 'Lempah adalah hidangan sup ikan khas dari Bangka Belitung, Indonesia. Dimasak dengan bumbu kunyit, asam, dan rempah-rempah, lempah memiliki rasa asam pedas yang segar. <br>\r\n\r\n<b>Bahan-Bahan Lempah</b> <br>\r\n<b>Bahan Utama</b>:<br>\r\nIkan Tenggiri - 500 gram, potong-potong <br>\r\nAir Asam Jawa - 100 ml <br>\r\nDaun Salam - 2 lembar <br>\r\nSerai - 2 batang, memarkan <br><br>\r\n\r\n<b>Bumbu Halus</b>:<br>\r\nBawang Merah - 6 butir <br>\r\nBawang Putih - 3 siung <br>\r\nKunyit - 2 cm <br>\r\nJahe - 1 cm <br>\r\nCabai Merah - 5 buah <br>\r\nGaram dan Gula - secukupnya <br><br>\r\n\r\n<b>Cara Membuat Lempah</b>:<br>\r\n\r\nRebus Bumbu: <br>\r\nRebus bumbu halus bersama daun salam dan serai hingga harum.<br>\r\nMasak Ikan: <br>\r\nMasukkan ikan, tambahkan air asam jawa, garam, dan gula, masak hingga ikan matang.<br>', 'Rendah', '1 Jam', '4.7', 'https://wonderful.pangkalpinangkota.go.id/wp-content/uploads/2020/10/unnamed-1.jpg', 'Ikan (biasanya ikan tenggiri atau ikan patin), Daun pisang atau daun jati, Bumbu rempah (lengkuas, kunyit, daun salam, daun jeruk), Cabai merah (opsional), Garam.'),
('6', 'Mandai', 'Gilang', 'Mandai adalah makanan tradisional dari Kalimantan Selatan, Indonesia. Terbuat dari kulit cempedak yang difermentasi dan digoreng. Mandai memiliki rasa yang gurih dan tekstur yang unik. <br>\r\n\r\n<b>Bahan-Bahan Mandai</b> <br>\r\n<b>Bahan Utama</b>:<br>\r\nKulit Cempedak - 500 gram, potong-potong <br>\r\nGaram - 2 sendok makan <br>\r\nAir - secukupnya untuk merendam <br><br>\r\n\r\n<b>Cara Membuat Mandai</b>:<br>\r\n\r\nFermentasi: <br>\r\nRendam potongan kulit cempedak dalam air garam selama 2-3 hari.<br>\r\nPenggorengan: <br>\r\nTiriskan kulit cempedak, goreng hingga kecoklatan dan garing.<br>', 'rendah', '7 Jam', '4.7', 'https://www.djkn.kemenkeu.go.id/files/images/2023/01/mandai1-604602d1e32c477f72741f53.jpg', 'Tepung sagu, Ikan (biasanya ikan mujair atau ikan lele), Bumbu rempah (bawang merah, bawang putih, kemiri, lengkuas, daun salam), Garam, Minyak goreng.'),
('33', 'Bika Ambon', 'Gilang', 'Bika Ambon adalah kue tradisional dari Medan, Sumatera Utara, Indonesia. Kue ini terkenal dengan teksturnya yang berserat dan rasa yang manis serta aroma harum dari pandan dan serai. <br>\r\n\r\n<b>Bahan-Bahan Bika Ambon</b> <br>\r\n<b>Bahan Utama</b>:<br>\r\nTepung Sagu - 100 gram <br>\r\nTepung Terigu - 100 gram <br>\r\nGula Pasir - 200 gram <br>\r\nSantan - 250 ml <br>\r\nAir Kelapa - 100 ml <br>\r\nRagi Instan - 1 sendok teh <br>\r\nDaun Jeruk - 5 lembar <br>\r\nSerai - 2 batang, memarkan <br>\r\nKunyit - 2 cm, parut dan ambil airnya <br><br>\r\n\r\n<b>Cara Membuat Bika Ambon</b>:<br>\r\n\r\nCampurkan air kelapa dengan ragi, biarkan berbusa. <br>\r\nRebus santan dengan daun jeruk, serai, dan air kunyit hingga harum, saring. <br>\r\nCampur tepung sagu, tepung terigu, dan gula, tuang santan sedikit demi sedikit sambil diaduk rata. <br>\r\nTambahkan air kelapa yang sudah dicampur ragi, aduk rata, diamkan 2 jam. <br>\r\nTuang adonan ke dalam loyang, panggang dalam oven hingga matang dan berwarna kuning kecoklatan. <br>', 'rendah', '7 Jam', '4.7', 'https://cdn1-production-images-kly.akamaized.net/QDSCMLfnZLj1GJzeRwLcIjaf_b0=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/842440/original/083135300_1427970222-bikaambon.jpg', 'Tepung beras, Santan, Telur, Gula, Ragi tape.'),
('34', 'Mie Aceh', 'Gilang', 'Mie Aceh adalah makanan khas dari Kota Banda Aceh, Aceh. Terbuat dari mie kuning yang disajikan dengan kuah khas rempah-rempah Aceh, seperti kari dan daging sapi atau seafood. Mie Aceh dikenal karena kelezatan kuahnya yang kaya rempah.<br>\r\n\r\n<b>Bahan-Bahan Mie Aceh</b> <br>\r\n<b>Bahan Utama</b>:<br>\r\nMie Kuning Basah - 500 gram <br>\r\nDaging Sapi atau Kambing - 200 gram, potong kecil <br>\r\nUdang - 100 gram, kupas <br>\r\nTomat - 2 buah, potong-potong <br>\r\nKol - 100 gram, iris kasar <br>\r\nDaun Bawang - 2 batang, iris halus <br>\r\nTauge - 100 gram <br>\r\nKecap Manis - 3 sendok makan <br>\r\nMinyak Goreng - secukupnya <br>\r\nAir - 500 ml <br><br>\r\n\r\n<b>Bumbu Halus</b>:<br>\r\nBawang Merah - 6 butir <br>\r\nBawang Putih - 4 siung <br>\r\nCabai Merah - 5 buah <br>\r\nKunyit - 2 cm <br>\r\nJinten - 1/2 sendok teh <br>\r\nKetumbar - 1 sendok teh <br>\r\nGaram dan Gula - secukupnya <br><br>\r\n\r\n<b>Cara Membuat Mie Aceh</b>:<br>\r\n\r\nTumis bumbu halus hingga harum, masukkan daging dan udang, masak hingga berubah warna. <br>\r\nTambahkan air, masak hingga daging empuk. <br>\r\nMasukkan tomat, kol, daun bawang, tauge, dan mie kuning, aduk rata. <br>\r\nTambahkan kecap manis, garam, dan gula, aduk rata, masak hingga semua bahan matang dan bumbu meresap. <br>\r\nSajikan mie aceh dengan taburan bawang goreng dan acar timun. <br>', 'rendah', '7 Jam', '4.7', 'https://asset.kompas.com/crops/7tBNI9-TCa-oOq8tQTahf0ua1fg=/0x0:968x645/750x500/data/photo/2021/01/27/6010ce2cc1805.jpg', 'Mie kuning, Daging sapi atau seafood, Bumbu rempah Aceh (jahe, lengkuas, kunyit, bawang putih, bawang merah, cabai, kemiri), Santan, Daun bawang, Bawang goreng, Telur rebus (opsional).'),
('4', 'Kerak Telor', 'Gilang', 'Kerak Telor adalah makanan khas dari Jakarta, Indonesia. Terbuat dari campuran beras ketan, telur ayam, dan bumbu-bumbu rempah, yang kemudian dipanggang hingga kecokelatan. Biasanya disajikan dengan bawang merah goreng dan cabai rawit. <br>\r\n\r\n\r\n\r\n<b>Bahan-Bahan Kerak Telor</b> <br>\r\n<b>Bahan Utama</b>:<br>\r\nBeras Ketan - 200 gram, rendam 2 jam <br>\r\nTelur Bebek - 4 butir <br>\r\nUdang Ebi - 50 gram, rendam dan cincang halus <br>\r\nKelapa Parut - 100 gram, sangrai <br>\r\nBawang Merah Goreng - 50 gram <br>\r\nSerundeng Kelapa - secukupnya <br><br>\r\n\r\n<b>Bumbu Halus</b>:<br>\r\nBawang Merah - 6 butir <br>\r\nBawang Putih - 3 siung <br>\r\nKemiri - 3 butir <br>\r\nKencur - 2 cm <br>\r\nGaram dan Gula - secukupnya <br><br>\r\n\r\n<b>Cara Membuat Kerak Telor</b>:<br>\r\n\r\nPanaskan wajan kecil, masukkan 2 sendok makan beras ketan, ratakan. <br>\r\nTuang telur bebek yang sudah dikocok lepas, tambahkan ebi dan bumbu halus, aduk rata. <br>\r\nPanggang hingga setengah matang, balik wajan menghadap api hingga bagian atasnya matang. <br>\r\nTaburi kelapa sangrai, bawang merah goreng, dan serundeng kelapa. Sajikan hangat. <br>', 'rendah', '10 Menit', '4.8', 'https://www.dapurkobe.co.id/wp-content/uploads/kerak-telor.jpg', '6 sdm beras ketan, rendam semalam dan tiriskan, 2 buah telur bebek, 2 sdt udang kering, rendam, sangrai dan haluskan, 2 sdm kelapa parut setengah tua, sangrai, 1 sdm bawang goreng, 1 sdm cabai merah iris, sangrai dan haluskan, 1 sdt garam.'),
('3', 'Rawon', 'Gilang', 'Rawon adalah masakan khas Jawa Timur, Indonesia. Sup khas ini terbuat dari daging sapi yang dimasak dengan bumbu rempah khas, memberikan rasa kaya dengan warna hitam khasnya.<br>\r\n\r\n<b>Bahan-Bahan Rawon</b> <br>\r\n<b>Bahan Utama</b>:<br>\r\nDaging Sapi (Sandung Lamur) - 500 gram, potong dadu <br>\r\nAir - 1.5 liter <br>\r\nSerai - 2 batang, memarkan <br>\r\nDaun Jeruk - 5 lembar <br>\r\nDaun Salam - 2 lembar <br>\r\nLengkuas - 2 cm, memarkan <br>\r\nMinyak Goreng - secukupnya <br><br>\r\n\r\n<b>Bumbu Halus</b>:<br>\r\nBawang Merah - 6 butir <br>\r\nBawang Putih - 4 siung <br>\r\nKluwek - 5 buah, ambil isinya <br>\r\nKemiri - 3 butir <br>\r\nKunyit - 2 cm <br>\r\nJahe - 2 cm <br>\r\nKetumbar - 1 sendok teh <br>\r\nJinten - 1/2 sendok teh <br>\r\nGaram dan Gula - secukupnya <br><br>\r\n\r\n<b>Cara Membuat Rawon</b>:<br>\r\n\r\nRebus daging sapi hingga setengah empuk, angkat dan tiriskan. Simpan air rebusan. <br>\r\nTumis bumbu halus bersama serai, daun jeruk, daun salam, dan lengkuas hingga harum. <br>\r\nMasukkan tumisan bumbu ke dalam air rebusan daging, masukkan daging, masak hingga daging empuk dan bumbu meresap. <br>\r\nSajikan rawon dengan nasi, taoge, sambal, dan kerupuk. <br>', 'rendah', '30 Menit', '4.8', 'https://asset.kompas.com/crops/YoZ-O9bR7rpbA9hexhPEpDqgGZc=/0x12:983x667/750x500/data/photo/2023/11/17/6556dc6484a92.jpg', 'Daging sapi, Bumbu rempah (kluwek, lengkuas, jahe, bawang putih, bawang merah), Serai, Daun salam, Daun jeruk, Garam, Minyak goreng, Air.'),
('4', 'Nasi Uduk', 'Gilang', 'Nasi Uduk adalah masakan khas DKI Jakarta, Indonesia. Nasi yang khas ini dimasak dengan bumbu rempah khas, memberikan rasa yang kaya akan wangi khasnya.<br>\r\n\r\n<b>Bahan-Bahan Nasi Uduk</b> <br>\r\n<b>Bahan Utama</b>:<br>\r\nBeras - 500 gram, cuci bersih <br>\r\nSantan Kental - 800 ml <br>\r\nDaun Salam - 3 lembar <br>\r\nSerai - 2 batang, memarkan <br>\r\nDaun Pandan - 2 lembar, simpulkan <br>\r\nGaram - 1 sendok teh <br><br>\r\n\r\n<b>Lauk Pelengkap</b>:<br>\r\nAyam Goreng - secukupnya <br>\r\nTelur Rebus - secukupnya <br>\r\nTahu dan Tempe Goreng - secukupnya <br>\r\nSambal Kacang - secukupnya <br>\r\nBawang Goreng - secukupnya <br><br>\r\n\r\n<b>Cara Membuat Nasi Uduk</b>:<br>\r\n\r\nRebus santan dengan daun salam, serai, daun pandan, dan garam hingga mendidih. <br>\r\nMasukkan beras ke dalam santan mendidih, masak hingga santan meresap. <br>\r\nKukus beras yang telah dimasak dengan santan hingga matang. <br>\r\nSajikan nasi uduk dengan lauk pelengkap. <br>', 'rendah', '30 Menit', '4.8', 'https://asset.kompas.com/crops/v6CfIMJClla33MnID_vqw9m8mjw=/100x67:900x600/750x500/data/photo/2021/02/21/603203834f00f.jpg', 'Beras (cuci bersih), Sasa Santan Bubuk, Air, Sasa Bumbu Ekstrak Daging Ayam, batang sereh, daun salam, lengkuas, ayam (potong menjadi 12 bagian).'),
('38', 'Gudeg', 'Gilang', 'Gudeg adalah makanan khas Yogyakarta, Indonesia, yang terbuat dari nangka muda yang dimasak dengan santan dan berbagai rempah-rempah. Gudeg memiliki rasa manis dan gurih, dan biasanya disajikan dengan ayam, telur, tahu, dan sambal krecek. <br>\r\n\r\n<b>Bahan-Bahan Gudeg</b> <br>\r\n<b>Bahan Utama</b>:<br>\r\nNangka Muda - 1 kg, potong-potong <br>\r\nSantan Kental - 1 liter <br>\r\nAir Kelapa - 1 liter <br>\r\nDaun Salam - 5 lembar <br>\r\nSerai - 3 batang, memarkan <br>\r\nLengkuas - 5 cm, memarkan <br>\r\nGula Merah - 200 gram, serut <br>\r\nGaram - secukupnya <br><br>\r\n\r\n<b>Bumbu Halus</b>:<br>\r\nBawang Merah - 8 butir <br>\r\nBawang Putih - 5 siung <br>\r\nKemiri - 5 butir <br>\r\nKetumbar - 1 sendok teh <br>\r\nKencur - 2 cm <br><br>\r\n\r\n<b>Cara Membuat Gudeg</b>:<br>\r\n\r\nRebus nangka muda dalam air kelapa bersama daun salam, serai, dan lengkuas hingga setengah empuk. <br>\r\nTumis bumbu halus hingga harum, masukkan ke dalam rebusan nangka. <br>\r\nTambahkan santan, gula merah, dan garam, masak dengan api kecil hingga nangka benar-benar empuk dan bumbu meresap. <br>\r\nSajikan gudeg dengan nasi, ayam, telur, tahu, dan sambal krecek. <br>', 'Sedang', '5-6 jam', '4,9', 'https://asset.kompas.com/crops/lU3xDz9UDCYg9qWpqGqyuTTq5CQ=/23x0:868x563/750x500/data/photo/2022/07/12/62ccebf61f9ce.jpeg', 'adaadad');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `coments`
--
ALTER TABLE `coments`
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indeks untuk tabel `daerahs`
--
ALTER TABLE `daerahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `makanans`
--
ALTER TABLE `makanans`
  ADD KEY `id` (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daerahs`
--
ALTER TABLE `daerahs`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
