-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2015 at 04:31 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `accounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountingprices`
--

CREATE TABLE IF NOT EXISTS `accountingprices` (
`id` int(10) unsigned NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accountingprices`
--

INSERT INTO `accountingprices` (`id`, `amount`, `cost`, `created_at`, `updated_at`) VALUES
(1, 'Khong phat sinh', '200,000', '2015-05-11 21:54:44', '2015-05-11 21:54:44'),
(2, 'Duoi 20 chung tu', '300,000', '2015-05-11 21:55:29', '2015-05-11 21:55:29'),
(3, 'Tu 21 den 50 chung tu', '500,000', '2015-05-11 21:56:05', '2015-05-11 21:56:05'),
(4, 'Tu 51 den 100 chung tu', '1,200,000', '2015-05-11 21:56:36', '2015-05-21 01:54:48'),
(5, 'Tren 100 chung tu', 'Thoa thuan', '2015-05-11 21:57:02', '2015-05-11 21:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(10) unsigned NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Look I am a test comment', 'Chris Sevilleja', '2015-05-12 06:38:08', '2015-05-12 06:38:08'),
(2, 'This is going to be super crazy', 'Nick Cerminara', '2015-05-12 06:38:54', '2015-05-12 06:38:54'),
(3, 'Good', 'Jason', '2015-05-12 07:33:05', '2015-05-12 07:33:05'),
(4, 'Very good', 'Tom', '2015-05-12 07:42:23', '2015-05-12 07:42:23'),
(5, 'Fuck you', 'Nhat', '2015-05-22 00:24:05', '2015-05-22 00:24:05'),
(6, 'fkdshfkjsff', 'Minh', '2015-05-28 20:05:20', '2015-05-28 20:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
`id` int(10) unsigned NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro1` longtext COLLATE utf8_unicode_ci NOT NULL,
  `intro2` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foundation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `openday` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `address`, `intro1`, `intro2`, `phone`, `email`, `foundation`, `openday`, `created_at`, `updated_at`) VALUES
