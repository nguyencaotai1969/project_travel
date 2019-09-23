-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 09:10 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_booking`
--

CREATE TABLE `tb_booking` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_comment`
--

CREATE TABLE `tb_comment` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `noidung` text COLLATE utf8_vietnamese_ci NOT NULL,
  `ngaydang` datetime NOT NULL,
  `id_tour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `message` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_booking`
--

CREATE TABLE `tb_detail_booking` (
  `id_booking` int(11) NOT NULL,
  `id_tour` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `date` datetime NOT NULL,
  `pay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_diemden`
--

CREATE TABLE `tb_diemden` (
  `id` int(11) NOT NULL,
  `id_mien` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `gioithieu` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tb_diemden`
--

INSERT INTO `tb_diemden` (`id`, `id_mien`, `name`, `img`, `gioithieu`) VALUES
(1, 1, 'Hà Nội', '', ''),
(2, 1, 'Hạ Long', '', 'Vịnh Hạ Long nơi rồng đáp xuống, là danh thắng quốc gia được xếp hạng từ năm 1962. Hạ Long có 1.969 hòn đảo, lô nhô trên mặt biển, nổi tiếng nhất là các hòn Lư Hương, Gà Chọi, Cánh Buồm, Mâm Xôi, đảo Ngọc Vừng, Ti Tốp, Tuần Châu. Hạ Long như bức tranh thủy mặc khổng lồ, tuyệt đẹp, xứng đáng là biểu tượng du lịch Việt Nam.'),
(3, 1, 'Ninh Bình', '', ''),
(4, 1, 'Lào Cai', '', 'Lào Cai là khu du lịch trọng tâm của miền Bắc với những thắng cảnh Sa Pa thị trấn trong mây, chợ tình quyến rũ, đỉnh Phan Xi Păng và Cửa khẩu Quốc tế Lào Cai Hà Khẩu. Lào Cai có nhiều địa danh lịch sử, hang động tự nhiên, đặc sản và là nơi mang đậm nét đặc trưng văn hoá độc đáo của nhiều dân tộc anh em.'),
(5, 2, 'Thanh Hóa', '', ''),
(6, 2, 'Quảng Bình', '', ''),
(7, 2, 'Đà Lạt', '', 'Đà Lạt mộng mơ nơi mimosa và ngàn hoa khoe sắc, từ đồi Robin ngắm Hồ Tuyền Lâm, núi Voi, viếng Thiền Viện Trúc Lâm, thăm Dinh Bảo Đại, tản bộ dưới những tán thông, ngắm biệt thự cổ, nhấm nháp ly café ấm áp trong thời tiết se lạnh. Những chuyến xe ngựa thổ mộ chạy quanh Hồ Xuân Hương cũng là nét duyên của Đà Lạt mờ sương. '),
(8, 2, 'Đà Nẵng', '', ''),
(9, 2, 'Huế', '', 'Huế thương sơn thủy hữu tình, nơi tọa lạc Đại Nội, Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Lăng Tự Đức, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh xưa của 13 vị vua triều Nguyễn. Chùa Thiên Mụ lưu giữ cổ vật lịch sử, nghệ thuật quý giá. Chiều buông, ta ngồi thuyền rồng xuôi dòng sông Hương thưởng thức ca hò Huế, thả hoa đăng cầu phúc lộc.'),
(10, 3, 'Phú Quốc', '', ''),
(11, 3, 'Vũng Tàu', '', 'Du lich Vũng Tàu: Những cung đường biển đẹp như mơ, ngọn Hải đăng cổ nổi tiếng, tượng Chúa giang tay bình yên, những góc phố thơ mộng, cùng những món ăn hấp dẫn là những gì du khách không thể bỏ qua khi đến với Vũng Tàu. Vũng Tàu trở thành đô thị loại I năm 2013, là một thành phố đáng tới, đáng sống và hạnh phúc.'),
(12, 3, 'Hồ Chí Minh', '', ''),
(13, 3, 'Cần Thơ', '', 'Về Cần Thơ thăm Bến Ninh Kiều, ngắm cầu Quang Trung, dạo chợ nổi Cái Răng nhộn nhịp, tham quan Nhà Cổ, thưởng thức đặc sản trái cây miền Tây trĩu ngọt. Khu du lịch sinh thái Mỹ Khánh là nơi bạn trải nghiệm các trò chơi dân gian vui nhộn như câu cá, chèo thuyền trên sông, đua heo. '),
(14, 1, 'Hà Giang', 'Ava', 'Hà Giang - mảnh đất địa đầu Tổ quốc Việt Nam với khí hậu quanh năm mát mẻ, không khí trong lành là địa chỉ du lịch hấp dẫn đối với du khách. Đến Hà Giang, các bạn sẽ được chiêm ngưỡng nhiều thắng cảnh hùng vĩ, ngoạn mục như cao nguyên Đồng Văn, núi đôi Quản Bạ, dinh vua Mèo, đèo Mã Pí Lèng, cột cờ Lũng Cú, cùng nhiều ghềnh thác, hang động kỳ thú sẽ mang lại cho bạn trải nghiệm tuyệt vời'),
(15, 2, 'Nha Trang', 'Ava', 'Biển Nha Trang tuyệt vời với Vinpearl Nha Trang 5* sang trọng, hòn Mun Hòn Tằm nước trong veo và san hô lộng lẫy, cùng với vịnh Ninh Vân, vịnh Vân Phong hoang sơ và thuần khiết. Viện Hải dương học Nha Trang có trên 20.000 mẫu sinh vật dưới nước, tháp Bà Ponagar hoàn mỹ của người Chăm, cảng Vũng Rô, làng Đại Lãnh và chợ Đầm nhộn nhịp. ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_group_user`
--

CREATE TABLE `tb_group_user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tb_group_user`
--

INSERT INTO `tb_group_user` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Staff'),
(3, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `tb_g_p`
--

CREATE TABLE `tb_g_p` (
  `id_group_user` int(11) NOT NULL,
  `id_permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_img`
--

CREATE TABLE `tb_img` (
  `id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `id_tour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mien`
--

CREATE TABLE `tb_mien` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tb_mien`
--

INSERT INTO `tb_mien` (`id`, `name`) VALUES
(1, 'Miền Bắc'),
(2, 'Miền Trung'),
(3, 'Miền Nam');

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

CREATE TABLE `tb_news` (
  `id` int(11) NOT NULL,
  `tieude` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `tomtat` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `noidung` text COLLATE utf8_vietnamese_ci NOT NULL,
  `ngaydang` datetime NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_diemden` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_permission`
--

CREATE TABLE `tb_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_score`
--

CREATE TABLE `tb_score` (
  `id_tour` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_status_booking`
--

CREATE TABLE `tb_status_booking` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tb_status_booking`
--

INSERT INTO `tb_status_booking` (`id`, `name`) VALUES
(1, 'Hủy'),
(2, 'Chưa cọc'),
(3, 'Đã cọc'),
(4, 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status_tour`
--

CREATE TABLE `tb_status_tour` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tb_status_tour`
--

INSERT INTO `tb_status_tour` (`id`, `name`) VALUES
(0, 'Hủy'),
(1, 'Chưa đủ'),
(2, 'Đã đủ'),
(3, 'Đã hoàn thành');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tour`
--

CREATE TABLE `tb_tour` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_diemden` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `gia` int(11) DEFAULT NULL,
  `giamoi` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `lichtrinh` text COLLATE utf8_vietnamese_ci NOT NULL,
  `songay` int(11) NOT NULL,
  `ngaykhoihanh` date NOT NULL,
  `noikhoihanh` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `ngaydang` datetime NOT NULL,
  `id_status` int(11) NOT NULL,
  `socho` int(11) NOT NULL,
  `sochodadat` int(11) NOT NULL,
  `luuy` text COLLATE utf8_vietnamese_ci,
  `chitiet` text COLLATE utf8_vietnamese_ci,
  `danhgia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tb_tour`
--

INSERT INTO `tb_tour` (`id`, `name`, `id_diemden`, `gia`, `giamoi`, `avatar`, `lichtrinh`, `songay`, `ngaykhoihanh`, `noikhoihanh`, `id_user`, `ngaydang`, `id_status`, `socho`, `sochodadat`, `luuy`, `chitiet`, `danhgia`) VALUES
(1, 'Hà Nội - Lào Cai - Sapa - Fansipan - Yên Tử - Hạ Long - Tặng Vé Xe Lửa Mường Hoa', '1 2 4', 7990000, 7190000, 'Avatar', 'Sa Pa thu hút du khách với những thửa ruộng vàng óng vào mùa lúa chín, chợ tình quyến rũ, đỉnh Phan Xi Păng hùng vỹ. Hà Nội cổ kính, nên thơ trong sương sớm. Hạ Long kỳ vỹ với những hòn Gà Chọi, Đỉnh Hương… là những tuyệt tác thiên nhiên kỳ diệu là những điểm đến hấp dẫn cho quý khách trong hành trình này.\r\n\r\n01.\r\n23-09-2019\r\n   TP. HỒ CHÍ MINH - NỘI BÀI (HÀ NỘI) - LÀO CAI – SAPA (Ăn trưa, chiều)\r\nQuý khách tập trung tại sân bay Tân Sơn Nhất - ga đi trong nước. Hướng dẫn viên làm thủ tục cho đoàn đáp chuyến bay đi Hà Nội.\r\nXe Vietravel đón đoàn tại sân bay Nội Bài, khởi hành đi Sa Pa theo cung đường cao tốc hiện đại và dài nhất Việt Nam.\r\nĐến Sapa, nhận phòng nghỉ ngơi. Buổi chiều quý khách thăm \r\n- Bản Cát Cát đẹp như một bức tranh giữa vùng phố cổ Sapa, nơi đây thu hút du khách bởi cầu treo, thác nước, guồng nước và những mảng màu hoa mê hoặc du khách khi lạc bước đến đây.\r\n- Thăm những nếp nhà của người Mông trong bản, du khách sẽ không khỏi ngỡ ngàng trước vẻ đẹp bình dị, mộc mạc. \r\nBuổi tối Quý khách dạo phố, ngắm nhà thờ Đá Sapa, tự do thưởng thức đặc sản vùng cao như: thịt lợn cắp nách nướng, trứng nướng, rượu táo mèo, giao lưu với người dân tộc vùng cao. \r\nNghỉ đêm tại Sapa.\r\n\r\n02.\r\n24-09-2019\r\n   SA PA – FANSIPAN HÙNG VĨ - LÀO CAI (Ăn sáng, trưa, chiều)\r\nTrả phòng khách sạn, xe đưa đoàn ra ga Sapa, Quý khách trải nghiệm đến khu du lịch Fansipan Legend bằng Tàu hỏa leo núi Mường Hoa hiện đại nhất Việt Nam với tổng chiều dài gần 2000m, thưởng ngoạn bức tranh phong cảnh đầy màu sắc của cánh rừng nguyên sinh, thung lũng Mường Hoa.\r\n- Chinh phục đỉnh núi Fansipan với độ cao 3.143m hùng vĩ bằng cáp treo (chi phí tự túc). \r\n- Lễ Phật tại chùa Trình hay cầu phúc lộc, bình an cho gia đình tại Bích Vân Thiền Tự trong hệ thống cảnh quan tâm linh trên đỉnh Fansipan. \r\nSau đó, xe đưa Quý khách tham quan đỉnh đèo Ô Quy Hồ một trong “Tứ đại đỉnh đèo” phía Bắc. \r\nBuổi chiều tham quan:\r\n- Núi Hàm Rồng thăm vườn Lan khoe sắc, vườn hoa Trung Tâm, ngắm Núi Phanxipăng hùng vĩ, Cổng Trời, Đầu Rồng Thạch Lâm, Sân Mây.  \r\nSau đó khởi hành về Lào Cai, nhận phòng khách sạn. Tự do khám phá thành phố về đêm. \r\nNghỉ đêm tại Lào Cai. \r\n\r\n03.\r\n25-09-2019\r\n   LÀO CAI - HÀ NỘI (Ăn sáng, trưa, chiều)\r\nTrả phòng khách sạn, quý khách tham quan \r\n- Cửa khẩu biên giới Việt - Trung “Lào Cai- Hà Khẩu”\r\n- Mua sắm tại chợ Cốc Lếu - Trung tâm thương mại lớn nhất, của thành phố nói riêng và Tỉnh Lào Cai nói chung. Nơi đây bày bán đa dạng đủ các loại mặt hàng từ thủ công mỹ nghệ, tranh nghệ thuật phong cảnh đến quần áo…sẽ là một điểm mua sắm tuyệt vời với du khách.\r\nTheo cung đường cao tốc trở về Hà Nội, nhận phòng nghỉ ngơi. Xe đưa Quý khách dạo quanh \r\n- Hồ Hoàn Kiếm ngắm Tháp Rùa, Đền Ngọc Sơn, Cầu Thê Húc. \r\nSau bữa ăn chiều, Quý Khách tự do khám phá Hà Nội hoặc lựa chọn chương trình thư giãn (chi phí tự túc) :\r\n- Trải nghiệm massage bấm huyệt kiểu Việt Nam truyền thống tại Spa Sen Garden, ít nhất 75 phút gồm các công đoạn tắm trắng, massage, bấm huyệt, sau đó dùng bữa nhẹ buffet mini gồm 10 món nhẹ + nước uống, chè.\r\n Nghỉ đêm tại Hà Nội. \r\n\r\n04.\r\n26-09-2019\r\n   HÀ NỘI - YÊN TỬ - HẠ LONG (Ăn sáng, trưa, chiều)\r\nSau khi ăn sáng, xe đưa Quý khách tham quan\r\n- Lăng Hồ Chủ Tịch – tìm hiểu về cuộc đời và sự nghiệp của vị cha già kính yêu của dân tộc (không viếng vào thứ 2, thứ 6 hàng tuần và thời gian bảo trì định kì hàng năm 15/6-15/8), Nhà Sàn Bác Hồ, Bảo Tàng Hồ Chí Minh, Chùa Một Cột.\r\n- Văn Miếu - Nơi thờ Khổng Tử và các bậc hiền triết của Nho Giáo, Quốc Tử Giám - Trường đại học đầu tiên của Việt Nam, tìm về cội nguồn lịch sử của các vị Nho học.\r\nTiếp tục hành trình đi Hạ Long, trên đường đi Quý khách ghé tham quan\r\n- Núi Yên Tử - Thắng cảnh thiên nhiên còn lưu giữ nhiều di tích lịch sử với mệnh danh “Đất tổ Phật giáo Việt Nam”. \r\n- Chùa Hoa Yên - Ngôi chùa to và đẹp, nằm trên lưng chừng núi ở độ cao 516m, thăm Tháp Tổ (chi phí cáp treo tự túc). \r\nChiều về Hạ Long nhận phòng. Buổi tối xe đưa Quý khách ngắm cầu Bãi Cháy và thành phố Hạ Long về đêm.\r\nNghỉ đêm tại Hạ Long. \r\nMột số lựa chọn dành cho Quý khách muốn khám phá thêm Hạ Long: \r\n- Lựa chọn 1: Tham quan Sun World Ha Long Park trên Núi Ba Đèo bằng cáp treo Nữ Hoàng), trải nghiệm vòng quay mặt trời, tham quan vườn Nhật, khu trưng bày tượng sáp, khu vui chơi trẻ em.\r\n- Lựa chọn 2: Xem Múa rối nước Hoa Sen Hạ Long – Đây là một loại hình nghệ thuật sân khấu dân gian truyền thống độc đáo, một sáng tạo đặc biệt của người Việt, chỉ có duy nhất ở Việt Nam, qua những tiết mục múa rối, khán giả sẽ được dẫn dắt vào một thế giới tưởng tượng phong phú, tìm hiểu về truyền thuyết và sự ra đời tên gọi Vịnh Hạ Long.\r\n\r\n05.\r\n27-09-2019\r\n   HẠ LONG - (NỘI BÀI) HÀ NỘI – TPHCM (Ăn sáng, trưa)\r\nQuý khách ra bến tàu, xuống tàu du ngoạn\r\n- Vịnh Hạ Long - Thắng cảnh thiên nhiên tuyệt đẹp và vô cùng sống động, được UNESCO công nhận là di sản thiên nhiên Thế giới năm 1994. \r\n- Động Thiên Cung là một trong những động đẹp nhất ở Hạ Long. Vẻ đẹp nguy nga và lộng lẫy bởi những lớp thạch nhũ và những luồng ánh sáng lung linh.\r\n- Từ trên tàu ngắm nhìn các hòn đảo lớn nhỏ trong Vịnh Hạ Long: Hòn Gà Chọi, Hòn Lư Hương. \r\nTrở về Hà Nội xe đưa Quý khách ra sân bay Nội Bài đáp chuyến bay về Tp.HCM. Chia tay Quý khách và kết thúc chương trình du lịch tại sân bay Tân Sơn Nhất.\r\n', 5, '2019-09-23', 'Hồ Chí Minh', 2, '2019-09-19 22:10:00', 1, 20, 14, '***Ghi chú: Giá tour có thể thay đổi tùy ngày khởi hành, hãng hàng không, tiêu chuẩn khách sạn và không áp  dụng giai đoạn Lễ, Tết,…\r\n \r\n  Lộ trình tham khảo, cự ly khoảng:\r\nNgày 01 (301 km): SB Nội Bài - TP Lào Cai (262 km) – Sa Pa (39 km)\r\nNgày 02 (47 km): Sa Pa – Fansipan Legend (5 km) – TP Lào Cai (42 km)\r\nNgày 03 (300 km): Tp Lào Cai – Hà Nội (300 km)\r\nNgày 04 (197 km): Hà Nội – Yên Tử (141 km) - TP Hạ Long (56 km)\r\nNgày 05 (145 km): TP Hạ Long – SB Nội Bài (145 km)\r\n \r\nGiá tour bao gồm: \r\n- Xe tham quan (15, 25, 35, 45 chỗ tùy theo số lượng khách) theo chương trình\r\n- Vé máy bay khứ hồi \r\n- Khách sạn theo tiêu chuẩn 2 khách/phòng hoặc 3 khách/phòng \r\n+  Hà Nội 3 sao: Delight, Ha Noi Emotion, Hồng Hà….(do đặc điểm vị trí khách sạn có diện tích nhỏ)\r\n+ Hạ Long 3 sao: Kenny Hạ Long, Golden Lotus, New star….\r\n+ Lào Cai 4 sao: Mường Thanh Lào Cai, Sapaly…..\r\n+ Sapa 3 sao: Holiday Sapa, Sunny Moutain……\r\n- Vé tham quan theo chương trình\r\n- Các bữa ăn theo chương trình : 04 bữa sáng buffet + 09 bữa chính từ 120.000 – 140.000vnd/ khách \r\n- Hướng dẫn viên tiếng Việt nối tuyến\r\n- Bảo hiểm du lịch với mức bồi thường cao nhất 120.000.000đ/vụ\r\n- Nón Vietravel + Nước suối + Khăn lạnh \r\n- Thuế VAT \r\n \r\nGiá tour không bao gồm: \r\n- Chi phí cá nhân: ăn uống ngoài chương trình, giặt ủi, chi phí hủy đổi hành trình và nâng hạng chuyến bay, hành lý quá cước, phụ thu phòng đơn,…\r\n- Chi phí tham quan ngoài chương trình : Cáp Treo Yên Tử, Cáp Treo Fansipan, KDL Đảo Tuần Châu, Sunworld Hạ Long\r\n \r\nGiá vé trẻ em: \r\n-     Trẻ em dưới 5 tuổi:  không thu phí dịch vụ, bố mẹ tự lo cho bé và thanh toán các chi phí phát sinh (đối với các dịch vụ tính phí theo chiều cao…). Hai người lớn chỉ được kèm 1 trẻ em dưới 5 tuổi, trẻ em thứ 2 sẽ đóng phí theo qui định dành cho độ tuổi từ 5 đến dưới 12 tuổi và phụ thu phòng đơn. Vé máy bay, tàu hỏa, phương tiện vận chuyển công cộng mua vé theo qui định của các đơn vị vận chuyển.\r\n-  Trẻ em từ 5 tuổi đến dưới 12 tuổi: 75% giá tour người lớn (không có chế độ giường riêng). Hai người lớn chỉ được kèm 1 trẻ em từ 5 - dưới 12 tuổi, em thứ hai trở lên phải mua 1 suất giường đơn.\r\n-  Trẻ em từ 12 tuổi trở lên: mua một vé như người lớn\r\n-  Vé máy bay phải mua theo quy định của từng hãng hàng không\r\n \r\nĐiều kiện thanh toán: \r\n- Khi đăng ký đặt cọc 50% số tiền tour\r\n- Số tiền còn lại thanh toán hết trước ngày khởi hành 7-10 ngày (áp dụng tour ngày thường), trước ngày khởi hành 20-25 ngày (áp dụng tour lễ tết) \r\n \r\nCác điều kiện khi đăng ký tour: \r\n- Đối với Khách Quốc tịch Việt Nam: Khi đi tour Trẻ em từ 14 tuổi trở lên và người lớn cần đem theo CMND/Passport (Hộ chiếu) bản chính còn hạn sử dụng, hình ảnh rõ (CMND có thời hạn sử dụng không quá 15 năm, tính từ ngày cấp)/ Giấy khai sinh bản chính (trẻ em dưới 14 tuổi), trẻ em trên 14 tuổi bắt buộc phải có CMND hoặc Passport làm thủ tục lên máy bay.  \r\n- Đối với khách Nước ngoài/Việt Kiều: Khi đi tour phải mang theo đầy đủ Passport (Hộ Chiếu) bản chính còn hạn sử dụng hoặc thẻ xanh kèm theo Visa và giấy tái xuất nhập Việt Nam làm thủ tục lên máy bay.  \r\n- Khi đăng ký tour Quý khách vui lòng mang theo CMND/Passport bản chính hoặc cung cấp tên chính xác đầy đủ, đúng từng ký tự trên CMND/ Passport (Hộ chiếu)/Giấy khai sinh (trẻ em dưới 14 tuổi) theo thứ tự: Họ/tên lót/tên. Quý khách khi đăng ký cung cấp tên theo giấy tờ tùy thân nào, khi đi tour phải mang theo giấy tờ tùy thân đó theo qui định hãng hàng không \r\n- Trong trường hợp Quý khách cung cấp tên sai, đến trễ giờ bay, vui lòng chịu phí đổi vé hoặc mua lại vé mới theo quy định của Hãng Hàng Không (nếu chuyến bay còn chỗ). \r\n- Trong trường hợp Quý khách bay hãng hàng không Vietjet và Jetstar, vé không hoàn, không dời, đổi, huỷ, sai tên mất 100% theo qui định hãng hàng không. Giá vé máy bay trẻ em bằng 100% người lớn. \r\n- Trong trường hợp Quý khách bay hãng hàng không Vietnam Air. Vé máy bay khuyến mãi không hoàn, không đổi, hủy, sai tên mất 100% theo qui định hãng hàng không. vé Vietnam Airlines  không bay chặng đi, tự động hủy chặng về. Giá vé máy bay trẻ em bằng 75% vé người lớn. \r\n- Giá vé, giờ bay có thể thay đổi theo Hãng Hàng Không (Vietnam Airlines, Vietjet, Jetstar) không thể báo trước. \r\n- Do các chuyến bay phụ thuộc vào các hãng Hàng Không nên trong một số trường hợp giờ bay có thể thay đổi mà không được báo trước. Tùy vào tình hình thực tế, Chương trình và điểm tham quan có thể linh động thay đổi thứ tự các điểm phù hợp điều kiện giờ bay và thời tiết thực tế. Vietravel sẽ không chịu trách nhiệm bảo đảm các điểm tham quan trong trường hợp:\r\n- + Xảy ra thiên tai: bão lụt, hạn hán, động đất…\r\n- + Sự cố về an ninh: khủng bố, biểu tình\r\n- + Sự cố về hàng không: trục trặc kỹ thuật, an ninh, dời, hủy, hoãn chuyến bay.\r\n- Nếu những trường hợp trên xảy ra, Vietravel sẽ xem xét để hoàn trả chi phí không tham quan cho khách trong điều kiện có thể (sau khi đã trừ lại các dịch vụ đã thực hiện….và không chịu trách nhiệm bồi thường thêm bất kỳ chi phí nào khác).\r\n- Sau khi Quý khách đã làm thủ tục Hàng Không và nhận thẻ lên máy bay, đề nghị Quý khách giữ cẩn thận và lưu ý lên máy bay đúng giờ. Vietravel không chịu trách nhiệm trong trường hợp khách làm mất thẻ lên máy bay và không lên máy bay đúng theo giờ quy định của Hàng Không.\r\n- Giờ nhận phòng khách sạn: sau 14:00 giờ và trả phòng trước 12:00 giờ   \r\n- Phòng khách sạn/resort có thể xảy ra trường hợp phòng không gần nhau, không cùng tầng, loại phòng một giường đôi hoặc hai giường đơn không theo yêu cầu, tùy tình hình thực tế từng khách sạn/Resort. \r\n- Trường hợp quý khách tham gia tour 01 khách, bắt buộc đóng thêm tiền phụ thu phòng đơn để ở riêng 01 phòng. Trường hợp trong đoàn cũng có khách đi 01 mình, cùng giới tính và có nhu cầu muốn ghép cùng phòng với quý khách thì Vietravel sẽ hoàn lại tiền phụ thu phòng đơn cho quý khách.\r\n- Trường hợp quý khách đi nhóm 03 khách, Vietravel sẽ cung cấp 01 phòng dành cho 03 khách là 01 giường lớn 1m6 và 01 giường phụ di động từ 0.8 - 1,2m (extrabed) hoặc 01 nệm đơn tùy từng khách sạn/Resort. Trong trường  quý khách có nhu cầu ở riêng, vui lòng đóng thêm tiền phụ thu phòng đơn theo qui định \r\n- Thông tin hành lý khi đi tour : Xách tay dưới 7kg/1khách - Kích thước không quá: 56cm x 36cm x 23 cm, chất lỏng với thể tích không quá 100ml. Ký gửi: 20kg/1khách - Kích thước không quá: 119cm x 119cm x 81cm. Các vật phẩm không được chấp nhận dưới dạng hành lý ký gởi hoặc vận chuyển trong hành lý theo qui định hàng không\r\n- Thông tin tập trung : Tại sân bay Tân Sơn Nhất, Ga đi trong nước, trước giờ bay 2 tiếng (áp dụng ngày thường), trước 2 tiếng 30 phút (áp dụng lễ tết), tại cột số 4 Trong trường hợp bay hãng hàng không Vietjet, tại cột 10 trong trường hợp bay hãng hàng không Vietnam, Jetstar. \r\n- Quý khách dưới 18 tuổi khi đi tour phải có Bố Mẹ hoặc người thân trên 18 tuổi đi cùng. Trường hợp đi một mình phải được Bố Mẹ ủy quyền (có xác nhận của chính quyền địa phương) cho Vietravel \r\n- Vì lý do an toàn Khách nữ từ 55 tuổi trở lên và khách nam từ 60 tuổi trở lên:nên có người thân dưới 55 tuổi (đầy đủ sức khỏe) đi cùng. Riêng khách từ 70 tuổi trở lên: Bắt buộc phải có người thân dưới 55 tuổi (đầy đủ sức khỏe) đi cùng. Hạn chế không nhận khách từ 80 tuổi trở lên. Khách từ 80 tuổi không có chế độ bảo hiểm.\r\n- Quý khách đang mang thai vui lòng báo cho nhân viên bán tour ngay tại thời điểm đăng ký. Lưu ý phải có ý kiến của bác sĩ trước khi đi tour. Cam kết tự chịu trách nhiệm về sức khỏe của mình và thai nhi trong suốt thời gian tham gia chương trình du lịch. \r\n- Quý khách có nhu cầu cần xuất hóa đơn vui lòng cung cấp thông tin xuất hóa đơn cho nhân viên bán tour  khi ngay khi đăng ký, không nhận xuất hóa đơn sau khi tour đã kết thúc. \r\n- Đây là chương trình du lịch trọn gói, Vietravel không có trách nhiệm hoàn trả chi phí chênh lệch cho các khách hàng thuộc diện miễn giảm hoặc đối tượng ưu tiên như trẻ nhỏ, người lớn tuổi, người có công với cách mạng… Chính sách miễn giảm, ưu tiên (nếu có) chỉ dành cho khách lẻ của các điểm tham quan. \r\n- Vé tặng sẽ không được hoàn lại tiền trong trường hợp khách không tham gia, show hủy do các trường hợp khách quan có thông báo của đơn vị tổ chức.\r\n- Quý khách vui lòng tham khảo kỹ các Điều Kiện Bán Vé trước khi đăng ký chuyến du lịch. Trong trường hợp không trực tiếp đăng ký, nhờ người thân đăng ký hộ vui lòng cập nhật thông tin từ người đăng ký.\r\n \r\n Các điều kiện chuyển và hủy tour \r\nLưu ý khi chuyển/huỷ tour:\r\n-  Sau khi đóng tiền, nếu Quý khách muốn chuyển/huỷ tour xin vui lòng mang Vé Du Lịch đến văn phòng đăng ký tour để làm thủ tục chuyển/huỷ tour và chịu mất phí theo quy định của Vietravel. Không giải quyết các trường hợp liên hệ chuyển/huỷ tour qua điện thoại.\r\n \r\nCác điều kiện huỷ tour: (đối với ngày thường):\r\n-  Được chuyển sang các tuyến du lịch khác trước ngày khởi hành 20 ngày: Không mất chi phí.\r\n-  Nếu hủy hoặc chuyển sang các chuyến du lịch khác từ 15-19 ngày trước ngày khởi hành: Chi phí hủy tour: 50% tiền cọc tour.\r\n-  Nếu hủy hoặc chuyển sang các chuyến du lịch khác từ 12-14 ngày trước ngày khởi hành: Chi phí hủy tour: 100% tiền cọc tour.\r\n-  Nếu hủy chuyến du lịch trong vòng từ 08-11 ngày trước ngày khởi hành: Chi phí hủy tour: 50% trên giá tour du lịch.\r\n-  Nếu hủy chuyến du lịch trong vòng từ 05-07 ngày trước ngày khởi hành: Chi phí hủy tour: 70% trên giá tour du lịch.\r\n-  Nếu hủy chuyến du lịch trong vòng từ 02-04 ngày trước ngày khởi hành: Chi phí hủy tour: 90% trên giá vé du lịch.\r\n-  Nếu hủy chuyến du lịch trong vòng 1 ngày trước ngày khởi hành : Chi phí hủy tour: 100% trên giá vé du lịch.\r\n \r\n    Các điều kiện huỷ tour: (đối với ngày lễ, Tết. Áp dụng cho các tour có thời gian diễn ra rơi vào một trong các ngày Lễ, Tết theo qui định) \r\n-  Được chuyển sang các tuyến du lịch khác trước ngày khởi hành 30 ngày: Không mất chi phí.\r\n-  Nếu hủy hoặc chuyển sang các chuyến du lịch khác từ 25-29 ngày trước ngày khởi hành: Chi phí hủy tour: 50% tiền cọc tour.\r\n- Nếu hủy hoặc chuyển sang các chuyến du lịch khác từ 20-24 ngày trước ngày khởi hành: Chi phí hủy tour: 100% tiền cọc tour.\r\n-  Nếu hủy chuyến du lịch trong vòng từ 17-19 ngày trước ngày khởi hành: Chi phí hủy tour: 50% trên giá tour du lịch.\r\n-  Nếu hủy chuyến du lịch trong vòng từ 08-16 ngày trước ngày khởi hành: Chi phí hủy tour: 70% trên giá tour du lịch.\r\n-  Nếu hủy chuyến du lịch trong vòng từ 02-07 ngày trước ngày khởi hành: Chi phí hủy tour: 90% trên giá vé du lịch.\r\n-  Nếu hủy chuyến du lịch trong vòng 1 ngày trước ngày khởi hành : Chi phí hủy tour: 100% trên giá vé du lịch.\r\n       Thời gian hủy chuyến du lịch được tính cho ngày làm việc, không tính thứ 7, Chủ Nhật và các ngày Lễ, Tết.\r\n', 'THÔNG TIN CHUYẾN BAY\r\nNgày đi: 23/09/2019 06:00	\r\nĐến: 23/09/2019 08:10	\r\nChuyến bay: VJ176\r\n\r\nNgày về: 27/09/2019 20:10	\r\nĐến: 27/09/2019 22:20	\r\nChuyến bay: VJ163\r\n\r\nTHÔNG TIN TẬP TRUNG\r\nNgày giờ tập trung	\r\n23/09/2019 04:00\r\nNơi tập trung	\r\nSân bay\r\n\r\nGIÁ TOUR & PHỤ THU PHÒNG ĐƠN\r\nLoại khách	Giá tour	Land tour\r\nNgười lớn (Từ 12 tuổi trở lên)	7,990,000 đ	5,000,000 đ\r\nTrẻ em (Từ 5 tuổi đến dưới 12 tuổi)	5,992,500 đ	5,000,000 đ\r\nTrẻ nhỏ (Từ 2 tuổi đến dưới 5 tuổi)	3,000,000 đ	0 đ\r\nEm bé (Dưới 2 tuổi)	300,000 đ	0 đ\r\nPhụ thu phòng đơn	1,500,000 đ	1,500,000 đ\r\n\r\n', 4.75),
(2, 'Hà Nội - Tràng An - Bái Đính (Ninh Bình) - Yên Tử - Hạ Long - Royal City', '1 2 3', 6590000, 5990000, 'Avatar2', 'Du lịch Hạ Long là dịp để quý khách chiêm ngưỡng sự kì thú của thiên nhiên với những mỏm đá chênh vênh giữa biển như hòn Gà Chọi, hòn Trống Mái,.. những hang động như hang Sửng Sốt, hang Trinh Nữ,... Một lần đến với Hạ Long bạn sẽ có cảm nhận nơi đây không khác gì một bảo tàng thiên nhiên khổng lồ với những hang động nguyên sơ huyền ảo cùng với văn hóa lịch sử mới mẻ, hấp dẫn. Khi đã bắt đầu chuyến du lịch Hạ Long, bạn sẽ quên hết thời gian, mê mẩn không muốn về.\r\n\r\n01.\r\n24-09-2019\r\n   TP.HCM - HÀ NỘI - CHÙA BÁI ĐÍNH – TRÀNG AN (Ăn trưa, chiều)\r\nQuý khách tập trung tại Sân bay Tân Sơn Nhất – ga nội địa, quầy Vietravel. HDV làm tục cho Quý Khách đáp chuyến bay đi Hà Nội\r\n Xe đón khách tại sân bay Nội Bài – Hà Nội tiếp tục di chuyển đến Ninh Bình. Đoàn tham quan : \r\n- Chùa Bái Đính - Là một quần thể chùa với nhiều kỷ lục Việt Nam như chùa có diện tích lớn nhất, tượng phật bằng đồng lớn nhất, nhiều tượng Phật La Hán nhất… \r\n- Khu Du Lịch Tràng An - thắng cảnh nổi bật ở khu vực Đông Nam Á và trên thế giới với hệ thống dãy núi hình tháp hùng vĩ, hang động hyền bí, sông nước thanh tĩnh đan xen những di tích lịch sử đền, chùa, miếu linh thiêng. Năm 2014, Quần thể danh thắng Tràng An đã vinh hạnh vào danh mục di sản Văn hóa và Thiên nhiên của Thế giới. Đoàn tham quan tuyến số 3 này sẽ đi qua đền Trình, hang Mây, hang Địa Linh \"hang dài nhất ở Tràng An 1.000m\", hang Vân, đền Thánh Quý Minh, Hành cung Vũ Lâm \"nơi thờ các vị tướng nhà Trần đánh quân Nguyên Mông lần thứ 2\".\r\nĐoàn dùng buổi chiều và nghỉ đêm tại Ninh Bình. \r\n\r\n02.\r\n25-09-2019\r\n   NINH BÌNH – HẠ LONG (Ăn sáng, trưa, chiều)\r\nXe đưa Quý khách khởi hành đi Hạ Long Quý khách ra bến tàu, xuống tàu du ngoạn, khám phá:\r\n- Vịnh Hạ Long - Thắng cảnh thiên nhiên tuyệt đẹp và vô cùng sống động, được UNESCO công nhận là di sản thiên nhiên Thế giới năm 1994. \r\n- Động Thiên Cung – là một trong những động đẹp nhất ở Hạ Long. Vẻ đẹp nguy nga và lộng lẫy bởi những lớp thạch nhũ và những luồng ánh sáng lung linh.\r\nTừ trên tàu ngắm nhìn các hòn đảo lớn nhỏ trong Vịnh Hạ Long: Hòn Gà Chọi, Hòn Lư Hương. \r\nNghỉ đêm tại Hạ Long\r\nMột số lựa chọn dành cho Quý khách muốn khám phá thêm Hạ Long (chi phí tự túc): \r\n- Lựa chọn 1:  Tham quan Sun World Ha Long Park trên Núi Ba Đèo bằng cáp treo Nữ Hoàng), trải nghiệm vòng quay mặt trời, tham quan vườn Nhật, khu trưng bày tượng sáp, khu vui chơi trẻ em.\r\n- Lựa chọn 2: Xem Múa rối nước Hoa Sen Hạ Long – Đây là một loại hình nghệ thuật sân khấu dân gian truyền thống độc đáo, một sáng tạo đặc biệt của người Việt, chỉ có duy nhất ở Việt Nam, qua những tiết mục múa rối, khán giả sẽ được dẫn dắt vào một thế giới tưởng tượng phong phú, tìm hiểu về truyền thuyết và sự ra đời tên gọi Vịnh Hạ Long.\r\n\r\n03.\r\n26-09-2019\r\n   HẠ LONG – HÀ NỘI (Ăn sáng, trưa, tự túc ăn tối)\r\nXe đưa Quý khách khởi hành về Hà Nội, trên đường tham quan \r\n- Núi Yên Tử: Thắng cảnh thiên nhiên còn lưu giữ nhiều di tích lịch sử với mệnh danh “đất tổ Phật giáo Việt Nam”. \r\nSau đó đoàn đi cáp treo để đến với:\r\n- Chùa Hoa Yên - Ngôi chùa to và đẹp, nằm trên lưng chừng núi ở độ cao 516m, thăm Tháp Tổ (chi phí cáp treo tự túc). \r\nTiếp tục khởi hành về Hà Nội, buổi chiều Quý Khách tự do khám phá Hà Nội hoặc lựa chọn một trong hai chương trình sau (chi phí tự túc):\r\n· Lựa chọn 1: xem chương trình “Tứ Phủ” - vở diễn là một chuyến du hành vào cõi tâm linh ấn tượng với sự kết hợp những nét đẹp đầy tinh tế. Quý khách sẽ được phiêu trong những màn trình diễn lên đồng đầy ấn tượng kết hợp với sự sắp đặt, âm thanh, ánh sáng mang đến những cảm nhận đầy đủ về một không gian tâm linh sống động.\r\n· Lựa chọn 2: trải nghiệm massage bấm huyệt kiểu Việt Nam truyền thống tại Spa Sen Garden, ít nhất 75 phút gồm các công đoạn tắm trắng, massage, bấm huyệt, sau đó dùng bữa nhẹ buffet mini gồm 10 món nhẹ + nước uống, chè\r\n* Ghi Chú : Bữa ăn chiều Quý khách tự túc. Nghỉ đêm tại Hà Nội. \r\n\r\n04.\r\n27-09-2019\r\n   HÀ NỘI - TP.HCM (Ăn sáng, trưa)\r\nDùng bữa sáng xong xe đưa Quý khách dạo quanh :\r\n- Hồ Hoàn Kiếm ngắm Tháp Rùa, Đền Ngọc Sơn, Cầu Thê Húc.\r\n- Lăng Hồ Chủ Tịch – tham quan và tìm hiểu cuộc đời và sự nghiệp của vị cha già dân tộc tại Nhà Sàn Bác Hồ, Bảo Tàng Hồ Chí Minh, Chùa Một Cột. (không viếng vào thứ 2, thứ 6 hàng tuần và thời gian bảo trì định kì hàng năm 15/6-15/8)\r\nSau đó xe đưa quý khách tham quan mua sắm tại\r\n- Vincom Mega Mall Royal City (chi phí tự túc) - là quần thể trung tâm thương mại và vui chơi giải trí đầu tiên tại Việt Nam phát triển theo mô hình Mega Mall chuẩn quốc tế. Không chỉ là nơi thỏa mãn nhu cầu mua sắm lớn nhất cả nước mà còn là khu vui chơi giải trí độc đáo, với nhiều trò chơi hấp dẫn \r\nXe đưa Quý khách ra sân bay Nội Bài đáp chuyến bay về Tp.HCM. \r\nChia tay Quý khách và kết thúc chương trình du lịch tại sân bay Tân Sơn Nhất.\r\n', 4, '2019-09-24', 'Hồ Chí Minh', 2, '2019-09-19 10:00:00', 1, 20, 12, 'THÔNG TIN CHUYẾN BAY\r\nNgày đi: 24/09/2019 06:00	Đến: 24/09/2019 08:05	Chuyến bay: VJ176\r\nNgày về: 27/09/2019 19:05	Đến: 27/09/2019 21:10	Chuyến bay: VJ161\r\n\r\nTHÔNG TIN TẬP TRUNG\r\nNgày giờ tập trung	24/09/2019 04:00\r\nNơi tập trung	Sân bay\r\n\r\nGIÁ TOUR & PHỤ THU PHÒNG ĐƠN\r\nLoại khách	Giá tour	Land tour\r\nNgười lớn (Từ 12 tuổi trở lên)	6,590,000 đ	4,200,000 đ\r\nTrẻ em (Từ 5 tuổi đến dưới 12 tuổi)	4,942,500 đ	4,200,000 đ\r\nTrẻ nhỏ (Từ 2 tuổi đến dưới 5 tuổi)	3,000,000 đ	0 đ\r\nEm bé (Dưới 2 tuổi)	300,000 đ	0 đ\r\nPhụ thu phòng đơn	1,200,000 đ	1,200,000 đ\r\n', '***Ghi chú: Giá tour có thể thay đổi tùy ngày khởi hành, hãng hàng không, tiêu chuẩn khách sạn và không áp dụng giai đoạn Lễ, Tết,…\r\n \r\n  Lộ trình tham khảo, cự ly khoảng:\r\nNgày 01 (134 km): Sân Bay Nội Bài (Hà Nội) - Chùa Bái Đính (122 km) - Khu Du Lịch Tràng An (12 km)\r\nNgày 02 (207 km): TP.Ninh Bình - Cảng Tuần Châu (195 km) - Múa Rối Nước Hoa Sen (7 km) hoặc Sun World Complex (12 km)\r\nNgày 03 (206 km): TP Hạ Long  - Núi Yên Tử (63 km) - Hà Nội (143 km)\r\nNgày 04 (32 km): Hà Nội - Lăng Chủ Tịch (2 km) - Sân Bay Nội Bài (30 km)\r\n \r\n   THÔNG TIN CẦN LƯU Ý:\r\nGiá tour bao gồm: \r\n- Xe tham quan (15, 25, 35, 45 chỗ tùy theo số lượng khách) theo chương trình\r\n- Vé máy bay khứ hồi \r\n- Khách sạn theo tiêu chuẩn 2 khách/phòng hoặc 3 khách/phòng \r\n+  Hà Nội 3 sao: Delight, Ha Noi Emotion, Hồng Hà….\r\n+ Hạ Long 3 sao: Kenny Hạ Long, Golden Lotus, New star….\r\n+Ninh Bình 4 sao : Hoàng Sơn,…\r\n- Vé tham quan theo chương trình\r\n- Các bữa ăn theo chương trình :  03 bữa sáng buffet + 07 bữa chính từ 120.000 – 140.000vnd/ khách \r\n- Hướng dẫn viên tiếng Việt nối tuyến\r\n- Bảo hiểm du lịch với mức bồi thường cao nhất 120.000.000đ/vụ\r\n- Nón Vietravel + Nước suối + Khăn lạnh \r\n- Thuế VAT \r\n \r\nGiá tour không bao gồm: \r\n- Chi phí cá nhân: ăn uống ngoài chương trình, giặt ủi, chi phí hủy đổi hành trình và nâng hạng chuyến bay, hành lý quá cước, phụ thu phòng đơn,…\r\n- Chi phí tham quan ngoài chương trình : Cáp Treo Yên Tử, Cáp Treo Fansipan, KDL Đảo Tuần Châu, Sun World Ha Long Park,….\r\n \r\nGiá vé trẻ em: \r\n- Trẻ em dưới 5 tuổi:  không thu phí dịch vụ, bố mẹ tự lo cho bé và thanh toán các chi phí phát sinh (đối với các dịch vụ tính phí theo chiều cao…). Hai người lớn chỉ được kèm 1 trẻ em dưới 5 tuổi, trẻ em thứ 2 sẽ đóng phí theo qui định dành cho độ tuổi từ 5 đến dưới 12 tuổi và phụ thu phòng đơn. Vé máy bay, tàu hỏa, phương tiện vận chuyển công cộng mua vé theo qui định của các đơn vị vận chuyển.\r\n- Trẻ em từ 5 tuổi đến dưới 12 tuổi: 75% giá tour người lớn (không có chế độ giường riêng). Hai người lớn chỉ được kèm 1 trẻ em từ 5 - dưới 12 tuổi, em thứ hai trở lên phải mua 1 suất giường đơn.\r\n- Trẻ em từ 12 tuổi trở lên: mua một vé như người lớn\r\n \r\nĐiều kiện thanh toán: \r\n- Khi đăng ký đặt cọc 50% số tiền tour\r\n- Số tiền còn lại thanh toán hết trước ngày khởi hành 7-10 ngày (áp dụng tour ngày thường), trước ngày khởi hành 20-25 ngày (áp dụng tour lễ tết) \r\n \r\nCác điều kiện khi đăng ký tour: \r\n- Đối với Khách Quốc tịch Việt Nam: Khi đi tour Trẻ em từ 14 tuổi trở lên và người lớn cần đem theo CMND/Passport (Hộ chiếu) bản chính còn hạn sử dụng, hình ảnh rõ (CMND có thời hạn sử dụng không quá 15 năm, tính từ ngày cấp)/ Giấy khai sinh bản chính (trẻ em dưới 14 tuổi), trẻ em trên 14 tuổi bắt buộc phải có CMND hoặc Passport làm thủ tục lên máy bay.  \r\n- Đối với khách Nước ngoài/Việt Kiều: Khi đi tour phải mang theo đầy đủ Passport (Hộ Chiếu) bản chính còn hạn sử dụng hoặc thẻ xanh kèm theo Visa và giấy tái xuất nhập Việt Nam làm thủ tục lên máy bay.  \r\n- Khi đăng ký tour Quý khách vui lòng mang theo CMND/Passport bản chính hoặc cung cấp tên chính xác đầy đủ, đúng từng ký tự trên CMND/ Passport (Hộ chiếu)/Giấy khai sinh (trẻ em dưới 14 tuổi) theo thứ tự: Họ/tên lót/tên. Quý khách khi đăng ký cung cấp tên theo giấy tờ tùy thân nào, khi đi tour phải mang theo giấy tờ tùy thân đó theo qui định hãng hàng không \r\n- Trong trường hợp Quý khách cung cấp tên sai, đến trễ giờ bay, vui lòng chịu phí đổi vé hoặc mua lại vé mới theo quy định của Hãng Hàng Không (nếu chuyến bay còn chỗ). \r\n- Trong trường hợp Quý khách bay hãng hàng không Vietjet và Jetstar, vé không hoàn, không dời, đổi, huỷ, sai tên mất 100% theo qui định hãng hàng không. Giá vé máy bay trẻ em bằng 100% người lớn. \r\n- Trong trường hợp Quý khách bay hãng hàng không Việt Nam. Vé máy bay khuyến mãi không hoàn, không đổi, hủy, sai tên mất 100% theo qui định hãng hàng không. vé Vietnam Airlines  không bay chặng đi, tự động hủy chặng về. Giá vé máy bay trẻ em bằng 90% vé người lớn. \r\n- Giá vé, giờ bay có thể thay đổi theo Hãng Hàng Không (Vietnam Airlines, Vietjet, Jetstar) không thể báo trước. \r\n- Do các chuyến bay phụ thuộc vào các hãng Hàng Không nên trong một số trường hợp giờ bay có thể thay đổi mà không được báo trước. Tùy vào tình hình thực tế, Chương trình và điểm tham quan có thể linh động thay đổi thứ tự các điểm phù hợp điều kiện giờ bay và thời tiết thực tế. Vietravel sẽ không chịu trách nhiệm bảo đảm các điểm tham quan trong trường hợp:\r\n+ Xảy ra thiên tai: bão lụt, hạn hán, động đất…\r\n+ Sự cố về an ninh: khủng bố, biểu tình\r\n+ Sự cố về hàng không: trục trặc kỹ thuật, an ninh, dời, hủy, hoãn chuyến bay.\r\n- Nếu những trường hợp trên xảy ra, Vietravel sẽ xem xét để hoàn trả chi phí không tham quan cho khách trong điều kiện có thể (sau khi đã trừ lại các dịch vụ đã thực hiện….và không chịu trách nhiệm bồi thường thêm bất kỳ chi phí nào khác).\r\n- Sau khi Quý khách đã làm thủ tục Hàng Không và nhận thẻ lên máy bay, đề nghị Quý khách giữ cẩn thận và lưu ý lên máy bay đúng giờ. Vietravel không chịu trách nhiệm trong trường hợp khách làm mất thẻ lên máy bay và không lên máy bay đúng theo giờ quy định của Hàng Không.\r\n- Giờ nhận phòng khách sạn: sau 14:00 giờ và trả phòng trước 12:00 giờ   \r\n- Phòng khách sạn/resort có thể xảy ra trường hợp phòng không gần nhau, không cùng tầng, loại phòng một giường đôi hoặc hai giường đơn không theo yêu cầu, tùy tình hình thực tế từng khách sạn/Resort. \r\n- Trường hợp quý khách tham gia tour 01 khách, bắt buộc đóng thêm tiền phụ thu phòng đơn để ở riêng 01 phòng. Trường hợp trong đoàn cũng có khách đi 01 mình, cùng giới tính và có nhu cầu muốn ghép cùng phòng với quý khách thì Vietravel sẽ hoàn lại tiền phụ thu phòng đơn cho quý khách.\r\n- Trường hợp quý khách đi nhóm 03 khách, Vietravel sẽ cung cấp 01 phòng dành cho 03 khách là 01 giường lớn 1m6 và 01 giường phụ di động từ 0.8 - 1,2m (extrabed) hoặc 01 nệm đơn tùy từng khách sạn/Resort. Trong trường  quý khách có nhu cầu ở riêng, vui lòng đóng thêm tiền phụ thu phòng đơn theo qui định \r\n- Thông tin hành lý khi đi tour : Xách tay dưới 7kg/1khách - Kích thước không quá: 56cm x 36cm x 23 cm, chất lỏng với thể tích không quá 100ml. Ký gửi: 20kg/1khách - Kích thước không quá: 119cm x 119cm x 81cm. Các vật phẩm không được chấp nhận dưới dạng hành lý ký gởi hoặc vận chuyển trong hành lý theo qui định hàng không\r\n- Thông tin tập trung : Tại sân bay Tân Sơn Nhất, Ga đi trong nước, trước giờ bay 2 tiếng (áp dụng ngày thường), trước 2 tiếng 30 phút (áp dụng lễ tết), tại cột số 4 Trong trường hợp bay hãng hàng không Vietjet, tại cột 10 trong trường hợp bay hãng hàng không Vietnam, Jetstar. \r\n- Quý khách dưới 18 tuổi khi đi tour phải có Bố Mẹ hoặc người thân trên 18 tuổi đi cùng. Trường hợp đi một mình phải được Bố Mẹ ủy quyền (có xác nhận của chính quyền địa phương) cho Vietravel \r\n- Vì lý do an toàn Khách nữ từ 55 tuổi trở lên và khách nam từ 60 tuổi trở lên:nên có người thân dưới 55 tuổi (đầy đủ sức khỏe) đi cùng. Riêng khách từ 70 tuổi trở lên: Bắt buộc phải có người thân dưới 55 tuổi (đầy đủ sức khỏe) đi cùng. Hạn chế không nhận khách từ 80 tuổi trở lên. Khách từ 80 tuổi không có chế độ bảo hiểm.\r\n- Quý khách đang mang thai vui lòng báo cho nhân viên bán tour ngay tại thời điểm đăng ký. Lưu ý phải có ý kiến của bác sĩ trước khi đi tour. Cam kết tự chịu trách nhiệm về sức khỏe của mình và thai nhi trong suốt thời gian tham gia chương trình du lịch. \r\n- Quý khách có nhu cầu cần xuất hóa đơn vui lòng cung cấp thông tin xuất hóa đơn cho nhân viên bán tour  khi ngay khi đăng ký, không nhận xuất hóa đơn sau khi tour đã kết thúc. \r\n- Đây là chương trình du lịch trọn gói, Vietravel không có trách nhiệm hoàn trả chi phí chênh lệch cho các khách hàng thuộc diện miễn giảm hoặc đối tượng ưu tiên như trẻ nhỏ, người lớn tuổi, người có công với cách mạng… Chính sách miễn giảm, ưu tiên (nếu có) chỉ dành cho khách lẻ của các điểm tham quan. \r\n- Vé tặng sẽ không được hoàn lại tiền trong trường hợp khách không tham gia, show hủy do các trường hợp khách quan có thông báo của đơn vị tổ chức.\r\n- Quý khách vui lòng tham khảo kỹ các Điều Kiện Bán Vé trước khi đăng ký chuyến du lịch. Trong trường hợp không trực tiếp đăng ký, nhờ người thân đăng ký hộ vui lòng cập nhật thông tin từ người đăng ký.\r\n \r\n  Các điều kiện chuyển và hủy tour \r\nLưu ý khi chuyển/huỷ tour:\r\n-   Sau khi đóng tiền, nếu Quý khách muốn chuyển/huỷ tour xin vui lòng mang Vé Du Lịch đến văn phòng  đăng ký tour để làm thủ tục chuyển/huỷ tour và chịu mất phí theo quy định của Vietravel. Không giải quyết các trường hợp liên hệ chuyển/huỷ tour qua điện thoại.\r\n \r\nCác điều kiện huỷ tour: (đối với ngày thường):\r\n-   Được chuyển sang các tuyến du lịch khác trước ngày khởi  hành 20 ngày : Không mất chi phí.\r\n-   Nếu hủy hoặc chuyển sang các chuyến du lịch khác ngay sau khi đăng ký đến 19 ngày trước ngày khởi hành: Chi phí hủy tour: 50% tiền cọc tour.\r\n-   Nếu hủy hoặc chuyển sang các chuyến du lịch khác từ 12-14 ngày trước ngày khởi hành: Chi phí hủy tour: 100% tiền cọc tour.\r\n-   Nếu hủy chuyến du lịch trong vòng từ 08-11 ngày trước ngày khởi hành: Chi phí hủy tour: 50% trên giá tour du lịch.\r\n-   Nếu hủy chuyến du lịch trong vòng từ 05-07 ngày trước ngày khởi hành: Chi phí hủy tour: 70% trên giá tour du lịch.\r\n-   Nếu hủy chuyến du lịch trong vòng từ 02-04 ngày trước ngày khởi hành: Chi phí hủy tour: 90% trên giá vé du lịch.\r\n-   Nếu hủy chuyến du lịch trong vòng 1 ngày trước ngày khởi hành : Chi phí hủy tour: 100% trên giá vé du lịch.\r\n \r\n Các điều kiện huỷ tour: (đối với ngày lễ, Tết. Áp dụng cho các tour có thời gian diễn ra rơi vào một trong các ngày Lễ,Tết theo qui định ) \r\n-   Được chuyển sang các tuyến du lịch khác trước ngày khởi  hành 30 ngày : Không mất chi phí.\r\n-   Nếu hủy hoặc chuyển sang các chuyến du lịch khác ngay sau khi đăng ký đến 29 ngày trước ngày khởi hành: Chi phí hủy tour: 50% tiền cọc tour.\r\n  -   Nếu hủy hoặc chuyển sang các chuyến du lịch khác từ 20-24 ngày trước ngày khởi hành: Chi phí hủy tour: 100% tiền cọc tour.\r\n-   Nếu hủy chuyến du lịch trong vòng từ 17-19 ngày trước ngày khởi hành: Chi phí hủy tour: 50% trên giá tour du lịch.\r\n-   Nếu hủy chuyến du lịch trong vòng từ 08-16 ngày trước ngày khởi hành: Chi phí hủy tour: 70% trên giá tour du lịch.\r\n-   Nếu hủy chuyến du lịch trong vòng từ 02-07 ngày trước ngày khởi hành: Chi phí hủy tour:  90% trên giá vé du lịch.\r\n-   Nếu hủy chuyến du lịch trong vòng 1 ngày trước ngày khởi hành : Chi phí hủy tour: 100% trên giá vé du lịch.\r\nThời gian hủy chuyến du lịch được tính cho ngày làm việc, không tính thứ 7, Chủ Nhật và các ngày Lễ, Tết. \r\n', 5),
(3, 'Hà Nội - Bái Đính - Tràng An - Hạ Long - Yên Tử ', '1 2 3', 8000000, 7290000, 'Ava', 'Lịch trình', 4, '2019-10-03', 'Hồ Chí Minh', 2, '2019-09-19 22:10:00', 2, 14, 3, 'Lưu ý', 'Chi tiết', 4),
(4, 'Hà Nội - Bái Đính - Tràng An - Nghỉ Dưỡng Du Thuyền Hạ Long - Hang Sửng Sốt - TiTốp', '1 2 3', 9500000, 9290000, 'Ava', 'LT', 4, '2019-10-19', 'Hồ Chí Minh', 2, '2019-09-19 20:00:00', 1, 20, 5, 'LY', 'CT', 4),
(5, 'Hà Giang - Khám phá Hoàng Su Phì Mùa Lúa Chín - Xín Mần - Đèo Gió - Thác Tiên - Bắc Hà - Sapa - Hà N', '1 4 14', 9290000, 8390000, 'Ava', 'Lịch trình', 5, '2019-10-18', 'Hồ Chí Minh', 2, '2019-09-19 22:10:00', 1, 14, 3, 'Lưu ý', 'Chi tiết', 4.7),
(6, 'Vân Đồn - Hạ Long - Bái Đính - Tràng An', '2 3', 6200000, 5590000, 'Ava', 'LT', 3, '2019-10-19', 'Hồ Chí Minh', 2, '2019-09-19 20:00:00', 1, 20, 8, 'LY', 'CT', 4.66),
(7, 'Vân Đồn - Vịnh Hạ Long - Tràng An - Tam Chúc - Hà Nội - Fansipan - Check In View \"Cực Chất\"', '1 2 3 4', 9390000, 8990000, 'Ava', 'LT', 6, '2019-10-24', 'Hồ Chí Minh', 2, '2019-09-19 22:10:00', 1, 20, 3, 'LY', 'CT', 4.8),
(9, 'Vũng Tàu - Biển Hồ Cóc - Suối nước nóng Bình Châu', '11', 590000, 490000, 'Ava', 'Aaa', 1, '2019-11-03', 'Hồ Chí Minh', 2, '2019-09-19 22:10:00', 2, 14, 14, 'bbb', 'cccccc', 4.7),
(10, 'Phú Quốc - Ngắm Hoàng Hôn Tại Sunset Sanato - Bãi Sao - Thiền Viện Trúc Lâm Hộ Quốc', '10', 5390000, 4390000, 'Av', 'Aaaaaaa', 3, '2019-10-23', 'Hồ Chí Minh', 2, '2019-09-19 00:00:00', 1, 20, 6, 'LY', 'CT', 5),
(11, 'Miền Tây - Châu Đốc - Rừng Tràm Trà Sư - Hà Tiên - Rạch Giá - Cần Thơ', '13', 4200000, 3290000, 'AVa', 'TTT', 4, '2019-09-21', 'Hồ Chí Minh', 2, '2019-09-19 22:10:00', 1, 20, 8, 'LY', 'CT', 4.5),
(12, 'Nha Trang - Hòn Lao - Thế Giới Giải Trí Vinpearl Land', '15', 4190000, 3790000, 'Avva', 'AA', 4, '2019-10-24', 'Hồ Chí Minh', 2, '2019-09-19 00:00:00', 1, 20, 5, 'aa', 'AA', 5),
(13, 'Huế - La Vang - Động Phong Nha - Bà Nà - Cầu Vàng - Hội An - Đà Nẵng', '8 9', 5790000, 5990000, 'ava', 'tttttt', 5, '2019-09-21', 'Hồ Chí Minh', 2, '2019-09-19 22:10:00', 2, 20, 20, 'bbbbbb', 'cccccccc', 4.9),
(14, 'Đà Lạt - Đamb\'ri - Fairytale Land - Cà Phê Mê Linh - Que Garden', '7', 3240000, 3390000, 'ava', 'sdsa', 4, '2019-10-26', 'Hồ Chí Minh', 2, '2019-09-19 00:00:00', 1, 20, 7, 'LY', 'CT', 4.9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_group_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `name`, `email`, `id_group_user`) VALUES
(1, 'admin', '123456', 'Admin', 'admin@gmail.com', 1),
(2, 'staff', '123456', 'Staff', 'staff@gmail.com', 2),
(3, 'member', '123456', 'Member', 'member@gmail.com', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_status` (`id_status`);

--
-- Indexes for table `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`,`id_tour`),
  ADD KEY `id_tour` (`id_tour`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_detail_booking`
--
ALTER TABLE `tb_detail_booking`
  ADD KEY `id_booking` (`id_booking`,`id_tour`),
  ADD KEY `id_tour` (`id_tour`);

--
-- Indexes for table `tb_diemden`
--
ALTER TABLE `tb_diemden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mien` (`id_mien`);

--
-- Indexes for table `tb_group_user`
--
ALTER TABLE `tb_group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_g_p`
--
ALTER TABLE `tb_g_p`
  ADD KEY `id_permission` (`id_permission`),
  ADD KEY `id` (`id_group_user`);

--
-- Indexes for table `tb_img`
--
ALTER TABLE `tb_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tour` (`id_tour`);

--
-- Indexes for table `tb_mien`
--
ALTER TABLE `tb_mien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`,`id_diemden`),
  ADD KEY `id_diemden` (`id_diemden`);

--
-- Indexes for table `tb_permission`
--
ALTER TABLE `tb_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_score`
--
ALTER TABLE `tb_score`
  ADD KEY `id_tour` (`id_tour`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_status_booking`
--
ALTER TABLE `tb_status_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_status_tour`
--
ALTER TABLE `tb_status_tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tour`
--
ALTER TABLE `tb_tour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID_diemden` (`id_diemden`,`id_user`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_status` (`id_status`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID_group_user` (`id_group_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_booking`
--
ALTER TABLE `tb_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_comment`
--
ALTER TABLE `tb_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_diemden`
--
ALTER TABLE `tb_diemden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_group_user`
--
ALTER TABLE `tb_group_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_img`
--
ALTER TABLE `tb_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_mien`
--
ALTER TABLE `tb_mien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_news`
--
ALTER TABLE `tb_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_permission`
--
ALTER TABLE `tb_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_status_booking`
--
ALTER TABLE `tb_status_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_status_tour`
--
ALTER TABLE `tb_status_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_tour`
--
ALTER TABLE `tb_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD CONSTRAINT `tb_booking_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`),
  ADD CONSTRAINT `tb_booking_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `tb_status_booking` (`id`);

--
-- Constraints for table `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD CONSTRAINT `tb_comment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`),
  ADD CONSTRAINT `tb_comment_ibfk_2` FOREIGN KEY (`id_tour`) REFERENCES `tb_tour` (`id`);

--
-- Constraints for table `tb_detail_booking`
--
ALTER TABLE `tb_detail_booking`
  ADD CONSTRAINT `tb_detail_booking_ibfk_1` FOREIGN KEY (`id_booking`) REFERENCES `tb_booking` (`id`),
  ADD CONSTRAINT `tb_detail_booking_ibfk_2` FOREIGN KEY (`id_tour`) REFERENCES `tb_tour` (`id`);

--
-- Constraints for table `tb_diemden`
--
ALTER TABLE `tb_diemden`
  ADD CONSTRAINT `tb_diemden_ibfk_1` FOREIGN KEY (`id_mien`) REFERENCES `tb_mien` (`id`);

--
-- Constraints for table `tb_g_p`
--
ALTER TABLE `tb_g_p`
  ADD CONSTRAINT `tb_g_p_ibfk_1` FOREIGN KEY (`id_group_user`) REFERENCES `tb_group_user` (`id`),
  ADD CONSTRAINT `tb_g_p_ibfk_2` FOREIGN KEY (`id_permission`) REFERENCES `tb_permission` (`id`);

--
-- Constraints for table `tb_img`
--
ALTER TABLE `tb_img`
  ADD CONSTRAINT `tb_img_ibfk_1` FOREIGN KEY (`id_tour`) REFERENCES `tb_tour` (`id`);

--
-- Constraints for table `tb_news`
--
ALTER TABLE `tb_news`
  ADD CONSTRAINT `tb_news_ibfk_1` FOREIGN KEY (`id_diemden`) REFERENCES `tb_diemden` (`id`),
  ADD CONSTRAINT `tb_news_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`);

--
-- Constraints for table `tb_score`
--
ALTER TABLE `tb_score`
  ADD CONSTRAINT `tb_score_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`),
  ADD CONSTRAINT `tb_score_ibfk_3` FOREIGN KEY (`id_tour`) REFERENCES `tb_tour` (`id`);

--
-- Constraints for table `tb_tour`
--
ALTER TABLE `tb_tour`
  ADD CONSTRAINT `tb_tour_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`),
  ADD CONSTRAINT `tb_tour_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `tb_status_tour` (`id`);

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_group_user`) REFERENCES `tb_group_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