(1, '								72 Lê Thánh Tôn, P. Bến Nghé, Q.1, Tp. Hồ Chí Minh\r\n			\r\n			', '								Công ty TNHH TDM là cái tên ở Việt Nam được biết đến qua chất lượng dịch vụ tư vấn thuế chuyên sâu. TDM được biết đến, hơn cả cái tên gọi của mình, đó là đội ngũ sáng lập viên với tham vọng trong tương lai không xa sẽ đưa TDM trở thành một trong ba đại lý thuế nội địa hàng đầu tại Việt Nam. abc\r\n			\r\n			', '								TDM chính thức đi vào hoạt động ngày 01/7/2007 theo Giấy chứng nhận đăng ký kinh doanh số 0203003210 ngày 13/6/2007; mã số thuế 0200747399. Công ty có văn phòng tại 72 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh.\r\n\r\nHoạt động chính của TDM là tư vấn thuế, đại lý thuế; dịch vụ kế toán, tư vấn tài chính. Chúng tôi cũng đang hướng tới đa ngành, đa dịch vụ, ưu tiên quyền lợi hợp pháp của đối tác và những người đang sống, làm việc cũng như cộng tác cùng TDM.\r\n\r\nTDM được sáng lập bởi sự kết hợp tuyệt vời giữa các chuyên gia tư vấn tài chính, kiểm toán hàng đầu ở Việt Nam với các chuyên gia đã thực tế công tác trong ngành thuế và Bộ Tài chính có số năm kinh nghiệm đạt độ chín muồi về tuổi đời và trình độ chuyên môn nghiệp vụ.\r\n			\r\n			', '								(123) 456-7890\r\n			\r\n			', '								tdmcompany@gmail.com\r\n			\r\n			', '								Thành lập: Tháng 01 Ngày 07, 1991\r\n			\r\n			', '								Thứ 2 - Thứ 6: 9:00 AM to 5:00 PM\r\n			\r\n			', '0000-00-00 00:00:00', '2015-05-28 23:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'CONG TY TNHH RAU QUA VIET', 'Binh Duong', '2015-05-11 20:57:07', '2015-05-11 20:58:05'),
(2, 'CONG TY TNHH BA SAO', 'Ha Noi', '2015-05-11 20:58:36', '2015-05-21 01:10:13'),
(3, 'KHACH SAN TAN HAO HOA', 'TP.HCM', '2015-05-11 20:59:37', '2015-05-11 20:59:37'),
(4, 'CONG TY TNHH TDM', 'TP.HCM', '2015-05-21 07:58:21', '2015-05-21 07:58:21'),
(5, 'CONG TY TNHH THANH LE', 'Binh Duong', '2015-05-21 08:37:09', '2015-05-21 08:37:09'),
(6, 'CONG TY TNHH TRIBECO', 'Vinh Long', '2015-05-21 08:37:46', '2015-05-21 08:37:46'),
(7, 'CONG TY TNHH Tan Hiep Phat', 'Ben Tre', '2015-05-21 08:38:28', '2015-05-21 08:38:28'),
(8, 'CONG TY TNHH Vedan', 'TP.HCM', '2015-05-21 08:38:57', '2015-05-21 08:38:57'),
(9, 'CONG TY TNHH Tuong An', 'Binh Duong', '2015-05-22 00:22:44', '2015-05-22 00:22:44'),
(10, 'CONG TY TNHH ABC', 'Da Nang', '2015-05-22 01:33:28', '2015-05-22 01:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `introductions`
--

CREATE TABLE IF NOT EXISTS `introductions` (
`id` int(10) unsigned NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `service` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `document` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `notification` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `introductions`
--

INSERT INTO `introductions` (`id`, `title`, `service`, `document`, `notification`, `created_at`, `updated_at`) VALUES
(1, '																				TDM Việt Nam hỗ trợ các khách hàng tổ chức và cá nhân tạo ra giá trị mà họ tìm kiếm. Chúng tôi là thành viên mạng lưới các công ty TDM tại 157 quốc gia với hơn 200.000 nhân viên luôn tận tâm cung cấp các dịch vụ kiểm toán, tư vấn thuế và tư vấn quản trị chất lượng cao.TDM Việt Nam thành lập văn phòng tại Hà Nội và TPHCM năm 1994. Đội ngũ chuyên gia của chúng tôi với hơn 700 người Việt Nam và nước ngoài am hiểu sâu sắc nền kinh tế chuyển đổi của Việt Nam. abc\r\n			\r\n			\r\n			\r\n			\r\n			', '																				Dịch vụ mà chúng tôi cung cấp cho khách hàng rất đa dạng, bao gồm tư vấn và hỗ trợ tuân thủ quy định liên quan đến kinh doanh. abc\r\n			\r\n			\r\n			\r\n			\r\n			', '																				Các dịch vụ tư vấn pháp lý đa dạng cho phép TDM phục vụ quý khách hàng một cách tốt nhất về các văn bản pháp luật, quy định nhà nước. abc\r\n			\r\n			\r\n			\r\n			\r\n			', '																				Chương trình tuyển dụng 2015, cơ hội nghề nghiệp, nộp đơn trực tuyến và các sự kiện cũng như khóa học miễn phí sắp tới về thuế. abc\r\n			\r\n			\r\n			\r\n			\r\n			', '0000-00-00 00:00:00', '2015-05-29 00:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `laborprices`
--

CREATE TABLE IF NOT EXISTS `laborprices` (
`id` int(10) unsigned NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `laborprices`
--

INSERT INTO `laborprices` (`id`, `amount`, `cost`, `created_at`, `updated_at`) VALUES
(1, 'Tu 1 den 5 lao dong', '1,000,000', '2015-05-11 22:01:09', '2015-05-11 22:01:09'),
(2, 'Tu 5 den 10 lao dong', '1,500,000', '2015-05-11 22:01:40', '2015-05-11 22:01:40'),
(3, 'Tren 10 lao dong', 'Thoa thuan', '2015-05-11 22:02:07', '2015-05-11 22:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `laws`
--

CREATE TABLE IF NOT EXISTS `laws` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `laws`
--

INSERT INTO `laws` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Luật doanh nghiệp', '				Căn cứ vào Hiến pháp nước Cộng hoà xã hội chủ nghĩa Việt Nam năm 1992 đã được sửa đổi, bổ sung theo Nghị quyết số 51/2001/QH10 ngày 25 tháng 12 năm 2001 của Quốc hội khoá X, kỳ họp thứ 10; abc\r\n\r\nLuật này quy định về doanh nghiệp.\r\n\r\nChương I\r\n\r\nNHỮNG QUY ĐỊNH CHUNG\r\n\r\nĐiều 1. Phạm vi điều chỉnh\r\n\r\nLuật này quy định về việc thành lập, tổ chức quản lý và hoạt động của công ty trách nhiệm hữu hạn, công ty cổ phần, công ty hợp danh và doanh nghiệp tư nhân thuộc mọi thành phần kinh tế (sau đây gọi chung là doanh nghiệp); quy định về nhóm công ty.\r\n\r\nĐiều 2. Đối tượng áp dụng\r\n\r\n1. Các doanh nghiệp thuộc mọi thành phần kinh tế.\r\n\r\n2. Tổ chức, cá nhân có liên quan đến việc thành lập, tổ chức quản lý và hoạt động của các doanh nghiệp.\r\n\r\nĐiều 3. Áp dụng Luật doanh nghiệp, điều ước quốc tế và các luật có liên quan\r\n\r\n1. Việc thành lập, tổ chức quản lý và hoạt động của doanh nghiệp thuộc mọi thành phần kinh tế áp dụng theo quy định của Luật này và các quy định khác của pháp luật có liên quan.\r\n\r\n2. Trường hợp đặc thù liên quan đến việc thành lập, tổ chức quản lý và hoạt động của doanh nghiệp được quy định tại Luật khác thì áp dụng theo quy định của Luật đó.\r\n\r\n3. Trường hợp điều ước quốc tế mà Cộng hoà xã hội chủ nghĩa Việt Nam là thành viên có quy định khác với quy định của Luật này thì áp dụng theo quy định của điều ước quốc tế.\r\n\r\nĐiều 4. Giải thích từ ngữ\r\n\r\nTrong Luật này, các từ ngữ dưới đây được hiểu như sau:\r\n\r\n1. Doanh nghiệp là tổ chức kinh tế có tên riêng, có tài sản, có trụ sở giao dịch ổn định, được đăng ký kinh doanh theo quy định của pháp luật nhằm mục đích thực hiện các hoạt động kinh doanh.\r\n\r\n2. Kinh doanh là việc thực hiện liên tục một, một số hoặc tất cả các công đoạn của quá trình đầu tư, từ sản xuất đến tiêu thụ sản phẩm hoặc cung ứng dịch vụ trên thị trường nhằm mục đích sinh lợi.\r\n\r\n3. Hồ sơ hợp lệ là hồ sơ có đầy đủ giấy tờ theo quy định của Luật này, có nội dung được kê khai đầy đủ theo quy định của pháp luật.\r\n\r\n4. Góp vốn là việc đưa tài sản vào công ty để trở thành chủ sở hữu hoặc các chủ sở hữu chung của công ty. Tài sản góp vốn có thể là tiền Việt Nam, ngoại tệ tự do chuyển đổi, vàng, giá trị quyền sử dụng đất, giá trị quyền sở hữu trí tuệ, công nghệ, bí quyết kỹ thuật, các tài sản khác ghi trong Điều lệ công ty do thành viên góp để tạo thành vốn của công ty.\r\n\r\n5. Phần vốn góp là tỷ lệ vốn mà chủ sở hữu hoặc chủ sở hữu chung của công ty góp vào vốn điều lệ.\r\n\r\n6. Vốn điều lệ là số vốn do các thành viên, cổ đông góp hoặc cam kết góp trong một thời hạn nhất định và được ghi vào Điều lệ công ty.\r\n\r\n7. Vốn pháp định là mức vốn tối thiểu phải có theo quy định của pháp luật để thành lập doanh nghiệp.\r\n\r\n8. Vốn có quyền biểu quyết là phần vốn góp hoặc cổ phần, theo đó người sở hữu có quyền biểu quyết về những vấn đề thuộc thẩm quyền quyết định của Hội đồng thành viên hoặc Đại hội đồng cổ đông.\r\n\r\n9. Cổ tức là khoản lợi nhuận ròng được trả cho mỗi cổ phần bằng tiền mặt hoặc bằng tài sản khác từ nguồn lợi nhuận còn lại của công ty sau khi đã thực hiện nghĩa vụ về tài chính.\r\n\r\n10. Thành viên sáng lập là người góp vốn, tham gia xây dựng, thông qua và ký tên vào bản Điều lệ đầu tiên của công ty trách nhiệm hữu hạn, công ty hợp danh.\r\n\r\n11. Cổ đông là người sở hữu ít nhất một cổ phần đã phát hành của công ty cổ phần.\r\n\r\nCổ đông sáng lập là cổ đông tham gia xây dựng, thông qua và ký tên vào bản Điều lệ đầu tiên của công ty cổ phần.\r\n\r\n12. Thành viên hợp danh là thành viên chịu trách nhiệm bằng toàn bộ tài sản của mình về các nghĩa vụ của công ty hợp danh.\r\n\r\n13. Người quản lý doanh nghiệp là chủ sở hữu, giám đốc doanh nghiệp tư nhân, thành viên hợp danh công ty hợp danh, Chủ tịch Hội đồng thành viên, Chủ tịch công ty, thành viên Hội đồng quản trị, Giám đốc hoặc Tổng giám đốc và các chức danh quản lý khác do Điều lệ công ty quy định.\r\n\r\n14. Người đại diện theo uỷ quyền là cá nhân được thành viên, cổ đông là tổ chức của công ty trách nhiệm hữu hạn, công ty cổ phần uỷ quyền bằng văn bản thực hiện các quyền của mình tại công ty theo quy định của Luật này.\r\n\r\n15. Một công ty được coi là công ty mẹ của công ty khác nếu thuộc một trong các trường hợp sau đây:\r\n\r\na) Sở hữu trên 50% vốn điều lệ hoặc tổng số cổ phần phổ thông đã phát hành của công ty đó;\r\n\r\nb) Có quyền trực tiếp hoặc gián tiếp bổ nhiệm đa số hoặc tất cả thành viên Hội đồng quản trị, Giám đốc hoặc Tổng giám đốc của công ty đó;\r\n\r\nc) Có quyền quyết định việc sửa đổi, bổ sung Điều lệ của công ty đó.\r\n\r\n16. Tổ chức lại doanh nghiệp là việc chia, tách, hợp nhất, sáp nhập hoặc chuyển đổi doanh nghiệp.\r\n\r\n17. Người có liên quan là tổ chức, cá nhân có quan hệ trực tiếp hoặc gián tiếp với doanh nghiệp trong các trường hợp sau đây:\r\n\r\na) Công ty mẹ, người quản lý công ty mẹ và người có thẩm quyền bổ nhiệm người quản lý đó đối với công ty con;\r\n\r\nb) Công ty con đối với công ty mẹ;\r\n\r\nc) Người hoặc nhóm người có khả năng chi phối việc ra quyết định, hoạt động của doanh nghiệp đó thông qua các cơ quan quản lý doanh nghiệp;\r\n\r\nd) Người quản lý doanh nghiệp;\r\n\r\nđ) Vợ, chồng, cha, cha nuôi, mẹ, mẹ nuôi, con, con nuôi, anh, chị, em ruột của người quản lý doanh nghiệp hoặc của thành viên, cổ đông sở hữu phần vốn góp hay cổ phần chi phối;\r\n\r\ne) Cá nhân được uỷ quyền đại diện cho những người quy định tại các điểm a, b, c, d và đ khoản này;\r\n\r\ng) Doanh nghiệp trong đó những người quy định tại các điểm a, b, c, d, đ, e và h khoản này có sở hữu đến mức chi phối việc ra quyết định của các cơ quan quản lý ở doanh nghiệp đó;\r\n\r\nh) Nhóm người thoả thuận cùng phối hợp để thâu tóm phần vốn góp, cổ phần hoặc lợi ích ở công ty hoặc để chi phối việc ra quyết định của công ty.\r\n\r\n18. Phần vốn góp sở hữu nhà nước là phần vốn góp được đầu tư từ nguồn vốn ngân sách nhà nước và nguồn vốn khác của Nhà nước do một cơ quan nhà nước hoặc tổ chức kinh tế làm đại diện chủ sở hữu.\r\n\r\nCổ phần sở hữu nhà nước là cổ phần được thanh toán bằng vốn ngân sách nhà nước và nguồn vốn khác của Nhà nước do một cơ quan nhà nước hoặc tổ chức kinh tế làm đại diện chủ sở hữu.\r\n\r\n19. Giá thị trường của phần vốn góp hoặc cổ phần là giá giao dịch trên thị trường chứng khoán hoặc giá do một tổ chức định giá chuyên nghiệp xác định.\r\n\r\n20. Quốc tịch của doanh nghiệp là quốc tịch của nước, vùng lãnh thổ nơi doanh nghiệp thành lập, đăng ký kinh doanh.\r\n\r\n21. Địa chỉ thường trú là địa chỉ đăng ký trụ sở chính đối với tổ chức; địa chỉ đăng ký hộ khẩu thường trú hoặc địa chỉ nơi làm việc hoặc địa chỉ khác của cá nhân mà người đó đăng ký với doanh nghiệp để làm địa chỉ liên hệ.\r\n\r\n22. Doanh nghiệp nhà nước là doanh nghiệp trong đó Nhà nước sở hữu trên 50% vốn điều lệ.\r\n\r\nĐiều 5. Bảo đảm của Nhà nước đối với doanh nghiệp và chủ sở hữu doanh nghiệp\r\n\r\n1. Nhà nước công nhận sự tồn tại lâu dài và phát triển của các loại hình doanh nghiệp được quy định trong Luật này; bảo đảm sự bình đẳng trước pháp luật của các doanh nghiệp không phân biệt hình thức sở hữu và thành phần kinh tế; thừa nhận tính sinh lợi hợp pháp của hoạt động kinh doanh.\r\n\r\n2. Nhà nước công nhận và bảo hộ quyền sở hữu tài sản, vốn đầu tư, thu nhập, các quyền và lợi ích hợp pháp khác của doanh nghiệp và chủ sở hữu doanh nghiệp.\r\n\r\n3. Tài sản và vốn đầu tư hợp pháp của doanh nghiệp và chủ sở hữu doanh nghiệp không bị quốc hữu hoá, không bị tịch thu bằng biện pháp hành chính.\r\n\r\nTrường hợp thật cần thiết vì lý do quốc phòng, an ninh và vì lợi ích quốc gia, Nhà nước trưng mua, trưng dụng tài sản của doanh nghiệp thì doanh nghiệp được thanh toán hoặc bồi thường theo giá thị trường tại thời điểm công bố trưng mua hoặc trưng dụng. Việc thanh toán hoặc bồi thường phải bảo đảm lợi ích của doanh nghiệp và không phân biệt đối xử giữa các loại hình doanh nghiệp.\r\n\r\nĐiều 6. Tổ chức chính trị và tổ chức chính trị - xã hội trong doanh nghiệp\r\n\r\n1. Tổ chức chính trị, tổ chức chính trị - xã hội trong doanh nghiệp hoạt động trong khuôn khổ Hiến pháp, pháp luật và theo Điều lệ của tổ chức mình phù hợp với quy định của pháp luật.\r\n\r\n2. Doanh nghiệp có nghĩa vụ tôn trọng, tạo điều kiện thuận lợi để người lao động thành lập và tham gia hoạt động trong các tổ chức quy định tại khoản 1 Điều này.\r\n\r\nĐiều 7. Ngành, nghề và điều kiện kinh doanh\r\n\r\n1. Doanh nghiệp thuộc mọi thành phần kinh tế có quyền kinh doanh các ngành, nghề mà pháp luật không cấm.\r\n\r\n2. Đối với ngành, nghề mà pháp luật về đầu tư và pháp luật có liên quan quy định phải có điều kiện thì doanh nghiệp chỉ được kinh doanh ngành, nghề đó khi có đủ điều kiện theo quy định.\r\n\r\nĐiều kiện kinh doanh là yêu cầu mà doanh nghiệp phải có hoặc phải thực hiện khi kinh doanh ngành, nghề cụ thể, được thể hiện bằng giấy phép kinh doanh, giấy chứng nhận đủ điều kiện kinh doanh, chứng chỉ hành nghề, chứng nhận bảo hiểm trách nhiệm nghề nghiệp, yêu cầu về vốn pháp định hoặc yêu cầu khác.\r\n\r\n3. Cấm hoạt động kinh doanh gây phương hại đến quốc phòng, an ninh, trật tự, an toàn xã hội, truyền thống lịch sử, văn hoá, đạo đức, thuần phong mỹ tục Việt Nam và sức khoẻ của nhân dân, làm huỷ hoại tài nguyên, phá huỷ môi trường.\r\n\r\nChính phủ quy định cụ thể danh mục ngành, nghề kinh doanh bị cấm.\r\n\r\n4. Chính phủ định kỳ rà soát, đánh giá lại toàn bộ hoặc một phần các điều kiện kinh doanh; bãi bỏ hoặc kiến nghị bãi bỏ các điều kiện không còn phù hợp; sửa đổi hoặc kiến nghị sửa đổi các điều kiện bất hợp lý; ban hành hoặc kiến nghị ban hành điều kiện kinh doanh mới theo yêu cầu quản lý nhà nước.\r\n\r\n5. Bộ, cơ quan ngang Bộ, Hội đồng nhân dân và Uỷ ban nhân dân các cấp không được quy định về ngành, nghề kinh doanh có điều kiện và điều kiện kinh doanh.\r\n\r\nĐiều 8. Quyền của doanh nghiệp\r\n\r\n1. Tự chủ kinh doanh; chủ động lựa chọn ngành, nghề, địa bàn, hình thức kinh doanh, đầu tư; chủ động mở rộng quy mô và ngành, nghề kinh doanh; được Nhà nước khuyến khích, ưu đãi và tạo điều kiện thuận lợi tham gia sản xuất, cung ứng sản phẩm, dịch vụ công ích.\r\n\r\n2. Lựa chọn hình thức, phương thức huy động, phân bổ và sử dụng vốn.\r\n\r\n3. Chủ động tìm kiếm thị trường, khách hàng và ký kết hợp đồng.\r\n\r\n4. Kinh doanh xuất khẩu, nhập khẩu.\r\n\r\n5. Tuyển dụng, thuê và sử dụng lao động theo yêu cầu kinh doanh.\r\n\r\n6. Chủ động ứng dụng khoa học công nghệ hiện đại để nâng cao hiệu quả kinh doanh và khả năng cạnh tranh.\r\n\r\n7. Tự chủ quyết định các công việc kinh doanh và quan hệ nội bộ.\r\n\r\n8. Chiếm hữu, sử dụng, định đoạt tài sản của doanh nghiệp.\r\n\r\n9. Từ chối mọi yêu cầu cung cấp các nguồn lực không được pháp luật quy định.\r\n\r\n10. Khiếu nại, tố cáo theo quy định của pháp luật về khiếu nại, tố cáo.\r\n\r\n11. Trực tiếp hoặc thông qua người đại diện theo uỷ quyền tham gia tố tụng theo quy định của pháp luật.\r\n\r\n12. Các quyền khác theo quy định của pháp luật.\r\n\r\nĐiều 9. Nghĩa vụ của doanh nghiệp\r\n\r\n1. Hoạt động kinh doanh theo đúng ngành, nghề đã ghi trong Giấy chứng nhận đăng ký kinh doanh; bảo đảm điều kiện kinh doanh theo quy định của pháp luật khi kinh doanh ngành, nghề kinh doanh có điều kiện.\r\n\r\n2. Tổ chức công tác kế toán, lập và nộp báo cáo tài chính trung thực, chính xác, đúng thời hạn theo quy định của pháp luật về kế toán.\r\n\r\n3. Đăng ký mã số thuế, kê khai thuế, nộp thuế và thực hiện các nghĩa vụ tài chính khác theo quy định của pháp luật.\r\n\r\n4. Bảo đảm quyền, lợi ích của người lao động theo quy định của pháp luật về lao động; thực hiện chế độ bảo hiểm xã hội, bảo hiểm y tế và bảo hiểm khác cho người lao động theo quy định của pháp luật về bảo hiểm.\r\n\r\n5. Bảo đảm và chịu trách nhiệm về chất lượng hàng hoá, dịch vụ theo tiêu chuẩn đã đăng ký hoặc công bố.\r\n\r\n6. Thực hiện chế độ thống kê theo quy định của pháp luật về thống kê; định kỳ báo cáo đầy đủ các thông tin về doanh nghiệp, tình hình tài chính của doanh nghiệp với cơ quan nhà nước có thẩm quyền theo mẫu quy định; khi phát hiện các thông tin đã kê khai hoặc báo cáo thiếu chính xác, chưa đầy đủ thì phải kịp thời sửa đổi, bổ sung các thông tin đó.\r\n\r\n7. Tuân thủ quy định của pháp luật về quốc phòng, an ninh, trật tự, an toàn xã hội, bảo vệ tài nguyên, môi trường, bảo vệ di tích lịch sử, văn hoá và danh lam thắng cảnh.\r\n\r\n8. Các nghĩa vụ khác theo quy định của pháp luật.\r\n\r\nĐiều 10. Quyền và nghĩa vụ của doanh nghiệp có sản xuất, cung ứng các sản phẩm, dịch vụ công ích\r\n\r\n1. Các quyền và nghĩa vụ quy định tại Điều 8, Điều 9 và các quy định khác có liên quan của Luật này.\r\n\r\n2. Được hạch toán và bù đắp chi phí theo giá thực hiện thầu hoặc thu phí sử dụng dịch vụ theo quy định của cơ quan nhà nước có thẩm quyền.\r\n\r\n3. Được bảo đảm thời hạn sản xuất, cung ứng sản phẩm, dịch vụ thích hợp để thu hồi vốn đầu tư và có lãi hợp lý.\r\n\r\n4. Sản xuất, cung ứng sản phẩm, dịch vụ đủ số lượng, đúng chất lượng và thời hạn đã cam kết theo giá hoặc phí do cơ quan nhà nước có thẩm quyền quy định.\r\n\r\n5. Bảo đảm các điều kiện công bằng và thuận lợi như nhau cho mọi đối tượng khách hàng.\r\n\r\n6. Chịu trách nhiệm trước pháp luật và khách hàng về số lượng, chất lượng, điều kiện cung ứng và giá, phí sản phẩm, dịch vụ cung ứng.\r\n\r\n7. Các quyền và nghĩa vụ khác theo quy định của pháp luật.\r\n\r\nĐiều 11. Các hành vi bị cấm\r\n\r\n1. Cấp Giấy chứng nhận đăng ký kinh doanh cho người không đủ điều kiện hoặc từ chối cấp Giấy chứng nhận đăng ký kinh doanh cho người đủ điều kiện theo quy định của Luật này; gây chậm trễ, phiền hà, cản trở, sách nhiễu người yêu cầu đăng ký kinh doanh và hoạt động kinh doanh của doanh nghiệp.\r\n\r\n2. Hoạt động kinh doanh dưới hình thức doanh nghiệp mà không đăng ký kinh doanh hoặc tiếp tục kinh doanh khi đã bị thu hồi Giấy chứng nhận đăng ký kinh doanh.\r\n\r\n3. Kê khai không trung thực, không chính xác nội dung hồ sơ đăng ký kinh doanh; kê khai không trung thực, không chính xác, không kịp thời những thay đổi trong nội dung hồ sơ đăng ký kinh doanh.\r\n\r\n4. Kê khai khống vốn đăng ký, không góp đủ và đúng hạn số vốn như đã đăng ký; cố ý định giá tài sản góp vốn không đúng giá trị thực tế.\r\n\r\n5. Hoạt động trái pháp luật, lừa đảo; kinh doanh các ngành, nghề cấm kinh doanh.\r\n\r\n6. Kinh doanh các ngành, nghề kinh doanh có điều kiện khi chưa đủ các điều kiện kinh doanh theo quy định của pháp luật.\r\n\r\n7. Ngăn cản chủ sở hữu, thành viên, cổ đông của doanh nghiệp thực hiện các quyền theo quy định của Luật này và Điều lệ công ty.\r\n\r\n8. Các hành vi bị cấm khác theo quy định của pháp luật.\r\n\r\nĐiều 12. Chế độ lưu giữ tài liệu của doanh nghiệp\r\n\r\n1. Tuỳ theo loại hình, doanh nghiệp phải lưu giữ các tài liệu sau đây:\r\n\r\na) Điều lệ công ty; sửa đổi, bổ sung Điều lệ công ty; quy chế quản lý nội bộ của công ty; sổ đăng ký thành viên hoặc sổ đăng ký cổ đông;\r\n\r\nb) Giấy chứng nhận đăng ký kinh doanh; văn bằng bảo hộ quyền sở hữu công nghiệp; giấy chứng nhận đăng ký chất lượng sản phẩm; các giấy phép và giấy chứng nhận khác;\r\n\r\nc) Tài liệu, giấy tờ xác nhận quyền sở hữu tài sản của công ty;\r\n\r\nd) Biên bản họp Hội đồng thành viên, Đại hội đồng cổ đông, Hội đồng quản trị; các quyết định của doanh nghiệp;\r\n\r\nđ) Bản cáo bạch để phát hành chứng khoán;\r\n\r\ne) Báo cáo của Ban kiểm soát, kết luận của cơ quan thanh tra, kết luận của tổ chức kiểm toán độc lập;\r\n\r\ng) Sổ kế toán, chứng từ kế toán, báo cáo tài chính hàng năm;\r\n\r\nh) Các tài liệu khác theo quy định của pháp luật.\r\n\r\n2. Doanh nghiệp phải lưu giữ các tài liệu quy định tại khoản 1 Điều này tại trụ sở chính; thời hạn lưu giữ thực hiện theo quy định của pháp luật.\r\n\r\nChương II\r\n\r\nTHÀNH LẬP DOANH NGHIỆP VÀ ĐĂNG KÝ KINH DOANH\r\n\r\nĐiều 13. Quyền thành lập, góp vốn, mua cổ phần và quản lý doanh nghiệp\r\n\r\n1. Tổ chức, cá nhân Việt Nam, tổ chức, cá nhân nước ngoài có quyền thành lập và quản lý doanh nghiệp tại Việt Nam theo quy định của Luật này, trừ trường hợp quy định tại khoản 2 Điều này.\r\n\r\n2. Tổ chức, cá nhân sau đây không được quyền thành lập và quản lý doanh nghiệp tại Việt Nam:\r\n\r\na) Cơ quan nhà nước, đơn vị lực lượng vũ trang nhân dân Việt Nam sử dụng tài sản nhà nước để thành lập doanh nghiệp kinh doanh thu lợi riêng cho cơ quan, đơn vị mình;\r\n\r\nb) Cán bộ, công chức theo quy định của pháp luật về cán bộ, công chức;\r\n\r\nc) Sĩ quan, hạ sĩ quan, quân nhân chuyên nghiệp, công nhân quốc phòng trong các cơ quan, đơn vị thuộc Quân đội nhân dân Việt Nam; sĩ quan, hạ sĩ quan chuyên nghiệp trong các cơ quan, đơn vị thuộc Công an nhân dân Việt Nam;\r\n\r\nd) Cán bộ lãnh đạo, quản lý nghiệp vụ trong các doanh nghiệp 100% vốn sở hữu nhà nước, trừ những người được cử làm đại diện theo uỷ quyền để quản lý phần vốn góp của Nhà nước tại doanh nghiệp khác;\r\n\r\nđ) Người chưa thành niên; người bị hạn chế năng lực hành vi dân sự hoặc bị mất năng lực hành vi dân sự;\r\n\r\ne) Người đang chấp hành hình phạt tù hoặc đang bị Toà án cấm hành nghề kinh doanh;\r\n\r\ng) Các trường hợp khác theo quy định của pháp luật về phá sản.\r\n\r\n3. Tổ chức, cá nhân có quyền mua cổ phần của công ty cổ phần, góp vốn vào công ty trách nhiệm hữu hạn, công ty hợp danh theo quy định của Luật này, trừ trường hợp quy định tại khoản 4 Điều này.\r\n\r\n4. Tổ chức, cá nhân sau đây không được mua cổ phần của công ty cổ phần, góp vốn vào công ty trách nhiệm hữu hạn, công ty hợp danh theo quy định của Luật này:\r\n\r\na) Cơ quan nhà nước, đơn vị lực lượng vũ trang nhân dân Việt Nam sử dụng tài sản nhà nước góp vốn vào doanh nghiệp để thu lợi riêng cho cơ quan, đơn vị mình;\r\n\r\nb) Các đối tượng không được góp vốn vào doanh nghiệp theo quy định của pháp luật về cán bộ, công chức.\r\n\r\nĐiều 14. Hợp đồng trước đăng ký kinh doanh\r\n\r\n1. Thành viên, cổ đông sáng lập hoặc người đại diện theo uỷ quyền được ký các loại hợp đồng phục vụ cho việc thành lập và hoạt động của doanh nghiệp trước khi đăng ký kinh doanh.\r\n\r\n2. Trường hợp doanh nghiệp được thành lập thì doanh nghiệp là người tiếp nhận quyền và nghĩa vụ phát sinh từ hợp đồng đã ký kết quy định tại khoản 1 Điều này.\r\n\r\n3. Trường hợp doanh nghiệp không được thành lập thì người ký kết hợp đồng theo quy định tại khoản 1 Điều này chịu trách nhiệm hoặc liên đới chịu trách nhiệm tài sản về việc thực hiện hợp đồng đó.\r\n\r\nĐiều 15. Trình tự đăng ký kinh doanh\r\n\r\n1. Người thành lập doanh nghiệp nộp đủ hồ sơ đăng ký kinh doanh theo quy định của Luật này tại cơ quan đăng ký kinh doanh có thẩm quyền và phải chịu trách nhiệm về tính trung thực, chính xác của nội dung hồ sơ đăng ký kinh doanh.\r\n\r\n2. Cơ quan đăng ký kinh doanh có trách nhiệm xem xét hồ sơ đăng ký kinh doanh và cấp Giấy chứng nhận đăng ký kinh doanh trong thời hạn mười ngày làm việc, kể từ ngày nhận hồ sơ; nếu từ chối cấp Giấy chứng nhận đăng ký kinh doanh thì thông báo bằng văn bản cho người thành lập doanh nghiệp biết. Thông báo phải nêu rõ lý do và các yêu cầu sửa đổi, bổ sung.\r\n\r\n3. Cơ quan đăng ký kinh doanh xem xét và chịu trách nhiệm về tính hợp lệ của hồ sơ khi cấp Giấy chứng nhận đăng ký kinh doanh; không được yêu cầu người thành lập doanh nghiệp nộp thêm các giấy tờ khác không quy định tại Luật này.\r\n\r\n4. Thời hạn cấp Giấy chứng nhận đăng ký kinh doanh gắn với dự án đầu tư cụ thể thực hiện theo quy định của pháp luật về đầu tư.\r\n\r\nĐiều 16. Hồ sơ đăng ký kinh doanh của doanh nghiệp tư nhân\r\n\r\n1. Giấy đề nghị đăng ký kinh doanh theo mẫu thống nhất do cơ quan đăng ký kinh doanh có thẩm quyền quy định.\r\n\r\n2. Bản sao Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác.\r\n\r\n3. Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với doanh nghiệp kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định.\r\n\r\n4. Chứng chỉ hành nghề của Giám đốc và cá nhân khác đối với doanh nghiệp kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề.\r\n\r\nĐiều 17. Hồ sơ đăng ký kinh doanh của công ty hợp danh\r\n\r\n1. Giấy đề nghị đăng ký kinh doanh theo mẫu thống nhất do cơ quan đăng ký kinh doanh có thẩm quyền quy định.\r\n\r\n2. Dự thảo Điều lệ công ty.\r\n\r\n3. Danh sách thành viên, bản sao Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác của mỗi thành viên.\r\n\r\n4. Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với công ty hợp danh kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định.\r\n\r\n5. Chứng chỉ hành nghề của thành viên hợp danh và cá nhân khác đối với công ty hợp danh kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề.\r\n\r\nĐiều 18. Hồ sơ đăng ký kinh doanh của công ty trách nhiệm hữu hạn\r\n\r\n1. Giấy đề nghị đăng ký kinh doanh theo mẫu thống nhất do cơ quan đăng ký kinh doanh có thẩm quyền quy định.\r\n\r\n2. Dự thảo Điều lệ công ty.\r\n\r\n3. Danh sách thành viên và các giấy tờ kèm theo sau đây:\r\n\r\na) Đối với thành viên là cá nhân: bản sao Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác;\r\n\r\nb) Đối với thành viên là tổ chức: bản sao quyết định thành lập, Giấy chứng nhận đăng ký kinh doanh hoặc tài liệu tương đương khác của tổ chức; văn bản uỷ quyền, Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác của người đại diện theo uỷ quyền.\r\n\r\nĐối với thành viên là tổ chức nước ngoài thì bản sao Giấy chứng nhận đăng ký kinh doanh phải có chứng thực của cơ quan nơi tổ chức đó đã đăng ký không quá ba tháng trước ngày nộp hồ sơ đăng ký kinh doanh.\r\n\r\n4. Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định.\r\n\r\n5. Chứng chỉ hành nghề của Giám đốc hoặc Tổng giám đốc và cá nhân khác đối với công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề.\r\n\r\nĐiều 19. Hồ sơ đăng ký kinh doanh của công ty cổ phần\r\n\r\n1. Giấy đề nghị đăng ký kinh doanh theo mẫu thống nhất do cơ quan đăng ký kinh doanh có thẩm quyền quy định.\r\n\r\n2. Dự thảo Điều lệ công ty.\r\n\r\n3. Danh sách cổ đông sáng lập và các giấy tờ kèm theo sau đây:\r\n\r\na) Đối với cổ đông là cá nhân: bản sao Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác;\r\n\r\nb) Đối với cổ đông là tổ chức: bản sao quyết định thành lập, Giấy chứng nhận đăng ký kinh doanh hoặc tài liệu tương đương khác của tổ chức; văn bản uỷ quyền, Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác của người đại diện theo uỷ quyền.\r\n\r\nĐối với cổ đông là tổ chức nước ngoài thì bản sao Giấy chứng nhận đăng ký kinh doanh phải có chứng thực của cơ quan nơi tổ chức đó đã đăng ký không quá ba tháng trước ngày nộp hồ sơ đăng ký kinh doanh.\r\n\r\n4. Văn bản xác nhận vốn pháp định của cơ quan, tổ chức có thẩm quyền đối với công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có vốn pháp định.\r\n\r\n5. Chứng chỉ hành nghề của Giám đốc hoặc Tổng giám đốc và cá nhân khác đối với công ty kinh doanh ngành, nghề mà theo quy định của pháp luật phải có chứng chỉ hành nghề.\r\n\r\nĐiều 20. Hồ sơ, trình tự thủ tục, điều kiện và nội dung đăng ký kinh doanh, đầu tư của nhà đầu tư nước ngoài lần đầu tiên đầu tư vào Việt Nam\r\n\r\nHồ sơ, trình tự, thủ tục, điều kiện và nội dung đăng ký kinh doanh, đầu tư của nhà đầu tư nước ngoài lần đầu tiên đầu tư vào Việt Nam được thực hiện theo quy định của Luật này và pháp luật về đầu tư. Giấy chứng nhận đầu tư đồng thời là Giấy chứng nhận đăng ký kinh doanh.\r\n\r\nĐiều 21. Nội dung giấy đề nghị đăng ký kinh doanh\r\n\r\n1. Tên doanh nghiệp.\r\n\r\n2. Địa chỉ trụ sở chính của doanh nghiệp; số điện thoại, số fax, địa chỉ giao dịch thư điện tử (nếu có).\r\n\r\n3. Ngành, nghề kinh doanh.\r\n\r\n4. Vốn điều lệ đối với công ty, vốn đầu tư ban đầu của chủ doanh nghiệp đối với doanh nghiệp tư nhân.\r\n\r\n5. Phần vốn góp của mỗi thành viên đối với công ty trách nhiệm hữu hạn và công ty hợp danh; số cổ phần của cổ đông sáng lập, loại cổ phần, mệnh giá cổ phần và tổng số cổ phần được quyền chào bán của từng loại đối với công ty cổ phần.\r\n\r\n6. Họ, tên, chữ ký, địa chỉ thường trú, quốc tịch, số Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác của chủ doanh nghiệp đối với doanh nghiệp tư nhân; của chủ sở hữu công ty hoặc người đại diện theo uỷ quyền của chủ sở hữu công ty đối với công ty trách nhiệm hữu hạn một thành viên; của thành viên hoặc người đại diện theo uỷ quyền của thành viên đối với công ty trách nhiệm hữu hạn hai thành viên trở lên; của cổ đông sáng lập hoặc người đại diện theo uỷ quyền của cổ đông sáng lập đối với công ty cổ phần; của thành viên hợp danh đối với công ty hợp danh.\r\n\r\nĐiều 22. Nội dung Điều lệ công ty\r\n\r\n1. Tên, địa chỉ trụ sở chính, chi nhánh, văn phòng đại diện.\r\n\r\n2. Ngành, nghề kinh doanh.\r\n\r\n3. Vốn điều lệ; cách thức tăng và giảm vốn điều lệ.\r\n\r\n4. Họ, tên, địa chỉ, quốc tịch và các đặc điểm cơ bản khác của các thành viên hợp danh đối với công ty hợp danh; của chủ sở hữu công ty, thành viên đối với công ty trách nhiệm hữu hạn; của cổ đông sáng lập đối với công ty cổ phần.\r\n\r\n5. Phần vốn góp và giá trị vốn góp của mỗi thành viên đối với công ty trách nhiệm hữu hạn và công ty hợp danh; số cổ phần của cổ đông sáng lập, loại cổ phần, mệnh giá cổ phần và tổng số cổ phần được quyền chào bán của từng loại đối với công ty cổ phần.\r\n\r\n6. Quyền và nghĩa vụ của thành viên đối với công ty trách nhiệm hữu hạn, công ty hợp danh; của cổ đông đối với công ty cổ phần.\r\n\r\n7. Cơ cấu tổ chức quản lý.\r\n\r\n8. Người đại diện theo pháp luật đối với công ty trách nhiệm hữu hạn, công ty cổ phần.\r\n\r\n9. Thể thức thông qua quyết định của công ty; nguyên tắc giải quyết tranh chấp nội bộ.\r\n\r\n10. Căn cứ và phương pháp xác định thù lao, tiền lương và thưởng cho người quản lý và thành viên Ban kiểm soát hoặc Kiểm soát viên.\r\n\r\n11. Những trường hợp thành viên có thể yêu cầu công ty mua lại phần vốn góp đối với công ty trách nhiệm hữu hạn hoặc cổ phần đối với công ty cổ phần.\r\n\r\n12. Nguyên tắc phân chia lợi nhuận sau thuế và xử lý lỗ trong kinh doanh.\r\n\r\n13. Các trường hợp giải thể, trình tự giải thể và thủ tục thanh lý tài sản công ty.\r\n\r\n14. Thể thức sửa đổi, bổ sung Điều lệ công ty.\r\n\r\n15. Họ, tên, chữ ký của các thành viên hợp danh đối với công ty hợp danh; của người đại diện theo pháp luật, của chủ sở hữu công ty, của các thành viên hoặc người đại diện theo uỷ quyền đối với công ty trách nhiệm hữu hạn; của người đại diện theo pháp luật, của các cổ đông sáng lập, người đại diện theo uỷ quyền của cổ đông sáng lập đối với công ty cổ phần.\r\n\r\n16. Các nội dung khác do thành viên, cổ đông thoả thuận nhưng không được trái với quy định của pháp luật.\r\n\r\nĐiều 23. Danh sách thành viên công ty trách nhiệm hữu hạn, công ty hợp danh, danh sách cổ đông sáng lập công ty cổ phần\r\n\r\nDanh sách thành viên công ty trách nhiệm hữu hạn, công ty hợp danh, danh sách cổ đông sáng lập công ty cổ phần được lập theo mẫu thống nhất do cơ quan đăng ký kinh doanh quy định và phải có các nội dung chủ yếu sau đây:\r\n\r\n1. Họ, tên, địa chỉ, quốc tịch, địa chỉ thường trú và các đặc điểm cơ bản khác của thành viên đối với công ty trách nhiệm hữu hạn và công ty hợp danh; của cổ đông sáng lập đối với công ty cổ phần.\r\n\r\n2. Phần vốn góp, giá trị vốn góp, loại tài sản, số lượng, giá trị của từng loại tài sản góp vốn, thời hạn góp vốn của từng thành viên đối với công ty trách nhiệm hữu hạn, công ty hợp danh; số lượng cổ phần, loại cổ phần, loại tài sản, số lượng tài sản, giá trị của từng loại tài sản góp vốn cổ phần của từng cổ đông sáng lập đối với công ty cổ phần.\r\n\r\n3. Họ, tên, chữ ký của người đại diện theo pháp luật của thành viên, cổ đông sáng lập hoặc của đại diện theo uỷ quyền của họ đối với công ty trách nhiệm hữu hạn và công ty cổ phần; của thành viên hợp danh đối với công ty hợp danh.\r\n\r\nĐiều 24. Điều kiện cấp Giấy chứng nhận đăng ký kinh doanh\r\n\r\nDoanh nghiệp được cấp Giấy chứng nhận đăng ký kinh doanh khi có đủ các điều kiện sau đây:\r\n\r\n1. Ngành, nghề đăng ký kinh doanh không thuộc lĩnh vực cấm kinh doanh;\r\n\r\n2. Tên của doanh nghiệp được đặt theo đúng quy định tại các điều 31, 32, 33 và 34 của Luật này;\r\n\r\n3. Có trụ sở chính theo quy định tại khoản 1 Điều 35 của Luật này;\r\n\r\n4. Có hồ sơ đăng ký kinh doanh hợp lệ theo quy định của pháp luật;\r\n\r\n5. Nộp đủ lệ phí đăng ký kinh doanh theo quy định của pháp luật.\r\n\r\nLệ phí đăng ký kinh doanh được xác định căn cứ vào số lượng ngành, nghề đăng ký kinh doanh; mức lệ phí cụ thể do Chính phủ quy định.\r\n\r\nĐiều 25. Nội dung Giấy chứng nhận đăng ký kinh doanh\r\n\r\n1. Tên, địa chỉ trụ sở chính của doanh nghiệp, chi nhánh, văn phòng đại diện.\r\n\r\n2. Họ, tên, địa chỉ thường trú, quốc tịch, số Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác của người đại diện theo pháp luật của doanh nghiệp.\r\n\r\n3. Họ, tên, địa chỉ thường trú, quốc tịch, số Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác của thành viên hoặc cổ đông sáng lập là cá nhân; số quyết định thành lập hoặc số đăng ký kinh doanh của chủ sở hữu công ty, của thành viên hoặc cổ đông sáng lập là tổ chức đối với công ty trách nhiệm hữu hạn và công ty cổ phần; họ, tên, địa chỉ thường trú, quốc tịch, số Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác của thành viên hợp danh đối với công ty hợp danh; họ, tên, địa chỉ thường trú, số Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác của chủ sở hữu công ty là cá nhân hoặc chủ doanh nghiệp tư nhân.\r\n\r\n4. Vốn điều lệ đối với công ty trách nhiệm hữu hạn và công ty hợp danh; số cổ phần và giá trị vốn cổ phần đã góp và số cổ phần được quyền chào bán đối với công ty cổ phần; vốn đầu tư ban đầu đối với doanh nghiệp tư nhân; vốn pháp định đối với doanh nghiệp kinh doanh ngành, nghề đòi hỏi phải có vốn pháp định.\r\n\r\n5. Ngành, nghề kinh doanh.\r\n\r\nĐiều 26. Thay đổi nội dung đăng ký kinh doanh\r\n\r\n1. Khi thay đổi tên, địa chỉ trụ sở chính, chi nhánh, văn phòng đại diện, mục tiêu và ngành, nghề kinh doanh, vốn điều lệ hoặc số cổ phần được quyền chào bán, vốn đầu tư của chủ doanh nghiệp, thay đổi người đại diện theo pháp luật của doanh nghiệp và các vấn đề khác trong nội dung hồ sơ đăng ký kinh doanh thì doanh nghiệp phải đăng ký với cơ quan đăng ký kinh doanh trong thời hạn mười ngày làm việc, kể từ ngày quyết định thay đổi.\r\n\r\n2. Trường hợp có thay đổi nội dung của Giấy chứng nhận đăng ký kinh doanh, doanh nghiệp được cấp lại Giấy chứng nhận đăng ký kinh doanh.\r\n\r\n3. Trường hợp Giấy chứng nhận đăng ký kinh doanh bị mất, bị rách, bị cháy hoặc bị tiêu huỷ dưới hình thức khác, doanh nghiệp được cấp lại Giấy chứng nhận đăng ký kinh doanh và phải trả phí.\r\n\r\nĐiều 27. Cung cấp thông tin về nội dung đăng ký kinh doanh\r\n\r\n1. Trong thời hạn bảy ngày làm việc, kể từ ngày cấp Giấy chứng nhận đăng ký kinh doanh hoặc chứng nhận thay đổi đăng ký kinh doanh, cơ quan đăng ký kinh doanh phải thông báo nội dung giấy chứng nhận đó cho cơ quan thuế, cơ quan thống kê, cơ quan nhà nước có thẩm quyền khác cùng cấp, Uỷ ban nhân dân huyện, quận, thị xã, thành phố thuộc tỉnh và Uỷ ban nhân dân xã, phường, thị trấn nơi doanh nghiệp đặt trụ sở chính.\r\n\r\n2. Tổ chức, cá nhân được quyền yêu cầu cơ quan đăng ký kinh doanh cung cấp thông tin về nội dung đăng ký kinh doanh; cấp bản sao Giấy chứng nhận đăng ký kinh doanh, chứng nhận thay đổi đăng ký kinh doanh hoặc bản trích lục nội dung đăng ký kinh doanh và phải trả phí theo quy định của pháp luật.\r\n\r\n3. Cơ quan đăng ký kinh doanh có nghĩa vụ cung cấp đầy đủ và kịp thời các thông tin về nội dung đăng ký kinh doanh theo yêu cầu của tổ chức, cá nhân quy định tại khoản 2 Điều này.\r\n\r\nĐiều 28. Công bố nội dung đăng ký kinh doanh\r\n\r\n1. Trong thời hạn ba mươi ngày kể từ ngày được cấp Giấy chứng nhận đăng ký kinh doanh, doanh nghiệp phải đăng trên mạng thông tin doanh nghiệp của cơ quan đăng ký kinh doanh hoặc một trong các loại tờ báo viết hoặc báo điện tử trong ba số liên tiếp về các nội dung chủ yếu sau đây:\r\n\r\na) Tên doanh nghiệp;\r\n\r\nb) Địa chỉ trụ sở chính của doanh nghiệp, chi nhánh, văn phòng đại diện;\r\n\r\nc) Ngành, nghề kinh doanh;\r\n\r\nd) Vốn điều lệ đối với công ty trách nhiệm hữu hạn, công ty hợp danh; số cổ phần và giá trị vốn cổ phần đã góp và số cổ phần được quyền phát hành đối với công ty cổ phần; vốn đầu tư ban đầu đối với doanh nghiệp tư nhân; vốn pháp định đối với doanh nghiệp kinh doanh ngành, nghề đòi hỏi phải có vốn pháp định;\r\n\r\nđ) Họ, tên, địa chỉ, quốc tịch, số Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác, số quyết định thành lập hoặc số đăng ký kinh doanh của chủ sở hữu, của thành viên hoặc cổ đông sáng lập;\r\n\r\ne) Họ, tên, địa chỉ thường trú, quốc tịch, số Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác của người đại diện theo pháp luật của doanh nghiệp;\r\n\r\ng) Nơi đăng ký kinh doanh.\r\n\r\n2. Trong trường hợp thay đổi nội dung đăng ký kinh doanh, doanh nghiệp phải công bố nội dung những thay đổi đó trong thời hạn và theo phương thức quy định tại khoản 1 Điều này.\r\n\r\nĐiều 29. Chuyển quyền sở hữu tài sản\r\n\r\n1. Thành viên công ty trách nhiệm hữu hạn, công ty hợp danh và cổ đông công ty cổ phần phải chuyển quyền sở hữu tài sản góp vốn cho công ty theo quy định sau đây:\r\n\r\na) Đối với tài sản có đăng ký hoặc giá trị quyền sử dụng đất thì người góp vốn phải làm thủ tục chuyển quyền sở hữu tài sản đó hoặc quyền sử dụng đất cho công ty tại cơ quan nhà nước có thẩm quyền.\r\n\r\nViệc chuyển quyền sở hữu đối với tài sản góp vốn không phải chịu lệ phí trước bạ;\r\n\r\nb) Đối với tài sản không đăng ký quyền sở hữu, việc góp vốn phải được thực hiện bằng việc giao nhận tài sản góp vốn có xác nhận bằng biên bản.\r\n\r\nBiên bản giao nhận phải ghi rõ tên và địa chỉ trụ sở chính của công ty; họ, tên, địa chỉ thường trú, số Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác, số quyết định thành lập hoặc đăng ký của người góp vốn; loại tài sản và số đơn vị tài sản góp vốn; tổng giá trị tài sản góp vốn và tỷ lệ của tổng giá trị tài sản đó trong vốn điều lệ của công ty; ngày giao nhận; chữ ký của người góp vốn hoặc đại diện theo uỷ quyền của người góp vốn và người đại diện theo pháp luật của công ty;\r\n\r\nc) Cổ phần hoặc phần vốn góp bằng tài sản không phải là tiền Việt Nam, ngoại tệ tự do chuyển đổi, vàng chỉ được coi là thanh toán xong khi quyền sở hữu hợp pháp đối với tài sản góp vốn đã chuyển sang công ty.\r\n\r\n2. Tài sản được sử dụng vào hoạt động kinh doanh của chủ doanh nghiệp tư nhân không phải làm thủ tục chuyển quyền sở hữu cho doanh nghiệp.\r\n\r\nĐiều 30. Định giá tài sản góp vốn\r\n\r\n1. Tài sản góp vốn không phải là tiền Việt Nam, ngoại tệ tự do chuyển đổi, vàng phải được các thành viên, cổ đông sáng lập hoặc tổ chức định giá chuyên nghiệp định giá.\r\n\r\n2. Tài sản góp vốn khi thành lập doanh nghiệp phải được các thành viên, cổ đông sáng lập định giá theo nguyên tắc nhất trí; nếu tài sản góp vốn được định giá cao hơn so với giá trị thực tế tại thời điểm góp vốn thì các thành viên, cổ đông sáng lập liên đới chịu trách nhiệm đối với các khoản nợ và nghĩa vụ tài sản khác của công ty bằng số chênh lệch giữa giá trị được định và giá trị thực tế của tài sản góp vốn tại thời điểm kết thúc định giá.\r\n\r\n3. Tài sản góp vốn trong quá trình hoạt động do doanh nghiệp và người góp vốn thoả thuận định giá hoặc do một tổ chức định giá chuyên nghiệp định giá. Trường hợp tổ chức định giá chuyên nghiệp định giá thì giá trị tài sản góp vốn phải được người góp vốn và doanh nghiệp chấp thuận; nếu tài sản góp vốn được định giá cao hơn giá trị thực tế tại thời điểm góp vốn thì người góp vốn hoặc tổ chức định giá và người đại diện theo pháp luật của doanh nghiệp cùng liên đới chịu trách nhiệm đối với các khoản nợ và nghĩa vụ tài sản khác của công ty bằng số chênh lệch giữa giá trị được định và giá trị thực tế của tài sản góp vốn tại thời điểm kết thúc định giá.\r\n\r\nĐiều 31. Tên doanh nghiệp\r\n\r\n1. Tên doanh nghiệp phải viết được bằng tiếng Việt, có thể kèm theo chữ số và ký hiệu, phải phát âm được và có ít nhất hai thành tố sau đây:\r\n\r\na) Loại hình doanh nghiệp;\r\n\r\nb) Tên riêng.\r\n\r\n2. Tên doanh nghiệp phải được viết hoặc gắn tại trụ sở chính, chi nhánh, văn phòng đại diện của doanh nghiệp. Tên doanh nghiệp phải được in hoặc viết trên các giấy tờ giao dịch, hồ sơ tài liệu và ấn phẩm do doanh nghiệp phát hành.\r\n\r\n3. Căn cứ vào quy định tại Điều này và các điều 32, 33 và 34 của Luật này, cơ quan đăng ký kinh doanh có quyền từ chối chấp thuận tên dự kiến đăng ký của doanh nghiệp. Quyết định của cơ quan đăng ký kinh doanh là quyết định cuối cùng.\r\n\r\nĐiều 32. Những điều cấm trong đặt tên doanh nghiệp\r\n\r\n1. Đặt tên trùng hoặc tên gây nhầm lẫn với tên của doanh nghiệp đã đăng ký.\r\n\r\n2. Sử dụng tên cơ quan nhà nước, đơn vị lực lượng vũ trang nhân dân, tên của tổ chức chính trị, tổ chức chính trị - xã hội, tổ chức chính trị xã hội - nghề nghiệp, tổ chức xã hội, tổ chức xã hội - nghề nghiệp để làm toàn bộ hoặc một phần tên riêng của doanh nghiệp, trừ trường hợp có sự chấp thuận của cơ quan, đơn vị hoặc tổ chức đó.\r\n\r\n3. Sử dụng từ ngữ, ký hiệu vi phạm truyền thống lịch sử, văn hoá, đạo đức và thuần phong mỹ tục của dân tộc.\r\n\r\nĐiều 33. Tên doanh nghiệp viết bằng tiếng nước ngoài và tên viết tắt của doanh nghiệp\r\n\r\n1. Tên doanh nghiệp viết bằng tiếng nước ngoài là tên được dịch từ tên bằng tiếng Việt sang tiếng nước ngoài tương ứng. Khi dịch sang tiếng nước ngoài, tên riêng của doanh nghiệp có thể giữ nguyên hoặc dịch theo nghĩa tương ứng sang tiếng nước ngoài.\r\n\r\n2. Tên bằng tiếng nước ngoài của doanh nghiệp được in hoặc viết với khổ chữ nhỏ hơn tên bằng tiếng Việt của doanh nghiệp tại cơ sở của doanh nghiệp hoặc trên các giấy tờ giao dịch, hồ sơ tài liệu và ấn phẩm do doanh nghiệp phát hành.\r\n\r\n3. Tên viết tắt của doanh nghiệp được viết tắt từ tên bằng tiếng Việt hoặc tên viết bằng tiếng nước ngoài.\r\n\r\nĐiều 34. Tên trùng và tên gây nhầm lẫn\r\n\r\n1. Tên trùng là tên của doanh nghiệp yêu cầu đăng ký được viết và đọc bằng tiếng Việt hoàn toàn giống với tên của doanh nghiệp đã đăng ký.\r\n\r\n2. Các trường hợp sau đây được coi là tên gây nhầm lẫn với tên của doanh nghiệp đã đăng ký:\r\n\r\na) Tên bằng tiếng Việt của doanh nghiệp yêu cầu đăng ký được đọc giống như tên doanh nghiệp đã đăng ký;\r\n\r\nb) Tên bằng tiếng Việt của doanh nghiệp yêu cầu đăng ký chỉ khác tên doanh nghiệp đã đăng ký bởi ký hiệu "&";\r\n\r\nc) Tên viết tắt của doanh nghiệp yêu cầu đăng ký trùng với tên viết tắt của doanh nghiệp đã đăng ký;\r\n\r\nd) Tên bằng tiếng nước ngoài của doanh nghiệp yêu cầu đăng ký trùng với tên bằng tiếng nước ngoài của doanh nghiệp đã đăng ký;\r\n\r\nđ) Tên riêng của doanh nghiệp yêu cầu đăng ký khác với tên riêng của doanh nghiệp đã đăng ký bởi số tự nhiên, số thứ tự hoặc các chữ cái tiếng Việt ngay sau tên riêng của doanh nghiệp đó, trừ trường hợp doanh nghiệp yêu cầu đăng ký là công ty con của doanh nghiệp đã đăng ký;\r\n\r\ne) Tên riêng của doanh nghiệp yêu cầu đăng ký khác với tên riêng của doanh nghiệp đã đăng ký bởi từ "tân" ngay trước hoặc "mới" ngay sau tên riêng của doanh nghiệp đã đăng ký;\r\n\r\ng) Tên riêng của doanh nghiệp yêu cầu đăng ký chỉ khác tên riêng của doanh nghiệp đã đăng ký bằng các từ "miền bắc", "miền nam", "miền trung", "miền tây", "miền đông" hoặc các từ có ý nghĩa tương tự, trừ trường hợp doanh nghiệp yêu cầu đăng ký là công ty con của doanh nghiệp đã đăng ký.\r\n\r\nĐiều 35. Trụ sở chính của doanh nghiệp\r\n\r\n1. Trụ sở chính của doanh nghiệp là địa điểm liên lạc, giao dịch của doanh nghiệp; phải ở trên lãnh thổ Việt Nam, có địa chỉ được xác định gồm số nhà, tên phố (ngõ phố) hoặc tên xã, phường, thị trấn, huyện, quận, thị xã, thành phố thuộc tỉnh, tỉnh, thành phố trực thuộc trung ương; số điện thoại, số fax và thư điện tử (nếu có).\r\n\r\n2. Doanh nghiệp phải thông báo thời gian mở cửa tại trụ sở chính với cơ quan đăng ký kinh doanh trong thời hạn mười lăm ngày, kể từ ngày được cấp Giấy chứng nhận đăng ký kinh doanh.\r\n\r\nĐiều 36. Con dấu của doanh nghiệp\r\n\r\n1. Doanh nghiệp có con dấu riêng. Con dấu của doanh nghiệp phải được lưu giữ và bảo quản tại trụ sở chính của doanh nghiệp. Hình thức và nội dung của con dấu, điều kiện làm con dấu và chế độ sử dụng con dấu thực hiện theo quy định của Chính phủ.\r\n\r\n2. Con dấu là tài sản của doanh nghiệp. Người đại diện theo pháp luật của doanh nghiệp phải chịu trách nhiệm quản lý sử dụng con dấu theo quy định của pháp luật. Trong trường hợp cần thiết, được sự đồng ý của cơ quan cấp dấu, doanh nghiệp có thể có con dấu thứ hai.\r\n\r\nĐiều 37. Văn phòng đại diện, chi nhánh và địa điểm kinh doanh của doanh nghiệp\r\n\r\n1. Văn phòng đại diện là đơn vị phụ thuộc của doanh nghiệp, có nhiệm vụ đại diện theo uỷ quyền cho lợi ích của doanh nghiệp và bảo vệ các lợi ích đó. Tổ chức và hoạt động của văn phòng đại diện theo quy định của pháp luật.\r\n\r\n2. Chi nhánh là đơn vị phụ thuộc của doanh nghiệp, có nhiệm vụ thực hiện toàn bộ hoặc một phần chức năng của doanh nghiệp kể cả chức năng đại diện theo uỷ quyền. Ngành, nghề kinh doanh của chi nhánh phải phù hợp với ngành, nghề kinh doanh của doanh nghiệp.\r\n\r\n3. Địa điểm kinh doanh là nơi hoạt động kinh doanh cụ thể của doanh nghiệp được tổ chức thực hiện. Địa điểm kinh doanh có thể ở ngoài địa chỉ đăng ký trụ sở chính.\r\n\r\n4. Chi nhánh, văn phòng đại diện và địa điểm kinh doanh phải mang tên của doanh nghiệp, kèm theo phần bổ sung tương ứng xác định chi nhánh, văn phòng đại diện và địa điểm kinh doanh đó.\r\n\r\n5. Doanh nghiệp có quyền lập chi nhánh, văn phòng đại diện ở trong nước và nước ngoài. Doanh nghiệp có thể đặt một hoặc nhiều văn phòng đại diện, chi nhánh tại một địa phương theo địa giới hành chính. Trình tự và thủ tục lập chi nhánh, văn phòng đại diện do Chính phủ quy định.\r\n\r\nChương III\r\n\r\nCÔNG TY TRÁCH NHIỆM HỮU HẠN\r\n\r\nMục 1\r\n\r\nCÔNG TY TRÁCH NHIỆM HỮU HẠN HAI THÀNH VIÊN TRỞ LÊN\r\n\r\nĐiều 38. Công ty trách nhiệm hữu hạn hai thành viên trở lên\r\n\r\n1. Công ty trách nhiệm hữu hạn là doanh nghiệp, trong đó:\r\n\r\na) Thành viên có thể là tổ chức, cá nhân; số lượng thành viên không vượt quá năm mươi;\r\n\r\nb) Thành viên chịu trách nhiệm về các khoản nợ và nghĩa vụ tài sản khác của doanh nghiệp trong phạm vi số vốn cam kết góp vào doanh nghiệp;\r\n\r\nc) Phần vốn góp của thành viên chỉ được chuyển nhượng theo quy định tại các điều 43, 44 và 45 của Luật này.\r\n\r\n2. Công ty trách nhiệm hữu hạn có tư cách pháp nhân kể từ ngày được cấp Giấy chứng nhận đăng ký kinh doanh.\r\n\r\n3. Công ty trách nhiệm hữu hạn không được quyền phát hành cổ phần.\r\n\r\nĐiều 39. Thực hiện góp vốn và cấp giấy chứng nhận phần vốn góp\r\n\r\n1. Thành viên phải góp vốn đầy đủ và đúng hạn bằng loại tài sản góp vốn như đã cam kết. Trường hợp thành viên thay đổi loại tài sản góp vốn đã cam kết thì phải được sự nhất trí của các thành viên còn lại; công ty thông báo bằng văn bản nội dung thay đổi đó đến cơ quan đăng ký kinh doanh trong thời hạn bảy ngày làm việc, kể từ ngày chấp thuận sự thay đổi.\r\n\r\nNgười đại diện theo pháp luật của công ty phải thông báo bằng văn bản tiến độ góp vốn đăng ký đến cơ quan đăng ký kinh doanh trong thời hạn mười lăm ngày, kể từ ngày cam kết góp vốn và phải chịu trách nhiệm cá nhân về các thiệt hại cho công ty và người khác do thông báo chậm trễ hoặc thông báo không chính xác, không trung thực, không đầy đủ.\r\n\r\n2. Trường hợp có thành viên không góp đủ và đúng hạn số vốn đã cam kết thì số vốn chưa góp được coi là nợ của thành viên đó đối với công ty; thành viên đó phải chịu trách nhiệm bồi thường thiệt hại phát sinh do không góp đủ và đúng hạn số vốn đã cam kết.\r\n\r\n3. Sau thời hạn cam kết lần cuối mà vẫn có thành viên chưa góp đủ số vốn đã cam kết thì số vốn chưa góp được xử lý theo một trong các cách sau đây:\r\n\r\na) Một hoặc một số thành viên nhận góp đủ số vốn chưa góp;\r\n\r\nb) Huy động người khác cùng góp vốn vào công ty;\r\n\r\nc) Các thành viên còn lại góp đủ số vốn chưa góp theo tỷ lệ phần vốn góp của họ trong vốn điều lệ công ty.\r\n\r\nSau khi số vốn còn lại được góp đủ theo quy định tại khoản này, thành viên chưa góp vốn theo cam kết đương nhiên không còn là thành viên của công ty và công ty phải đăng ký thay đổi nội dung đăng ký kinh doanh theo quy định của Luật này.\r\n\r\n4. Tại thời điểm góp đủ giá trị phần vốn góp, thành viên được công ty cấp giấy chứng nhận phần vốn góp. Giấy chứng nhận phần vốn góp có các nội dung chủ yếu sau đây:\r\n\r\na) Tên, địa chỉ trụ sở chính của công ty;\r\n\r\nb) Số và ngày cấp Giấy chứng nhận đăng ký kinh doanh;\r\n\r\nc) Vốn điều lệ của công ty;\r\n\r\nd) Họ, tên, địa chỉ thường trú, quốc tịch, số Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác đối với thành viên là cá nhân; tên, địa chỉ thường trú, quốc tịch, số quyết định thành lập hoặc số đăng ký kinh doanh đối với thành viên là tổ chức;\r\n\r\nđ) Phần vốn góp, giá trị vốn góp của thành viên;\r\n\r\ne) Số và ngày cấp giấy chứng nhận phần vốn góp;\r\n\r\ng) Họ, tên, chữ ký của người đại diện theo pháp luật của công ty.\r\n\r\n5. Trường hợp giấy chứng nhận phần vốn góp bị mất, bị rách, bị cháy hoặc bị tiêu huỷ dưới hình thức khác, thành viên được công ty cấp lại giấy chứng nhận phần vốn góp.\r\n\r\nĐiều 40. Sổ đăng ký thành viên\r\n\r\n1. Công ty phải lập sổ đăng ký thành viên ngay sau khi đăng ký kinh doanh. Sổ đăng ký thành viên phải có các nội dung chủ yếu sau đây:\r\n\r\na) Tên, địa chỉ trụ sở chính của công ty;\r\n\r\nb) Họ, tên, địa chỉ thường trú, quốc tịch, số Giấy chứng minh nhân dân, Hộ chiếu hoặc chứng thực cá nhân hợp pháp khác đối với thành viên là cá nhân; tên, địa chỉ thường trú, quốc tịch, số quyết định thành lập hoặc số đăng ký kinh doanh đối với thành viên là tổ chức;\r\n\r\nc) Giá trị vốn góp tại thời điểm góp vốn và phần vốn góp của từng thành viên; thời điểm góp vốn; loại tài sản góp vốn, số lượng, giá trị của từng loại tài sản góp vốn;\r\n\r\nd) Chữ ký của thành viên là cá nhân hoặc của người đại diện theo pháp luật của thành viên là tổ chức;\r\n\r\nđ) Số và ngày cấp giấy chứng nhận phần vốn góp của từng thành viên.\r\n\r\n2. Sổ đăng ký thành viên được lưu giữ tại trụ sở chính của công ty.\r\n\r\nĐiều 41. Quyền của thành viên\r\n\r\n1. Thành viên công ty trách nhiệm hữu hạn hai thành viên trở lên có các quyền sau đây:\r\n\r\na) Tham dự họp Hội đồng thành viên, thảo luận, kiến nghị, biểu quyết các vấn đề thuộc thẩm quyền của Hội đồng thành viên;\r\n\r\nb) Có số phiếu biểu quyết tương ứng với phần vốn góp;\r\n\r\nc) Kiểm tra, xem xét, tra cứu, sao chép hoặc trích lục sổ đăng ký thành viên, sổ ghi chép và theo dõi các giao dịch, sổ kế toán, báo cáo tài chính hàng năm, sổ biên bản họp Hội đồng thành viên, các giấy tờ và tài liệu khác của công ty;\r\n\r\nd) Được chia lợi nhuận tương ứng với phần vốn góp sau khi công ty đã nộp đủ thuế và hoàn thành các nghĩa vụ tài chính khác theo quy định của pháp luật;\r\n\r\nđ) Được chia giá trị tài sản còn lại của công ty tương ứng với phần vốn góp khi công ty giải thể hoặc phá sản;\r\n\r\ne) Được ưu tiên góp thêm vốn vào công ty khi công ty tăng vốn điều lệ; được quyền chuyển nhượng một phần hoặc toàn bộ phần vốn góp theo quy định của Luật này;\r\n\r\ng) Khiếu nại hoặc khởi kiện Giám đốc hoặc Tổng giám đốc khi không thực hiện đúng nghĩa vụ, gây thiệt hại đến lợi ích của thành viên hoặc công ty theo quy định của pháp luật;\r\n\r\nh) Định đoạt phần vốn góp của mình bằng cách chuyển nhượng, để thừa kế, tặng cho và cách khác theo quy định của pháp luật và Điều lệ công ty;\r\n\r\ni) Các quyền khác theo quy định của Luật này và Điều lệ công ty.\r\n\r\n2. Thành viên hoặc nhóm thành viên sở hữu trên 25% vốn điều lệ hoặc một tỷ lệ khác nhỏ hơn do Điều lệ công ty quy định, trừ trường hợp quy định tại khoản 3 Điều này, có quyền yêu cầu triệu tập họp Hội đồng thành viên để giải quyết những vấn đề thuộc thẩm quyền.\r\n\r\n3. Trường hợp công ty có một thành viên sở hữu trên 75% vốn điều lệ và Điều lệ công ty không quy định một tỷ lệ khác nhỏ hơn theo quy định tại khoản 2 Điều này thì các thành viên thiểu số hợp nhau lại đương nhiên có quyền như quy định tại khoản 2 Điều này.\r\n\r\nĐiều 42. Nghĩa vụ của thành viên\r\n\r\n1. Góp đủ, đúng hạn số vốn đã cam kết và chịu trách nhiệm về các khoản nợ và nghĩa vụ tài sản khác của công ty trong phạm vi số vốn đã cam kết góp vào công ty; không được rút vốn đã góp ra khỏi công ty dưới mọi hình thức, trừ trường hợp quy định tại các điều 43, 44, 45 và 60 của Luật này.\r\n\r\n2. Tuân thủ Điều lệ công ty.\r\n\r\n3. Chấp hành quyết định của Hội đồng thành viên.\r\n\r\n4. Thực hiện các nghĩa vụ khác theo quy định của Luật này.\r\n\r\n5. Chịu trách nhiệm cá nhân khi nhân danh công ty để thực hiện các hành vi sau đây:\r\n\r\na) Vi phạm pháp luật;\r\n\r\nb) Tiến hành kinh doanh hoặc giao dịch khác không nhằm phục vụ lợi ích của công ty và gây thiệt hại cho người khác;\r\n\r\nc) Thanh toán các khoản nợ chưa đến hạn trước nguy cơ tài chính có thể xảy ra đối với công ty.\r\n\r\nĐiều 43. Mua lại phần vốn góp\r\n\r\n1. Thành viên có quyền yêu cầu công ty mua lại phần vốn góp của mình, nếu thành viên đó bỏ phiếu không tán thành đối với quyết định của Hội đồng thành viên về các vấn đề sau đây:\r\n\r\na) Sửa đổi, bổ sung các nội dung trong Điều lệ công ty liên quan đến quyền và nghĩa vụ của thành viên, Hội đồng thành viên;\r\n\r\nb) Tổ chức lại công ty;\r\n\r\nc) Các trường hợp khác quy định tại Điều lệ công ty.\r\n\r\nYêu cầu mua lại phần vốn góp phải bằng văn bản và được gửi đến công ty trong thời hạn mười lăm ngày, kể từ ngày thông qua quyết định vấn đề quy định tại các điểm a, b và c khoản này.\r\n\r\n2. Khi có yêu cầu của thành viên quy định tại khoản 1 Điều này, nếu không thoả thuận được về giá thì công ty phải mua lại phần vốn góp của thành viên đó theo giá thị trường hoặc giá được định theo nguyên tắc quy định tại Điều lệ công ty trong thời hạn mười lăm ngày, kể từ ngày nhận được yêu cầu. Việc thanh toán chỉ được thực hiện nếu sau khi thanh toán đủ phần vốn góp được mua lại, công ty vẫn thanh toán đủ các khoản nợ và nghĩa vụ tài sản khác.\r\n\r\n3. Nếu công ty không mua lại phần vốn góp theo quy định tại khoản 2 Điều này thì thành viên đó có quyền chuyển nhượng phần vốn góp của mình cho thành viên khác hoặc người khác không phải là thành viên.\r\n\r\nĐiều 44. Chuyển nhượng phần vốn góp\r\n\r\nTrừ trường hợp quy định tại khoản 6 Điều 45 của Luật này, thành viên công ty trách nhiệm hữu hạn hai thành viên trở lên có quyền chuyển nhượng một phần hoặc toàn bộ phần vốn góp của mình cho người khác theo quy định sau đây:\r\n\r\n1. Phải chào bán phần vốn đó cho các thành viên còn lại theo tỷ lệ tương ứng với phần vốn góp của họ trong công ty với cùng điều kiện;\r\n\r\n2. Chỉ được chuyển nhượng cho người không phải là thành viên nếu các thành viên còn lại của công ty không mua hoặc không mua hết trong thời hạn ba mươi ngày, kể từ ngày chào bán.\r\n\r\nĐiều 45. Xử lý phần vốn góp trong các trường hợp khác\r\n\r\n1. Trong trường hợp thành viên là cá nhân chết hoặc bị Toà án tuyên bố là đã chết thì người thừa kế theo di chúc hoặc theo pháp luật của thành viên đó là thành viên của công ty.\r\n\r\n2. Trong trường hợp có thành viên bị hạn chế hoặc bị mất năng lực hành vi dân sự thì quyền và nghĩa vụ của thành viên đó trong công ty được thực hiện thông qua người giám hộ.\r\n\r\n3. Phần vốn góp của thành viên được công ty mua lại hoặc chuyển nhượng theo quy định tại Điều 43 và Điều 44 của Luật này trong các trường hợp sau đây:\r\n\r\na) Người thừa kế không muốn trở thành thành viên;\r\n\r\nb) Người được tặng cho theo quy định tại khoản 5 Điều này không được Hội đồng thành viên chấp thuận làm thành viên;\r\n\r\nc) Thành viên là tổ chức bị giải thể hoặc phá sản.\r\n\r\n4. Trường hợp phần vốn góp của thành viên là cá nhân chết mà không có người thừa kế, người thừa kế từ chối nhận thừa kế hoặc bị truất quyền thừa kế thì phần vốn góp đó được giải quyết theo quy định của pháp luật về dân sự.\r\n\r\n5. Thành viên có quyền tặng cho một phần hoặc toàn bộ phần vốn góp của mình tại công ty cho người khác.\r\n\r\nTrường hợp người được tặng cho là người có cùng huyết thống đến thế hệ thứ ba thì họ đương nhiên là thành viên của công ty. Trường hợp người được tặng cho là người khác thì họ chỉ trở thành thành viên của công ty khi được Hội đồng thành viên chấp thuận.\r\n\r\n6. Trường hợp thành viên sử dụng phần vốn góp để trả nợ thì người nhận thanh toán có quyền sử dụng phần vốn góp đó theo một trong hai cách sau đây:\r\n\r\na) Trở thành thành viên của công ty nếu được Hội đồng thành viên chấp thuận;\r\n\r\nb) Chào bán và chuyển nhượng phần vốn góp đó theo quy định tại Điều 44 của Luật này.\r\n\r\nĐiều 46. Cơ cấu tổ chức quản lý công ty\r\n\r\nCông ty trách nhiệm hữu hạn hai thành viên trở lên có Hội đồng thành viên, Chủ tịch Hội đồng thành viên, Giám đốc hoặc Tổng giám đốc. Công ty trách nhiệm hữu hạn có từ mười một thành viên trở lên phải thành lập Ban kiểm soát; trường hợp có ít hơn mười một thành viên, có thể thành lập Ban kiểm soát phù hợp với yêu cầu quản trị công ty. Quyền, nghĩa vụ, tiêu chuẩn, điều kiện và chế độ làm việc của Ban kiểm soát, Trưởng ban kiểm soát do Điều lệ công ty quy định.\r\n\r\nChủ tịch Hội đồng thành viên hoặc Giám đốc hoặc Tổng giám đốc là người đại diện theo pháp luật của công ty theo quy định tại Điều lệ công ty. Người đại diện theo pháp luật của công ty phải thường trú tại Việt Nam; trường hợp vắng mặt ở Việt Nam trên ba mươi ngày thì phải uỷ quyền bằng văn bản cho người khác theo quy định tại Điều lệ công ty để thực hiện các quyền và nghĩa vụ của người đại diện theo pháp luật của công ty.\r\n\r\nĐiều 47. Hội đồng thành viên\r\n\r\n1. Hội đồng thành viên gồm các thành viên, là cơ quan quyết định cao nhất của công ty. Thành viên là tổ chức chỉ định người đại diện theo uỷ quyền tham gia Hội đồng thành viên. Điều lệ công ty quy định cụ thể định kỳ họp Hội đồng thành viên, nhưng ít nhất mỗi năm phải họp một lần.\r\n\r\n2. Hội đồng thành viên có các quyền và nhiệm vụ sau đây:\r\n\r\na) Quyết định chiến lược phát triển và kế hoạch kinh doanh hàng năm của công ty;\r\n\r\nb) Quyết định tăng hoặc giảm vốn điều lệ, quyết định thời điểm và phương thức huy động thêm vốn;\r\n\r\nc) Quyết định phương thức đầu tư và dự án đầu tư có giá trị trên 50% tổng giá trị tài sản được ghi trong báo cáo tài chính tại thời điểm công bố gần nhất của công ty hoặc một tỷ lệ khác nhỏ hơn quy định tại Điều lệ công ty;\r\n\r\nd) Quyết định giải pháp phát triển thị trường, tiếp thị và chuyển giao công nghệ; thông qua hợp đồng vay, cho vay, bán tài sản có giá trị bằng hoặc lớn hơn 50% tổng giá trị tài sản được ghi trong báo cáo tài chính tại thời điểm công bố gần nhất của công ty hoặc một tỷ lệ khác nhỏ hơn quy định tại Điều lệ công ty;\r\n\r\nđ) Bầu, miễn nhiệm, bãi nhiệm Chủ tịch Hội đồng thành viên; quyết định bổ nhiệm, miễn nhiệm, cách chức, ký và chấm dứt hợp đồng đối với Giám đốc hoặc Tổng giám đốc, Kế toán trưởng và người quản lý khác quy định tại Điều lệ công ty;\r\n\r\ne) Quyết định mức lương, thưởng và lợi ích khác đối với Chủ tịch Hội đồng thành viên, Giám đốc hoặc Tổng giám đốc, Kế toán trưởng và người quản lý khác quy định tại Điều lệ công ty;\r\n\r\ng) Thông qua báo cáo tài chính hàng năm, phương án sử dụng và phân chia lợi nhuận hoặc phương án xử lý lỗ của công ty;\r\n\r\nh) Quyết định cơ cấu tổ chức quản lý công ty;\r\n\r\ni) Quyết định thành lập công ty con, chi nhánh, văn phòng đại diện;\r\n\r\nk) Sửa đổi, bổ sung Điều lệ công ty;\r\n\r\nl) Quyết định tổ chức lại công ty;\r\n\r\nm) Quyết định giải thể hoặc yêu cầu phá sản công ty;\r\n\r\nn) Các quyền và nhiệm vụ khác theo quy định của Luật này và Điều lệ công ty.\r\n			', '0000-00-00 00:00:00', '2015-05-28 23:16:52');
INSERT INTO `laws` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Thuế và Quản Lý Thuế', 'Đang cập nhật', '0000-00-00 00:00:00', '2015-05-28 09:36:34'),
(3, 'Kế toán - Kiểm toán', 'Đang cập nhật', '0000-00-00 00:00:00', '2015-05-28 09:47:14'),
(4, 'Đầu tư', 'Đang cập nhật', '0000-00-00 00:00:00', '2015-05-28 09:47:34'),
(5, 'Bảo hiểm xã hội', 'Đang cập nhật', '0000-00-00 00:00:00', '2015-05-28 09:47:51'),
(6, 'Tiền lương', 'Đang cập nhật', '0000-00-00 00:00:00', '2015-05-28 09:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_05_12_032350_create_customers_table', 1),
('2015_05_12_032559_create_taxprices_table', 2),
('2015_05_12_032807_create_accountingprices_table', 3),
('2015_05_12_045841_create_laborprices_table', 4),
('2015_05_12_075839_create_users_table', 5),
('2015_05_12_131952_create_comments_table', 6),
('2015_05_13_161207_create_users_table', 7),
('2014_10_12_000000_create_users_table', 8),
('2014_10_12_100000_create_password_resets_table', 8),
('2015_05_14_145232_create_users_table', 9),
('2015_05_28_021818_create_introductions_table', 10),
('2015_05_28_142023_create_laws_table', 11),
('2015_05_28_165316_create_services_table', 12),
('2015_05_29_010127_create_news_table', 13),
('2015_05_29_042132_create_companies_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lead1` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `lead2` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `paragraph1` longtext COLLATE utf8_unicode_ci NOT NULL,
  `paragraph2` longtext COLLATE utf8_unicode_ci NOT NULL,
  `paragraph3` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `lead1`, `lead2`, `paragraph1`, `paragraph2`, `paragraph3`, `image1`, `image2`, `image3`, `created_at`, `updated_at`) VALUES
(1, '								Vì sao giá bán USD tăng sát 23.600 đồng?\r\n			\r\n			', '								Sáng 24/3, giá USD niêm yết tại các ngân hàng trong nước có xu hướng tăng vọt mặc dù đồng bạc xanh trên thế giới đang xuống giá.\r\n			\r\n			', '								Sáng 24/3, giá USD niêm yết tại các ngân hàng trong nước có xu hướng tăng vọt mặc dù đồng bạc xanh trên thế giới đang xuống giá.\r\n			\r\n			', '								So với hôm 23/3, giá niêm yết USD đều tăng ít nhất 30 đồng tại nhiều ngân hàng. Một số đơn vị như Techcombank hay Vietcombank thậm chí còn tăng tới 60 và 75 đồng so với một ngày trước đó. Giá USD bán ra sáng 24/3 trong ngân hàng phổ biến ở 21.580 đồng, bằng với kỷ lục được thiết lập ngày 16/3.\r\nTỷ giá đã tăng tới gần 200 đồng trong vòng 2 tuần qua. So với trần, con số 21.580 đồng/USD đã ở mức tiệm cận. Đây cũng là lần tăng tỷ giá kỷ lục trong nhiều năm trở lại đây.\r\n			\r\n			', '								Theo một chuyên viên của Techcombank, có nhiều nguyên nhân dẫn tới sự tăng giá lần này. Đầu tiên, giá USD trên thị trường thế giới tăng do Cục Dự trữ Liên bang Mỹ (FED) đang duy trì chính sách đồng đôla yếu. Mỹ đang bán USD với giá rẻ. Nhu cầu mua USD lớn do hệ quả của chính sách này đã kích thích giá đôla tăng trên thị trường thế giới.\r\n\r\nTrong nước, chính sách của Ngân hàng Nhà nước (NHNN) cũng là một nguyên nhân dẫn tới sự tăng giá của đồng bạc xanh. Do NHNN khống chế, tỷ giá trong một năm qua dù có tăng nhưng cũng không đáng kể, ở mức dưới 2%. Năm nay, đồng đôla tăng một phần bởi không còn bị kiềm chế mạnh như trước. Mặc dù vậy, NHNN hiện vẫn giữ mức trần tỷ giá ở mức 21.600 đồng/USD.\r\n\r\nỔn định tỷ giá từ nhiều năm nay vẫn được coi như một chính sách quan trọng của NHNN. Đối với nhóm các nhà đầu tư, ổn định tỷ giá là một yếu tố góp phần củng cố niềm tin tại thị trường Việt Nam. Nhiều người Việt thường xuyên có giao dịch cần sử dụng USD, ổn định tỷ giá cũng là điều mà họ mong muốn. Ông Thắng, một người có con đang du học Mỹ cho biết, tỷ giá đang không ổn định nên gia đình hạn chế gửi nhiều tiền cho con trong thời gian gần. Ông Thắng cho hay, không chỉ ông, những gia đình khác có con đi du học cần sử dụng USD cũng mong tỷ giá sớm đi vào quỹ đạo.\r\n			\r\n			', '								Giá vàng là một nguyên nhân khác ảnh hưởng tới tỷ giá. Hiện tại, mức chênh lệch giá vàng trong nước và quốc tế lên tới 4-5 triệu đồng mỗi lượng. Điều này làm dấy lên lo ngại nhu cầu mua USD để nhập vàng.\r\nMột yếu tố nữa dẫn tới tỷ giá tăng trong thời gian gần đây là nhu cầu đối với ngoại tệ này của các doanh nghiệp. Đầu năm, các doanh nghiệp nhập khẩu cần USD để thanh toán với đối tác nước ngoài. Nhu cầu đối với USD vì thế cũng tăng lên, dẫn tới tỷ giá có sự dịch chuyển.\r\n			\r\n			', '								images-accountant/news/news1.jpg\r\n			\r\n			', '								images-accountant/news/news1/pic1.jpg\r\n			\r\n			', '								images-accountant/news/news1/pic2.jpg\r\n			\r\n			', '0000-00-00 00:00:00', '2015-05-28 23:17:06'),
(2, '				Câu khách bằng chiêu bán nhà 50 triệu/căn\r\n			', '				Để thu hút khách mua chung cư ở 1 dự án tại xã Vân Canh (Hoài Đức, Hà Nội), môi giới đã tung quảng cáo "nhà bán với giá 45 triệu đồng/căn" gây nhiều tranh cãi.\r\n			', '				Để thu hút khách mua chung cư ở một dự án tại xã Vân Canh (Hoài Đức, Hà Nội), môi giới đã tung quảng cáo "nhà bán với giá 45 triệu đồng mỗi căn" gây nhiều tranh cãi.\r\n			', '				Tin quảng cáo gây sốc được đăng tải trên một diễn đàn mua bán ngày 5/5, đã thu hút hàng trăm lượt "like" và bình luận của khách hàng chỉ trong vài tiếng đồng hồ. Nhiều người trong số đó, vì sợ "mất quyền ưu tiên" như cảnh báo của người rao tin, đã ngay lập tức liên hệ với đơn vị bán hàng để hẹn ngày giờ tới xem trực tiếp chân công trình.\r\n\r\nThậm chí, tối cùng ngày, như chia sẻ bằng hình ảnh của bên bán, không ít khách hàng đã "nhanh nhạy" tới đặt ngay 45 triệu để sở hữu hợp đồng mua bán căn hộ với quyền chọn vị trí căn đẹp. Một số khách khác tỉnh táo hơn, tỏ ý nghi ngờ và hỏi kỹ về "mức giá" 45 triệu đồng một căn.\r\n\r\nBên cạnh làn sóng yêu cầu được cung cấp thông tin ngay lập tức về cơ hội mua nhà giá rẻ, nhiều người có kinh nghiệm đã cảnh báo các thành viên cẩn trọng trước chiêu quảng cáo nói trên. Từ phía nguồn đăng tin, thay vì trả lời và giải thích công khai, bên bán phớt lờ những thông tin chỉ trích, cùng lúc hẹn trao đổi riêng hoặc gọi điện trực tiếp cho những ai có nhu cầu.\r\n			', '				Từ đầu năm, thị trường bất động sản nóng trở lại với sự tái xuất của hàng loạt dự án thuộc nhiều phân khúc từ bình dân tới cao cấp. Đặc biệt, các dự án nhà ở xã hội, chung cư thương mại giá rẻ thu hút số đông khách hàng do bên cạnh khung giá hợp lý, các đối tượng mua nhà còn có cơ hội được hỗ trợ về tài chính từ gói vay lãi suất thấp 30.000 tỷ đồng.\r\n\r\nĐánh trúng tâm lý muốn mua nhà hoặc chung cư giá rẻ tại thủ đô của người lao động, nhiều môi giới đã nghĩ ra không ít chiêu câu khách. Nếu không cẩn trọng, khách hàng rất dễ bị lừa, chịu tổn thất về tài chính. Một trong những chiêu mới nhất chính là lời quảng cáo sở hữu nhà tại Hà Nội chỉ với vài chục triệu đồng.\r\n\r\n"Mọi người cẩn trọng nhé. Thực chất 45 triệu đồng chỉ là tiền đặt cọc giữ chỗ ban đầu. Nếu người mua không đảm bảo việc thanh toán tiền nhà đúng đợt hẹn theo điều kiện của chủ đầu tư thì 45 triệu ấy sẽ... đi tong", lời cảnh báo được một nhân viên môi giới bất động sản đưa ra nhưng nhanh chóng bị dìm xuống bởi hàng loạt bình luận mới.\r\n\r\nTheo tìm hiểu, đây là chiêu quảng cáo liên quan tới một dự án chung cư thương mại giá rẻ đang được quan tâm tại Vân Canh (huyện Hoài Đức, Hà Nội). Giải thích mức giá "45 triệu đồng/căn hộ", nhân viên kinh doanh dự án này cho biết, đây là khoản tiền mà nếu khách hàng bỏ ra, sẽ có ngay hợp đồng mua bán hợp pháp để dùng hợp đồng này vay vốn ngân hàng.\r\n			', '				Thực tế, dự án chung cư thương mại giá rẻ nói trên được rao bán ở mức 13-14 triệu đồng/m2. Các căn hộ có diện tích dao động 43-68 m2. Theo thông tin từ chủ đầu tư, dự án này đủ điều kiện áp dụng gói vay 30.000 tỷ. Nhân viên kinh doanh cam kết sẽ hỗ trợ khách hàng vay được gói lãi suất thấp nói trên. Tuy nhiên, người này cũng thừa nhận: "45 triệu đồng chỉ là tiền đặt trước ban đầu để khách giữ chỗ và có hợp đồng mua bán - là điều kiện giúp khách vay vốn ngân hàng".\r\n			', '				images-accountant/news/news2.jpg\r\n			', '				images-accountant/news/news2/pic1.jpg\r\n			', '				images-accountant/news/news2/pic2.jpg\r\n			', '0000-00-00 00:00:00', '2015-05-28 20:50:58'),
(3, 'Bò Kobe ''made in 100% Việt Nam'' sắp xuất chuồng', 'Trong tháng 6 tới, những lứa bò Kobe đầu tiên “made in Việt Nam” xuất chuồng và bán tại thị trường Lâm Đồng. Hứa hẹn đây sẽ là một thông tin tốt.', 'Trong tháng 6 tới, những lứa bò Kobe đầu tiên “made in Việt Nam” xuất chuồng và bán tại thị trường Lâm Đồng.', 'Nằm sâu trong bạt ngàn cà phê, trà thuộc thôn 9, xã Tân Lạc, huyện Bảo Lâm (Lâm Đồng) là trang trại bò Kobe duy nhất tại Việt Nam. Trang trại nuôi bò Kobe - một loại bò nổi tiếng thế giới có nguồn gốc từ Nhật Bản với quy trình chăn nuôi nghiêm ngặt khi cho bò uống bia, nghe nhạc, mátxa và thậm chí cấp thẻ “chứng minh” để tiện bề chăm sóc…\r\n\r\nCấp thẻ “chứng minh” cho bò\r\n\r\nNhư đã hẹn trước, ông Nguyễn Trí Đức Vũ (39 tuổi) - Giám đốc Công ty Cổ phần bò Kobe Việt Nam, đón chúng tôi và khoác lên người tôi chiếc áo công nhân cùng đôi ủng da cao cổ, hướng tôi ngồi lên hàng ghế sau của chiếc xe điện (loại xe chuyên dụng dùng trong trang trại).', 'Vừa lái ông vừa giới thiệu về trại bò Kobe: “Công ty được thành lập năm 2009 từ sự hợp tác của Việt Nam và Nhật Bản với tỉ lệ vốn là 50-50. Công ty nhập tinh bò Kobe từ Mỹ với giá (40 USD một liều tinh) về phối giống với bò sữa cho ra bò Kobe thế hệ F1.\r\n\r\nNăm 2011, công ty đưa 120 con bò sữa (nhập 100 con từ Úc, Thái Lan, 20 con ở Việt Nam) về nuôi và cách ly, kiểm dịch sau khi các điều kiện sức khỏe của bò được đảm bảo mới bắt đầu phối tinh. Đến nay, trang trại đã có gần 100 con bò Kobe thế hệ F1 ở độ tuổi (1 tháng đến 26 tháng) từ việc phối giống này. Dự kiến đến tháng 6/2015, trại sẽ xuất chuồng lứa bò đầu tiên”.', 'Là giống thích nghi với xứ lạnh, nên khi nuôi trong môi trường nóng và độ ẩm cao, bò Kobe sẽ yếu hơn các giống bò ở Việt Nam, nhất là dưới 4 tháng tuổi, bò rất dễ mắc bệnh chướng hơi, viêm phổi. Do đó, cần phải có chế độ chăm sóc đặc biệt, quy trình nuôi hết sức nghiêm ngặt. Ngoài lượng thức ăn hàng ngày, bò còn được bổ sung vitamin và khoáng chất thiết yếu.', 'images-accountant/news/news3.jpg', 'images-accountant/news/news3/pic1.jpg', 'images-accountant/news/news3/pic2.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Vay tối đa 85% giá trị căn hộ Novaland với lãi suất 7,49%', 'Ngân hàng TMCP Việt Nam Thịnh Vượng (VPBank) triển khai chương trình vay mua nhà dành riêng cho khách hàng mua căn hộ của chủ đầu tư Novaland tại TP. HCM với lãi suất 7.49%/năm.', 'Ngân hàng TMCP Việt Nam Thịnh Vượng (VPBank) triển khai chương trình vay mua nhà dành riêng cho khách hàng mua căn hộ của chủ đầu tư Novaland tại TP. HCM với lãi suất 7.49%/năm.', 'Theo đó, khách hàng sẽ được hưởng ưu đãi lãi suất đặc biệt 7,49%/năm trong 3 năm đầu tiên khi mua các dự án của Novaland ở TP HCM gồm The Sun Avenue (Mai Chí Thọ, quận 2), RiverGate (Bến Vân Đồn, quận 4), The Botanica (Phổ Quang, quận Tân Bình) và Lucky Dragon (Đỗ Xuân Hợp, quận 9). Hơn nữa, khách hàng của VPBank sẽ được giảm thêm 2% trên tổng giá trị căn hộ tại tất cả dự án của Novaland.\r\n\r\nNgoài ra, VPBank còn hỗ trợ vay đối đa lên đến 85% nhu cầu vốn cho khách hàng nhằm giúp họ tháo gỡ khó khăn về tài chính.', 'Là một trong những ngân hàng TMCP hàng đầu của Việt Nam, VPBank luôn nỗ lực cải tiến, đổi mới sản phẩm, dịch vụ, nhằm đem đến những lợi ích vượt trội cho Khách hàng. Điều này không chỉ thể hiện bằng việc cho ra mắt nhiều sản phẩm, dịch vụ, mà còn bằng chất lượng dịch vụ và các giá trị gia tăng nhằm mang lại sự an tâm cho Khách hàng khi sử dụng sản phẩm, dịch vụ của VPBank.\r\n\r\nLiên hệ tổng đài 24/7 của VPBank để được tư vấn tốt nhất 1900 545 415 hoặc 04 3928 8880.', '', 'images-accountant/news/news4.jpg', 'images-accountant/news/news4/pic1.jpg', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Chủ đầu tư, môi giới thổi giá: Thị trường BĐS lại sắp chết', 'Việc chủ đầu tư tự tăng giá bán nhà đến việc các sàn bất động sản, môi giới tham gia thổi giá, đẩy giá sẽ khiến thị trường gặp nguy hiểm, có thể trở lại cảnh trầm lắng.', 'Việc chủ đầu tư tự tăng giá bán nhà đến việc các sàn bất động sản, môi giới tham gia thổi giá, đẩy giá sẽ khiến thị trường gặp nguy hiểm, có thể trở lại cảnh trầm lắng.', 'Các cụm từ “bán giá gốc”, “bán suất ngoại giao”… đang xuất hiện ngày càng nhiều trên thị trường nhà đất, thông qua các môi giới nhằm câu khách. Thậm chí, có dự án môi giới còn mập mờ khi có thêm chiêu không tính thuế VAT, phí bảo trì 2%  vào giá căn hộ, để có mức giá rao bán thấp hơn cả giá của chủ đầu tư.\r\n\r\nCâu chuyện “giá chênh” xuất hiện trên thị trường thời gian gần đây không còn là chuyện lạ, khi người mua nhà nắm được chiến thuật bắt tay giữa chủ đầu tư và các sàn bất động sản (BĐS).\r\n\r\nChủ đầu tư thường giao hàng độc quyền cho một vài sàn BĐS, và các đơn vị này với chức năng chính là môi giới sẽ làm thủ thuật, tạo sự khan hiếm ảo, khiến người mua khó tiếp cận. Còn chủ đầu tư, tuy còn “hàng”, nhưng nếu người dân hỏi đến sẽ trả lời là hết. Một mặt là để cùng tạo khan hiếm giả, mặt khác, tiếp tay cho các sàn đẩy giá lên. Điều này khiến cho người mua nhà không biết được đâu là giá thực của căn hộ.', 'Một chiêu thức phổ biến nữa đang được một số chủ dự án BĐS áp dụng, đó là mở bán theo nhiều đợt, với số lượng căn hộ khác nhau và tăng giá cao dần trong các đợt mở bán sau. Cụ thể, lần mở bán đầu tiên bao giờ cũng như lần mở bán “rắc thính” để hút khách hàng, bằng số lượng căn hộ ít ỏi và mức giá khá hấp dẫn, có thể là mức giá rẻ nhất trong các đợt mở bán của chủ đầu tư.\r\n\r\nVì vậy, theo giới chuyên gia trong ngành, nếu giá BĐS lại bị “đội” lên so với giá thật quá nhiều thì rất nguy hiểm. Không chỉ làm mất lòng tin người tiêu dùng mà có thể làm mất thanh khoản ở một phân khúc, hoặc lại làm trầm lắng cả thị trường như trước đó đã xảy ra.\r\n\r\nCác lần mở bán sau sẽ có mức giá tăng dần so với những lần mở bán trước, khiến khách hàng đang “ngắm” dự án, đang có ý định đầu tư sẽ thấy sốt ruột, nghĩ rằng dự án rất hấp dẫn người mua và đã bán hết những căn mở bán trước nên mới tăng giá.', '', 'images-accountant/news/news5.jpg', 'images-accountant/news/news5/pic1.jpg', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Đà Nẵng sẽ trở thành ''Singapore của Việt Nam'' như thế nào?', 'Việc xây dựng và phát triển những dự án trọng điểm sẽ mang lại cho Đà Nẵng một môi trường kinh doanh lý tưởng đồng thời cải thiện chất lượng cuộc sống tại đây.', 'Việc xây dựng và phát triển những dự án trọng điểm sẽ mang lại cho Đà Nẵng một môi trường kinh doanh lý tưởng đồng thời cải thiện chất lượng cuộc sống tại đây.', 'Sở hữu môi trường kinh doanh ngày càng thu hút cùng với công nghệ thông tin phát triển, Đà Nẵng đang trên đà hiện thực hoá mục tiêu trở thành Singapore của Việt Nam, Vietnam Briefing - tạp chí kinh tế về đầu tư, chính sách, thuế khóa - đánh giá. Trong 5 năm trở lại đây, thành phố này đã bùng nổ về xây dựng, với 4,5 tỷ USD chi cho các dự án cơ sở hạ tầng.\r\n\r\nThêm vào đó, trong 8 năm liên tiếp, Đà Nẵng luôn đứng đầu về chỉ số năng lực cạnh tranh cấp tỉnh (CPI) xét về quản lý tốt và các chính sách tạo điều kiện cho môi trường kinh doanh.', 'Đà Nẵng là thành phố lớn thứ ba cả nước và là trung tâm thương mại, giáo dục của miền Trung Việt Nam. Thành phố này nổi tiếng với môi trường sạch, bãi biển đẹp và dịch vụ công cộng tốt. Đây cũng được coi là nơi đáng sống nhất Việt Nam.\r\n\r\nHai trong số các dự án cơ sở hạ tầng mới quan trọng bậc nhất của Đà Nẵng chính là Khu công nghệ cao Đà Nẵng (Da Nang Hi-Tech Park) và Khu công nghệ thông tin Đà Nẵng (Da Nang IT Park).\r\n\r\nKhu công nghệ cao Đà Nẵng đang được thi công. Khi hoàn tất, quy mô sẽ đạt 1.129,76 ha. Dự án được kỳ vọng sẽ đẩy mạnh việc phát triển khoa học công nghệ cho thành phố, thông qua thu hút vốn đầu tư địa phương và nước ngoài.', 'Khu công nghệ đang đưa ra những ưu đãi tài chính khá hấp dẫn. Cụ thể, doanh nghiệp sẽ được ưu đãi thuế suất 10% trong 15 năm tính từ khi có doanh thu. Ngoài ra, các doanh nghiệp được miễn thuế 4 năm, giảm 50% trong 9 năm tiếp theo, tính từ năm đầu tiên có thu nhập chịu thuế.\r\n\r\nKhu công nghệ thông tin Đà Nẵng cũng đưa ra những ưu đãi cho các doanh nghiệp công nghệ cao về thuế thu nhập doanh nghiệp. Cụ thể, thuế suất áp dụng trong vòng 4 năm đầu tiên kể từ khi thu lợi nhuận là 0%. Trong 9 năm kế tiếp, mức này là 5% và 2 năm tiếp theo là 10%. Tiền thuê đất cũng được miễn phí lên tới 50 năm cho những "người thuê đáng tin cậy", tùy thuộc vào loại hình công nghiệp và quy mô đầu tư.', 'images-accountant/news/news6.jpg', 'images-accountant/news/news6/pic1.jpg', 'images-accountant/news/news6/pic2.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Dịch vụ thuế', '				Các nội dung và công việc chúng tôi cam kết thực hiện nhanh chóng, chuyên nghiệp: abc\r\n\r\nI. Báo cáo thuế hàng tháng:\r\n\r\n1. Lập và nộp báo cáo thuế hàng tháng tại cơ quan thuế.\r\n\r\n2. Lập và nộp báo cáo thống kê.\r\n\r\n3. Lập và nộp tờ khai quý tại cơ quan thuế.\r\n\r\n4. Đại diện Doanh nghiệp giải trình với cơ quan thuế.\r\n\r\n5. Tư vấn các vấn đề liên quan đến hồ sơ thuế.\r\n\r\nDịch vụ báo cáo thuế hàng tháng.\r\n\r\nII. Dịch vụ kế toán thuế hàng tháng:\r\nDịch vụ kế toán\r\n\r\n1. Lập và nộp các loại hồ sơ, giấy tờ theo yêu cầu của cơ quan thuế.\r\n\r\n2. Hướng dẫn viết hóa đơn và lập các loại chứng từ theo quy định.\r\n\r\n3. Cử nhân viên đến tận nơi nhận hóa đơn - chứng từ.\r\n\r\n4. Thiết lập tờ khai thuế GTGT hàng tháng bằng phần mềm hỗ trợ doanh nghiệp có mã vạch 2 chiều - HTKK 3.0.2.\r\n\r\n5. Báo cáo tình hình sử dụng hóa đơn.\r\n\r\n6. Báo cáo hoá đơn chứng từ mua vào, bán ra, cân đối chứng từ mua vào, bán ra sao cho doanh nghiệp có lợi nhất.\r\n\r\n7. In phiếu thu, phiếu chi, phiếu nhập, phiếu xuất, theo chứng từ gốc của đơn vị.\r\n\r\n8. Phân loại, sắp xếp và đóng chứng từ theo tháng.\r\n\r\n9. In báo cáo mang đến tận nơi doanh nghiệp ký và nộp tại chi cục thuế Quận/Huyện.\r\n\r\n10. Lập và nộp báo cáo thống kê.\r\n\r\n11. Thông báo số thuế GTGT phải nộp trong kỳ cho doanh nghiệp.\r\n\r\n12. Cân đối, kiểm tra chứng từ hóa đơn mua vào - bán ra.\r\n\r\n13. Hoàn chỉnh và in các loại sổ sách kế toán theo quy định hiện hành.\r\n\r\n14. Cử người trực tiếp làm việc với cơ quan thuế.\r\n\r\n15. Thường xuyên tư vấn những vấn đề thuế và các vấn đề liên quan khác.\r\n\r\n Đứng tên kế toán trưởng/người phụ trách kế toán:\r\n\r\n1. Bổ nhiệm và bổ túc hồ sơ kế toán trưởng/người phụ trách kế toán đến cơ quan thuế.\r\n\r\n2. Ký tên kế toán trưởng trên các báo cáo và sổ sách kế toán cho Doanh nghiệp.\r\n\r\n3. Thay mặt doanh nghiệp xử lý các vấn đề liên quan đến thuế khi có yêu cầu.\r\nQuyết toán năm:\r\n\r\n1. Lập quyết toán thuế, báo cáo tài chính cuối năm gởi các cơ quan chức năng.\r\n\r\n2. Lập và gởi các loại báo cáo thống kê.\r\n\r\n3. Đăng ký các loại hồ sơ cho năm mới.\r\n\r\nQuyết toán thuế, báo cáo tài chính cuối năm.\r\nIII. Cam kết trong quá trình thực hiện dịch vụ:\r\n\r\n1. Đảm bảo tính chính xác về Nội dung công việc.\r\n\r\n2. Cung cấp văn bản pháp luật có liên quan theo yêu cầu.\r\n\r\n3. Hướng dẫn các thủ tục khác có liên quan.\r\n\r\n4. Tư vấn miễn phí các vấn đề liên quan.\r\n\r\nNhững điều lưu ý về báo cáo thuế không phát sinh\r\nDOANH NGHIỆP NÊN LƯU Ý (công việc phải thực hiện sau khi đã khai thuế)\r\n\r\nDoanh nghiệp dù hoạt động hay chưa hoạt động cũng phải thực hiện đầy đủ các công việc sau:\r\n\r\n1. Treo bảng hiệu ngay tại trụ sở đăng ký kinh doanh và đăng bố cáo thành lập doanh nghiệp.\r\n\r\n2. Doanh nghiệp phải nộp định kỳ hàng năm, hàng tháng các loại hồ sơ sau:\r\nSTT - TÊN HỒ SƠ - THỜI HẠN NỘP\r\n\r\n1. Hồ sơ đầu năm Tháng 01 hàng năm.\r\n\r\n2. Đóng thuế môn bài năm Tháng đầu tiên khi được cấp giấy phép hoặc tháng 01 của năm.\r\n\r\n3. Báo cáo thuế, báo cáo thống kê từ ngày 1 >20 hàng tháng.\r\n\r\n4. Báo cáo quí vào các tháng 01,04,07,10 hàng năm.\r\n\r\n5. Quyết toán năm từ tháng 01 -> 03 hàng năm (đối với Cty) Tháng 01 hàng năm (đối với DNTN).\r\n\r\n* Ghi chú:\r\n\r\n- Nếu doanh nghiệp không kê khai đầy đủ các hồ sơ nêu trên sẽ bị đưa vào danh sách doanh nghiệp bỏ trốn.\r\n			', '0000-00-00 00:00:00', '2015-05-28 23:16:43'),
(2, 'Dịch vụ doanh nghiệp', 'Đang cập nhât', '0000-00-00 00:00:00', '2015-05-28 10:29:26'),
(3, 'Thực hiện sổ sách', 'Đang cập nhật', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Hồ sơ lao động', 'Đang cập nhật', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Hồ sơ bảo hiểm', 'Đang cập nhật', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `taxprices`
--

CREATE TABLE IF NOT EXISTS `taxprices` (
`id` int(10) unsigned NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taxprices`
--

INSERT INTO `taxprices` (`id`, `amount`, `cost`, `created_at`, `updated_at`) VALUES
(1, 'Khong phat sinh', '100,000', '2015-05-11 21:03:06', '2015-05-11 21:03:06'),
(2, 'Duoi 20 chung tu', '200,000', '2015-05-11 21:03:54', '2015-05-11 21:03:54'),
(3, 'Tu 21 den 50 chung tu', '300,000', '2015-05-11 21:04:28', '2015-05-11 21:04:28'),
(4, 'Tu 51 den 100 chung tu', '400,000', '2015-05-11 21:05:18', '2015-05-11 21:05:18'),
(5, 'Tren 100 chung tu', '600,000', '2015-05-11 21:05:57', '2015-05-21 01:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '37e8320f83853b229d1822f3b2f97b7e', '203/14 Ba Dinh', '01664662072', 'none', NULL, '2015-05-14 07:56:21', '2015-05-18 19:11:55'),
(2, 'ctminh', 'ctminh070193@gmail.com', '37e8320f83853b229d1822f3b2f97b7e', '203/14 Ba Dinh', '01664662072', 'da xu ly', NULL, '2015-05-20 23:39:27', '2015-05-20 23:39:27'),
(3, 'diepthanhdang', 'dang@gmail.com', '4b431696d630565f97b0739ae195fd86', '72 Au Co', '01664578945', 'chua xu ly', NULL, '2015-05-20 23:40:36', '2015-05-20 23:40:36'),
(4, 'ngoducthinh', 'thinh@gmail.com', '0144712dd81be0c3d9724f5e56ce6685', '12 Hoang Hoa Tham', '01668259458', 'chua xu ly', NULL, '2015-05-20 23:41:34', '2015-05-21 00:47:54'),
(5, 'minhthanhchung', 'minh@gmail.com', '37e8320f83853b229d1822f3b2f97b7e', '203/14 Ba Dinh', '01664662072', 'none', NULL, '2015-05-21 08:22:32', '2015-05-28 23:14:13'),
(8, 'dang', 'dang1@gmail.com', '37e8320f83853b229d1822f3b2f97b7e', '123 Tran Hung Dao', '084298545', 'none', NULL, '2015-05-22 01:22:53', '2015-05-22 01:22:53'),
(10, 'doankhue', 'khue@gmail.com', '693cfed9dd8adf7c63afbf53cf3a8043', '545 ldjlsffdsfsf', '2313245661', 'none', NULL, '2015-05-22 01:32:09', '2015-05-22 01:32:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountingprices`
--
ALTER TABLE `accountingprices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `introductions`
--
ALTER TABLE `introductions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laborprices`
--
ALTER TABLE `laborprices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laws`
--
ALTER TABLE `laws`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxprices`
--
ALTER TABLE `taxprices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountingprices`
--
ALTER TABLE `accountingprices`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `introductions`
--
ALTER TABLE `introductions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `laborprices`
--
ALTER TABLE `laborprices`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `laws`
--
ALTER TABLE `laws`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `taxprices`
--
ALTER TABLE `taxprices`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
