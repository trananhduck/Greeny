-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2025 at 07:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greeny`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_admin`
--

CREATE TABLE `table_admin` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `photo` text NOT NULL,
  `token` text NOT NULL,
  `datetime` varchar(100) NOT NULL,
  `timestamp` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_admin`
--

INSERT INTO `table_admin` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `token`, `datetime`, `timestamp`, `status`) VALUES
(1, 'admin', 'admin@mail.com', '7777777777', 'd00f5d5217896fb7fd601412cb890830', 'admin-1.png', 'xxxx', '23-2-2025', '25-2-2025', 0),
(2, 'thu', 'ebedangiu2111@gmail.com', '+84774048884', 'fe9e27dd7bf526b57d69d3bd9fac33dc', 'default.jpg', '', '2025-03-26 01:46:19', '1742971579', 1),
(3, 'thu', 'thupii@gmail.com', '+84774048884', 'c4ca4238a0b923820dcc509a6f75849b', 'default.jpg', '5d393e2a2f8f455f5a42aac1f0f262e7', '2025-03-28 10:33:05', '1743132785', 0),
(4, 'thu', 'thupii2111@gmai.com', '+84 774048884', 'c4ca4238a0b923820dcc509a6f75849b', 'default.jpg', '59b68bb5c6b2cd89190ee8edd5209d42', '2025-03-28 10:33:50', '1743132830', 0),
(6, 'Duc Anh Tran', 'anhduc9b1cva@gmail.com', '0344377104', '900150983cd24fb0d6963f7d28e17f72', 'default.jpg', 'f15eb404154b96a49aa2bc2b36a6759a', '2025-03-30 09:16:40', '1743301000', 0),
(9, 'Duc Anh Tran', 'taduc0508@gmail.com', '0344377104', '4ea87a999c60e96ab60230cb4ac34413', 'default.jpg', '', '2025-04-04 10:35:19', '1743780919', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_color`
--

CREATE TABLE `table_color` (
  `color_id` int(11) NOT NULL,
  `color_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_color`
--

INSERT INTO `table_color` (`color_id`, `color_name`) VALUES
(1, 'Đỏ'),
(2, 'Xanh dương'),
(3, 'Xanh lá'),
(4, 'Vàng'),
(5, 'Đen'),
(6, 'Trắng'),
(7, 'Tím'),
(8, 'Cam'),
(9, 'Hồng'),
(10, 'Nâu');

-- --------------------------------------------------------

--
-- Table structure for table `table_customer`
--

CREATE TABLE `table_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_gender` enum('Nam','Nữ') NOT NULL,
  `cust_birthyear` year(4) DEFAULT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_province` text NOT NULL,
  `cust_s_district` text NOT NULL,
  `cust_s_ward` text NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_photo` text NOT NULL,
  `cust_token` text NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_customer`
--

INSERT INTO `table_customer` (`cust_id`, `cust_name`, `cust_email`, `cust_phone`, `cust_gender`, `cust_birthyear`, `cust_s_name`, `cust_s_phone`, `cust_s_province`, `cust_s_district`, `cust_s_ward`, `cust_s_address`, `cust_password`, `cust_photo`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(11, 'Duc Anh Tran ', 'taduc0508@gmail.com', '0344377104', 'Nam', '2009', '', '', '', '', '', '', '4ea87a999c60e96ab60230cb4ac34413', 'default.jpg', '9be6628273215b4ee9836f9d1839b204', '2025-04-04 07:07:09', '1743768429', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_customer_message`
--

CREATE TABLE `table_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_end_category`
--

CREATE TABLE `table_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` text NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_end_category`
--

INSERT INTO `table_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(80, 'C1', 18),
(81, 'C2', 19),
(82, 'C3', 20);

-- --------------------------------------------------------

--
-- Table structure for table `table_faq`
--

CREATE TABLE `table_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` text NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_faq`
--

INSERT INTO `table_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Làm thế nào để tìm một sản phẩm?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Chúng tôi có rất nhiều sản phẩm tuyệt vời để bạn lựa chọn.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><span style=\"font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif;\">Mẹo 1: Nếu bạn đang tìm kiếm một sản phẩm cụ thể, hãy sử dụng hộp tìm kiếm từ khóa nằm ở đầu trang web. Chỉ cần nhập sản phẩm bạn đang tìm và chuẩn bị để ngạc nhiên!</span></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Mẹo 2: Nếu bạn muốn khám phá danh mục sản phẩm, hãy sử dụng Danh mục cửa hàng trong menu trên cùng và duyệt qua các danh mục yêu thích của bạn, nơi chúng tôi sẽ giới thiệu những sản phẩm tốt nhất trong từng danh mục.</span></font><br><br></h3>\r\n'),
(2, 'Chính sách hoàn trả của bạn là gì?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\">Bạn có 15 ngày để yêu cầu hoàn tiền sau khi đơn hàng của bạn được giao.</span><br></p>\r\n'),
(3, 'Tôi nhận được sản phẩm bị lỗi/hư hỏng, tôi có thể hoàn tiền không?', '<p>Nếu sản phẩm bạn nhận được bị lỗi hoặc hư hỏng, bạn có thể trả lại sản phẩm trong cùng điều kiện như khi bạn nhận được, với hộp và/hoặc bao bì gốc còn nguyên vẹn. Sau khi chúng tôi nhận được sản phẩm trả lại, chúng tôi sẽ kiểm tra và nếu sản phẩm được xác nhận là bị lỗi hoặc hư hỏng, chúng tôi sẽ xử lý hoàn tiền cùng với bất kỳ khoản phí vận chuyển nào phát sinh.<br></p>\r\n'),
(4, 'Khi nào không thể hoàn trả?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; background-color: rgb(250, 250, 250);\">Có một số trường hợp nhất định mà chúng tôi không thể hỗ trợ hoàn trả:</p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(250, 250, 250);\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Yêu cầu hoàn trả được thực hiện sau thời gian quy định là 15 ngày kể từ khi giao hàng.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Sản phẩm đã qua sử dụng, bị hư hỏng hoặc không còn nguyên trạng như khi nhận được.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Các danh mục sản phẩm cụ thể như nội y, tất và các sản phẩm quà tặng kèm.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Sản phẩm bị lỗi nhưng thuộc phạm vi bảo hành của nhà sản xuất.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Các sản phẩm tiêu hao đã được sử dụng hoặc lắp đặt.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Sản phẩm có số sê-ri bị tẩy xóa hoặc mất.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Bất kỳ mặt hàng nào bị thiếu phụ kiện đi kèm như nhãn giá, tem mác, bao bì gốc, quà tặng kèm.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Các sản phẩm dễ vỡ, liên quan đến vệ sinh.</li></ol>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `table_mid_category`
--

CREATE TABLE `table_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` text NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_mid_category`
--

INSERT INTO `table_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(18, 'B1', 1),
(19, 'B2', 2),
(20, 'B3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `table_order`
--

CREATE TABLE `table_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `table_page`
--

CREATE TABLE `table_page` (
  `id` int(11) NOT NULL,
  `about_title` text NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` text NOT NULL,
  `about_meta_title` text NOT NULL,
  `faq_title` text NOT NULL,
  `faq_banner` text NOT NULL,
  `faq_meta_title` text NOT NULL,
  `contact_title` text NOT NULL,
  `contact_banner` text NOT NULL,
  `contact_meta_title` text NOT NULL,
  `pgallery_title` text NOT NULL,
  `pgallery_banner` text NOT NULL,
  `pgallery_meta_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_page`
--

INSERT INTO `table_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `faq_title`, `faq_banner`, `faq_meta_title`, `contact_title`, `contact_banner`, `contact_meta_title`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`) VALUES
(1, 'About Us', '<div><p class=\"MsoNormal\"><b><span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">🌿</span> Về Chúng Tôi - Greeny<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Hành trình tái chế – Lan tỏa yêu thương<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Chào mừng bạn đến với <b>Greeny</b> – nơi những món đồ tái\r\nchế không chỉ mang giá trị bền vững mà còn chứa đựng những câu chuyện đầy cảm hứng.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Chúng tôi tự hào là một thương hiệu chuyên sản xuất và kinh\r\ndoanh các sản phẩm từ vật liệu tái chế, được tạo nên bởi <b>những đôi tay tài\r\nhoa của người khiếm thính, khiếm thị</b>. Mỗi sản phẩm không chỉ góp phần bảo vệ\r\nmôi trường mà còn giúp những người yếu thế trong xã hội có công việc ổn định và\r\ncuộc sống tốt đẹp hơn.<o:p></o:p></p>\r\n\r\n<div class=\"MsoNormal\" align=\"center\" style=\"text-align:center\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</div>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">🌍</span> Sứ mệnh của chúng tôi<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">♻️</span> Tái chế để bảo vệ môi trường:</b>\r\nBiến rác thải thành những sản phẩm hữu ích, giảm thiểu tác động tiêu cực đến\r\nthiên nhiên.<br>\r\n<b><span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;mso-bidi-font-family:\r\n&quot;Segoe UI Emoji&quot;\">💛</span> Tạo việc làm bền vững:</b> Hỗ trợ cộng đồng\r\nngười khiếm thính, khiếm thị có cơ hội lao động và khẳng định giá trị bản thân.<br>\r\n<b><span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;mso-bidi-font-family:\r\n&quot;Segoe UI Emoji&quot;\">🛍️</span> Sản phẩm độc đáo, ý nghĩa:</b> Mỗi sản phẩm\r\nlà một câu chuyện, mỗi đường nét đều được làm thủ công bằng tất cả tâm huyết.<o:p></o:p></p>\r\n\r\n<div class=\"MsoNormal\" align=\"center\" style=\"text-align:center\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</div>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">📌</span> Vì sao chọn Greeny?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">✅</span> <b>Bảo vệ môi trường:</b> Sử dụng\r\nchất liệu tái chế như vải vụn, giấy báo, nhựa tái chế… để tạo ra những sản phẩm\r\nmới.<br>\r\n<span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;mso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">✅</span>\r\n<b>Sản phẩm thủ công, ý nghĩa:</b> Mỗi món đồ đều được làm bằng tay, mang đậm dấu\r\nấn của những người thợ đặc biệt.<br>\r\n<span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;mso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">✅</span>\r\n<b>Hỗ trợ cộng đồng:</b> Mỗi đơn hàng của bạn là một sự ủng hộ cho người lao động\r\nyếu thế.<br>\r\n<span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;mso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">✅</span>\r\n<b>Chính sách thân thiện:</b> Hỗ trợ đổi trả dễ dàng, giao hàng toàn quốc.<br>\r\n<span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;mso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">✅</span>\r\n<b>Giao dịch an toàn:</b> Bảo mật thanh toán với tiêu chuẩn cao nhất.<o:p></o:p></p>\r\n\r\n<div class=\"MsoNormal\" align=\"center\" style=\"text-align:center\">\r\n\r\n<hr size=\"2\" width=\"100%\" align=\"center\">\r\n\r\n</div>\r\n\r\n<p class=\"MsoNormal\"><b><span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">💬</span> Chúng tôi ở đây để lắng\r\nnghe bạn<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Nếu bạn có bất kỳ câu hỏi nào về sản phẩm hoặc mong muốn\r\nđóng góp ý tưởng, đừng ngần ngại liên hệ với chúng tôi:<br>\r\n<span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;mso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">📧</span>\r\nEmail: abc@gmail.com<br>\r\n<span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;mso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">📍</span>\r\nĐịa chỉ: Thủ Đức, TP. Hồ Chí Minh<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-family:&quot;Segoe UI Emoji&quot;,sans-serif;\r\nmso-bidi-font-family:&quot;Segoe UI Emoji&quot;\">🌱</span> <b>Hãy cùng Greeny sống\r\nxanh, yêu thương và lan tỏa giá trị tích cực đến cộng đồng!</b><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p></div>', 'about-banner.jpg', 'About Us', 'FAQ', 'faq-banner.jpg', 'FAQ', 'Liên hệ', 'contact-banner.jpg', 'Liên hệ', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_payment`
--

CREATE TABLE `table_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` datetime NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_payment`
--

INSERT INTO `table_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(1, 1, 'Nguyễn Văn A', 'vana@gmail.com', '2025-02-28 11:00:00', 'TXN123456A', 500000.00, '4111111111111111', '123', '02', '2028', 'Bank XYZ - Successful', 'Bank Deposit', 'Completed', 'Pending', 'PAYID123A'),
(2, 2, 'Trần Thị B', 'anhduc9b1cva@gmail.com', '2025-02-28 11:15:00', 'TXN789101B', 750000.00, '5555555555554444', '456', '05', '2029', 'Bank ABC - Successful', 'Bank Deposit', 'Completed', 'Completed', 'PAYID456B');

-- --------------------------------------------------------

--
-- Table structure for table `table_photo`
--

CREATE TABLE `table_photo` (
  `id` int(11) NOT NULL,
  `caption` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_photo`
--

INSERT INTO `table_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `table_product`
--

CREATE TABLE `table_product` (
  `p_id` int(11) NOT NULL,
  `p_name` text NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` text NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_order` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_product`
--

INSERT INTO `table_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_return_policy`, `p_total_order`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(170, 'Túi tote dệt', '', '179000', 100, 'product-featured-170.jpg', '<p>Tái chế lại Nilon đã qua sử dụng kết hợp dệt với vải, giúp giảm thiểu lượng rác thải ra môi trường. Thiết kế rộng rãi, màu sắc bắt mắt. Túi tote Limloop có thể đồng hành cùng bạn trong mọi tình uống như đi chơi, đi học, đi làm.</p>', '', '<p><b>Kích thước:</b></p><p>Túi tote: 38x38cm</p><p><b>Màu sắc:</b></p><p>Ngẫu nhiên theo từng đợt</p>', '', 0, 1, 1, 82),
(171, 'Ví Dệt Nylon Tái Chế Nhiều Màu', '', '89000', 70, 'product-featured-171.jpg', '<p><span style=\"font-weight: 700;\">Kích thước </span>21x13cm</p><p><span style=\"font-weight: 700;\">Màu sắc: </span>Ngẫu nhiên tuỳ theo từng đợt</p><p><br></p>', '<p>Chiếc ví thiết kế đủ rộng giúp bạn để điện thoại, tiền, giấy tờ tùy thân hoặc bút viết. Nguyên liệu làm từ bao Nilon không phân hủy kết hợp với vải canvas giúp giảm thiệu lượng rác thải ra môi trường. Ví có nhiều màu cho các bạn lựa chọn phù hợp với nhu cầu</p>', '<p><br></p>', '', 0, 1, 1, 82),
(172, 'Bút bi giấy', '', '7000', 200, 'product-featured-172.jpg', '<p>- Không gây ô nhiễm môi trường, không chứa các chất độc hại như nilon.</p><p>- Có thể sử dụng nhiều lần, dễ tái chế vì giấy kraft rất bền, dai và chắc chắn</p><p>- Dễ gia công sản xuất, cắt, thiết kế kiểu cách như ý muốn</p><p>- Có nhiều loại khác nhau, người dùng có nhiều lựa chọn.</p>', '<p>Từ rất lâu, những chiếc bút bi đã trở thành vật bất li thân của mọi người.</p><p>Đặc biệt là trong thời buổi hiện đại ngày nay, số lượng công việc của mỗi người ngày càng nhiều khiến cho nhu cầu cần “note” các ghi chú của mình là không hề nhỏ.</p><p>Tuy nhiên, quá trình sản xuất bút bi, vỏ bút làm bằng nhựa không thực sự thân thiện với môi trường của chúng ta. Để góp phần giảm thiểu tình trạng này, Bút bi giấy Greeny hoàn toàn được sản xuất thủ công từ giấy Kraft, mội loại giấy tái chế thân thiện với môi trường hơn.</p><p>Giấy Kraft, vốn quen thuộc với người dân Việt Nam với cái tên “Giấy xi măng”, được Greeny lựa chọn làm nguyên liệu chính cho các sản phẩm Bút bi giấy của mình. Không chỉ thân thiện với môi trường. Ngoài ra, chất liệu kraft cũng mang lại cảm giác về nét xưa, cho bạn thêm cảm hứng với ngòi bút của mình.</p>', '<p><b>Màu mực của bút:</b></p><p>- Xanh dương</p><p>- Đen</p><p><b>Ưu điểm</b></p><p>- Bút hoàn toàn được làm thủ công.</p><p>- Giấy được làm hoàn toàn từ giấy Kraft có khả năng tái chế, thân thiện với môi trường, bền và chắc chắn không dễ bị rách</p><p>- Có khả năng chống thấm, hút ẩm cao.</p><p> </p>', '', 0, 1, 1, 82),
(173, 'Bàn chải than tre', '', '22000', 200, 'product-featured-173.jpg', '<p>Vì sao Greeny không chọn loại bàn chải khác có lông chải thân thiện với môi trường hơn? Các loại lông khác có thể sẽ thân thiện với môi trường hơn. Tuy nhiên, hiện nay vẫn chưa có loại lông bàn chải nào 100% phân huỷ sinh học. Hơn thế nữa, những loại lông chải này không mềm mại và có thể gây khó chịu khi chăm sóc răng miệng của. Greeny cũng rất mong có những phát minh hiện đại hơn giúp bàn chải vừa thân thiện với môi trường vừa đảm bảo sức khoẻ răng miệng của người dùng.</p><p><b>CÁCH BẢO QUẢN</b></p><p>Sau khi dùng xong nên để bàn chải ở nơi khô ráo, giúp tránh tình trạng ẩm mốc.</p>', '<p>Nếu chúng ta thay bàn chải đều đặn mỗi 6 tháng 1 lần thì trung bình 1 năm sẽ có đến gần 15 tỉ chiếc bàn chải bị thải ra. Đa số bàn chải đều làm từ nhựa và lượng rác thải phải mất đến hơn 1000 năm để có thể tự phân hủy. Đây chính là gánh nặng cho Trái Đất của chúng ta và những đơn vị xử lý rác thải ra môi trường. Hãy thay đổi thói quen tiêu dùng của mình với Bàn chải tre để góp phần bảo vệ môi trường bạn nhé.</p>', '<p><b>KÍCH THƯỚC:</b></p><p>Limart hiện có 2 size phù hợp với cả gia đình bạn:</p><p>Bàn chải Người lớn: 17,5 cm – bao gồm phần răng chải 2,7 cm</p><p>Bàn chải Trẻ em: 14,5 cm – bao gồm phần chải 2,3 cm</p><p><b>CHẤT LIỆU:</b></p><p>Thân bàn chải: chất liệu gỗ tre thiên nhiên 100%</p><p>Lông bàn chải: chất liệu nylon cao cấp, không BPA độc hại, nylon dai và mềm, không gây đau nướu răng.</p><p><b>ƯU ĐIỂM CỦA BÀN CHẢI TRE LIMART</b></p><p>✅ Thân bàn chải 100% bằng gỗ tre có khả năng phân huỷ sinh học cao, thân thiện với môi trường.</p><p>✅ Lông bàn chải mềm mại, không BPA, an toàn và dễ chịu khi sử dụng.</p><p>✅ Bàn chải tre có 2 kích cỡ phù hợp cho cả gia đình bạn.</p><p>✅ Nhỏ gọn, nhẹ nhàng, dễ dàng mang đi khi đựng trong Ống đựng bàn chải bằng tre Limart.</p>', '', 0, 1, 1, 81),
(174, 'Bông tẩy trang sợi tre', '', '25000', 200, 'product-featured-174.jpg', '<p><b>CÁCH SỬ DỤNG</b></p><p>Làm ướt miếng bông bằng nước thường, vắt nhẹ.</p><p>Đổ một ít nước tẩy trang ra miếng bông</p><p>Dùng miếng bông đã thấm nước tẩy trang để làm sạch lớp trang điểm.</p><p>Rửa lại với sữa rửa mặt và nước sạch vậy là bạn đã có một làn da sạch sẽ thông thoáng hơn rồi nè</p><p><b>CÁCH BẢO QUẢN</b></p><p>Sau khi sử dụng Miếng tẩy trang sợi tre, giặt sạch với nước và một ít sữa rửa mặt.</p><p>Nếu giặt bằng máy, bạn cho vào Túi lưới giặt bông tẩy trang, sau đó cho vào máy và giặt như bình thường.</p><p>Giặt xong, bạn phơi khô và cất giữ cho lần sử dụng sau.</p>', '<p>Cho dù bạn có thường xuyên trang điểm hay không thì việc tẩy trang mỗi tối vẫn rất cần thiết. Giúp loại bỏ bụi bẩn và làm thông thoáng làn da. Điều đó cũng có nghĩa là mỗi ngày đều có rất nhiều miếng bông tẩy trang dùng 1 lần thải ra môi trường. Để giảm lượng rác thải ra môi trường, Greeny ưu ái sử dụng Miếng Tẩy Trang Sợi Tre, có thể tái sử dụng nhiều lần. Vừa làm đẹp lại vừa bảo vệ môi trường thì còn gì tuyệt vời hơn.</p>', '<p><b>CHẤT LIỆU: </b>miếng tẩy trang làm từ 80% sợi Tre + 20 sợi Cotton.</p><p>Chất liệu vải hoàn toàn từ thiên nhiên. Vô cùng an toàn với làn da bạn.</p><p>Bề mặt vải sợi tre mềm mại, thoáng mát, kháng khuẩn, khử mùi và có độ bền cao.</p><p>Miếng bông thích hợp với mọi loại da. Không gây cho bạn cảm giác khó chịu khi sử dụng.</p><p><b>KÍCH THƯỚC:</b> miếng tẩy trang hình tròn đường kính 8cm</p><p><b>MÀU SẮC:</b> màu trắng.</p>', '', 0, 1, 1, 81),
(175, 'Tăm Bông Gỗ – Cotton', '', '32000', 200, 'product-featured-175.jpg', '<p><b>THÔNG TIN SẢN PHẨM</b></p><p>Tăm bông thân gỗ chống tĩnh điện, cứng cáp và chắc chắn.</p><p>Đầu bông từ cotton thiên nhiên 100% vệ sinh và an toàn cho người dùng. Các sợi cotton được bện và dính chặt vào thân. Tránh tình trạng đầu bông rớt ra khi đang sử dụng.</p><p><b>QUY CÁCH ĐÓNG GÓI: </b>Túi giấy 50G</p><p><b>CÔNG DỤNG:</b></p><p><b>Giữ vệ sinh đôi tai: </b>Tai có chức năng ngăn cản các tác nhân nguy hiểm bên ngoài xâm nhập vào bên trong cơ thể. Những tác nhân như bụi bẩn sẽ được giữ lại bởi lớp màng nhĩ . Tuy nhiên, nếu như lớp bụi bẩn này không được loại bỏ, làm sạch ra khỏi tai thì chúng có thể gây nên các bệnh viêm nhiễm vô cùng nguy hiểm cho đôi tai của bạn. Tăm bông gỗ sẽ là trợ thủ đắc lực giúp bạn giữ đôi tai mình luôn luôn khỏe mạnh.</p><p><b>Trang điểm:</b> Bạn có thể dùng tăm bông thay thế cho cọ tán phấn mắt, hoặc chỉnh lại đường eyeliner của mình cho thật “bén” nhé.</p><p><b>Chăm sóc da mặt: </b>nếu cần phải nặn mụn, đùng dùng tay thay vào đó hãy sử dụng tăm bông. Dùng tăm bông giúp hạn chế tình trạng viêm nhiễm do vi khuẩn lan ra những vùng da khác.</p><p><b>Nước hoa bỏ túi: </b>Thay vì để chai nước hoa cồng kềnh trong túi, bạn có thể tẩm nước hoa vào các đầu tăm bông gỗ. Sau đó, để gọn gàng trong túi zip, khi cần sử dụng, bạn chỉ cần lấy ra và thoa trực tiếp lên cổ, cổ tay.</p><p> </p>', '<p>Tăm bông là một vật dụng không thể thiếu trong mỗi gia đình. Mỗi năm có hằng chục tỷ chiếc tăm bông thân nhựa thải ra môi trường. Phải mất bao lâu để lượng nhựa khổng lồ này phân huỷ tự nhiên? Đây thực sự là một gánh nặng đối với Trái Đất thân yêu của chúng tay. Greeny mách nhỏ bạn, sử dụng Tăm Bông Gỗ để chung tay bảo vệ môi trường bạn nhé.</p>', '<p>✅ Chất liệu tự nhiên, khả năng phân huỷ sinh học cao, thân thiện với môi trường.</p><p>✅ Đầu bông 100% từ cotton thiên nhiên, an toàn khi sử dụng.</p><p>✅ Thân tăm bông gỗ chắc chắn hơn tăm bông nhựa.</p><p>✅ Đầu bông bện chặt, đẹp, khó rớt khỏi thân gỗ hơn so với các loại thân nhựa khác</p><p><br></p><p> </p>', '', 0, 1, 1, 81),
(176, 'Sáp Thơm Treo Hoa Khô', '', '40000', 200, 'product-featured-176.jpg', '<p><b>THÔNG TIN SẢN PHẨM</b></p><p><b>NGUYÊN LIỆU:</b></p><p>Sáp thơm treo Limart làm từ sáp đậu nành thiên nhiên, thân thiện với sức khoẻ con người và môi trường.</p><p>Hương thơm tự nhiên của sáp đậu nành kết hợp tinh dầu nguyên chất.</p><p>Trang trí bằng hoa khô tự nhiên.</p><p><b>CÔNG DỤNG:</b></p><p>Tạo hương thơm giúp thư giãn.</p><p>Khử mùi hôi, ẩm mốc trong không gian.</p><p>Tăng cường kháng khuẩn trong không khí</p><p>Trang trí nhà cửa, phòng ngủ, bàn làm việc làm không gian trở nên dễ chịu và xinh xắn hơn.</p><p>Dùng làm quà tặng</p><p><b>CÁCH SỬ DỤNG:</b></p><p>Treo ở những nơi bạn muốn.</p><p>Hoặc đựng trong hộp và dùng làm đồ trang trí</p><p><b>QUY CÁCH:</b></p><p>Sáp thơm 25G trang trí với hoa khô.</p><p>Có dây treo.</p><p>Hộp đựng bằng giấy kraft.</p>', '<p>Khi mua sáp thơm, mùi hương không phải là yếu tố duy nhất bạn cần phải xem xét. Sáp thơm có thể được làm từ nhiều loại sáp khác nhau. Với mỗi loại sáp sẽ có những đặc tính khác nhau ảnh hưởng đến hiệu suất. Greeny sử dụng 100% sáp thực vật cho tất cả các loại sáp thơm (sáp thơm treo và viên sáp thơm). Đó chỉ là một trong những bí quyết giúp sản phẩm của Greeny trở nên khác biệt so với những sản phẩm còn lại.</p>', '', '', 0, 1, 1, 82),
(179, 'Combo Ống Hút + Cọ Rửa', '', '11000', 200, 'product-featured-179.jpg', '', '', '', '', 0, 1, 1, 82);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_color`
--

CREATE TABLE `table_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_product_color`
--

INSERT INTO `table_product_color` (`id`, `color_id`, `p_id`) VALUES
(243, 2, 172),
(244, 5, 172);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_photo`
--

CREATE TABLE `table_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_product_photo`
--

INSERT INTO `table_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(170, '170.jpg', 170),
(171, '171.jpg', 171),
(172, '172.jpg', 172),
(173, '173.jpg', 173),
(174, '174.jpg', 174),
(175, '175.jpg', 175),
(176, '176.jpg', 176);

-- --------------------------------------------------------

--
-- Table structure for table `table_product_size`
--

CREATE TABLE `table_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `table_province`
--

CREATE TABLE `table_province` (
  `province_id` int(11) NOT NULL,
  `province_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `table_province`
--

INSERT INTO `table_province` (`province_id`, `province_name`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa - Vũng Tàu'),
(3, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(5, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Định'),
(9, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cần Thơ'),
(14, 'Cao Bằng'),
(15, 'Đà Nẵng'),
(16, 'Đắk Lắk'),
(17, 'Đắk Nông'),
(18, 'Điện Biên'),
(19, 'Đồng Nai'),
(20, 'Đồng Tháp'),
(21, 'Gia Lai'),
(22, 'Hà Giang'),
(23, 'Hà Nam'),
(24, 'Hà Nội'),
(25, 'Hà Tĩnh'),
(26, 'Hải Dương'),
(27, 'Hải Phòng'),
(28, 'Hậu Giang'),
(29, 'Hòa Bình'),
(30, 'Hưng Yên'),
(31, 'Khánh Hòa'),
(32, 'Kiên Giang'),
(33, 'Kon Tum'),
(34, 'Lai Châu'),
(35, 'Lâm Đồng'),
(36, 'Lạng Sơn'),
(37, 'Lào Cai'),
(38, 'Long An'),
(39, 'Nam Định'),
(40, 'Nghệ An'),
(41, 'Ninh Bình'),
(42, 'Ninh Thuận'),
(43, 'Phú Thọ'),
(44, 'Phú Yên'),
(45, 'Quảng Bình'),
(46, 'Quảng Nam'),
(47, 'Quảng Ngãi'),
(48, 'Quảng Ninh'),
(49, 'Quảng Trị'),
(50, 'Sóc Trăng'),
(51, 'Sơn La'),
(52, 'Tây Ninh'),
(53, 'Thái Bình'),
(54, 'Thái Nguyên'),
(55, 'Thanh Hóa'),
(56, 'Thừa Thiên Huế'),
(57, 'Tiền Giang'),
(58, 'TP. Hồ Chí Minh'),
(59, 'Trà Vinh'),
(60, 'Tuyên Quang'),
(61, 'Vĩnh Long'),
(62, 'Vĩnh Phúc'),
(63, 'Yên Bái');

-- --------------------------------------------------------

--
-- Table structure for table `table_rating`
--

CREATE TABLE `table_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_rating`
--
-- --------------------------------------------------------

--
-- Table structure for table `table_service`
--

CREATE TABLE `table_service` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_service`
--

INSERT INTO `table_service` (`id`, `title`, `content`, `photo`) VALUES
(1, 'Đổi trả dễ dàng', 'Đổi trả sản phẩm trong vòng 15 ngày!', 'service-5.png'),
(2, 'Miễn phí vận chuyển', 'Miễn phí giao hàng trong nội địa Việt Nam.', 'service-6.png'),
(3, 'Giao hàng nhanh', 'Sản phẩm được giao trong vòng 24 giờ.', 'service-7.png'),
(4, 'Đảm bảo hài lòng', 'Chúng tôi cam kết chất lượng làm bạn hài lòng.', 'service-8.png'),
(5, 'Thanh toán an toàn', 'Cung cấp các lựa chọn thanh toán an toàn.', 'service-9.png'),
(6, 'Đảm bảo hoàn tiền', 'Cam kết hoàn tiền cho sản phẩm của chúng tôi.', 'service-10.png');

-- --------------------------------------------------------

--
-- Table structure for table `table_settings`
--

CREATE TABLE `table_settings` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_phone` text NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` text NOT NULL,
  `receive_email_subject` text NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_latest_product` int(11) NOT NULL,
  `total_popular_product` int(11) NOT NULL,
  `total_featured_product` int(11) NOT NULL,
  `meta_title` text NOT NULL,
  `banner_login` text NOT NULL,
  `banner_registration` text NOT NULL,
  `banner_forget_password` text NOT NULL,
  `banner_reset_password` text NOT NULL,
  `banner_search` text NOT NULL,
  `banner_cart` text NOT NULL,
  `banner_checkout` text NOT NULL,
  `banner_product_category` text NOT NULL,
  `cta_title` text NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` text NOT NULL,
  `cta_read_more_url` text NOT NULL,
  `cta_photo` text NOT NULL,
  `latest_product_title` text NOT NULL,
  `latest_product_subtitle` text NOT NULL,
  `popular_product_title` text NOT NULL,
  `popular_product_subtitle` text NOT NULL,
  `bank_public_key` text NOT NULL,
  `bank_secret_key` text NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `service_on_off` int(11) NOT NULL,
  `latest_product_on_off` int(11) NOT NULL,
  `popular_product_on_off` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_settings`
--

INSERT INTO `table_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_latest_product`, `total_popular_product`, `total_featured_product`, `meta_title`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `bank_public_key`, `bank_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `service_on_off`, `latest_product_on_off`, `popular_product_on_off`) VALUES
(1, 'logo.png', 'favicon.png', 'Greeny - Khi sống xanh đi đôi với trách nhiệm xã hội', 'Greeny - Nhóm 5', 'Khu phố 6, P.Linh Trung, Tp.Thủ Đức, Tp.Hồ Chí Minh', 'greeny@gmail.com', '0918923200', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.738228322354!2d106.80321571480056!3d10.870084060477334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527c1c6e8b1b9%3A0x3a8e6e5c6f5e6b8a!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjhu41uZyB0aW4g4oCTIMSQSCBRR00gVGjhu6cgUXXhuq1jIEdpYSBUcC5ISQ!5e0!3m2!1svi!2s!4v1616581234567\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'taduc0508@gmail.com', 'Email messages from Greeny visitors', 'Cảm ơn bạn đã gửi email. Chúng tôi sẽ liên hệ với bạn sớm.', 'Một liên kết xác nhận đã được gửi đến địa chỉ email của bạn. Bạn sẽ nhận được thông tin đặt lại mật khẩu trong đó.', 6, 8, 6, 'Greeny', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'Chào mừng đến với Greeny', 'Greeny - nền tảng thương mại điện tử đáng tin cậy! Khám phá hàng ngàn sản phẩm chất lượng với giá tốt nhất, cùng những ưu đãi hấp dẫn mỗi ngày. Mua sắm dễ dàng, thanh toán an toàn, giao hàng nhanh chóng!', 'Xem thêm', '#', 'cta.jpg', 'Sản phẩm mới nhất', 'Danh sách những sản phẩm mới nhất', 'Sẩn phẩm nổi bật', 'Sản phẩm nổi bật dựa trên lựa chọn của khách hàng', 'xxxxxx', 'yyyyyy', 'Bank Name: AAAAAAA\r\nAccount Number: 1234567\r\nBranch Name: AAAAAA', '', '', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_shipping_cost`
--

CREATE TABLE `table_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `table_shipping_cost_all`
--

CREATE TABLE `table_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_shipping_cost_all`
--

INSERT INTO `table_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Table structure for table `table_size`
--

CREATE TABLE `table_size` (
  `size_id` int(11) NOT NULL,
  `size_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_size`
--

INSERT INTO `table_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, '1 size cho tất cả'),
(28, '1080x800'),
(29, '720x500'),
(30, '2T'),
(31, '3T'),
(32, '4T'),
(33, '5T'),
(34, '24 inch'),
(35, '32 inch'),
(36, '40 inch'),
(37, '43 inch'),
(38, '50 inch '),
(39, '55 inch'),
(40, '256 GB'),
(41, '128 GB'),
(42, '14 Plus'),
(43, '16 Plus'),
(44, '18 Plus'),
(45, '20 Plus'),
(46, '22 Plus'),
(47, '24 Plus'),
(48, '6mm'),
(49, '8mm');

-- --------------------------------------------------------

--
-- Table structure for table `table_slider`
--

CREATE TABLE `table_slider` (
  `id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `button_text` text NOT NULL,
  `button_url` text NOT NULL,
  `position` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_slider`
--

INSERT INTO `table_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.png', 'Welcome to Greeny', 'Bao gồm những sản phẩm thân thiện với môi trường', 'Xem các sản phẩm tái chế', '#', 'Center'),
(2, 'slider-2.png', 'Hỗ trợ những người yếu thế', 'Khi sống xanh gắn với trách nhiệm xã hội', 'Xem thêm', '#', 'Center'),
(3, 'slider-3.png', 'Tư vấn 24/7', 'Đội ngũ nhân viên cam kết phục vụ tận tình.', 'Xem thêm', '#', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `table_social`
--

CREATE TABLE `table_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` text NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_social`
--

INSERT INTO `table_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(4, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram');

-- --------------------------------------------------------

--
-- Table structure for table `table_top_category`
--

CREATE TABLE `table_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` text NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_top_category`
--

INSERT INTO `table_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(2, 'Chăm sóc cơ thể', 1),
(3, 'Đồng hành cùng bạn', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_admin`
--
ALTER TABLE `table_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_color`
--
ALTER TABLE `table_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `table_customer`
--
ALTER TABLE `table_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `table_customer_message`
--
ALTER TABLE `table_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `table_end_category`
--
ALTER TABLE `table_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `table_faq`
--
ALTER TABLE `table_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `table_mid_category`
--
ALTER TABLE `table_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `table_order`
--
ALTER TABLE `table_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_page`
--
ALTER TABLE `table_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_payment`
--
ALTER TABLE `table_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_photo`
--
ALTER TABLE `table_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product`
--
ALTER TABLE `table_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `table_product_color`
--
ALTER TABLE `table_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_product_photo`
--
ALTER TABLE `table_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `table_product_size`
--
ALTER TABLE `table_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_province`
--
ALTER TABLE `table_province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `table_rating`
--
ALTER TABLE `table_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `table_service`
--
ALTER TABLE `table_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_settings`
--
ALTER TABLE `table_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_shipping_cost`
--
ALTER TABLE `table_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `table_shipping_cost_all`
--
ALTER TABLE `table_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `table_size`
--
ALTER TABLE `table_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `table_slider`
--
ALTER TABLE `table_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_social`
--
ALTER TABLE `table_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `table_top_category`
--
ALTER TABLE `table_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_admin`
--
ALTER TABLE `table_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table_color`
--
ALTER TABLE `table_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `table_customer`
--
ALTER TABLE `table_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `table_customer_message`
--
ALTER TABLE `table_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_end_category`
--
ALTER TABLE `table_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `table_faq`
--
ALTER TABLE `table_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_mid_category`
--
ALTER TABLE `table_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `table_order`
--
ALTER TABLE `table_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_page`
--
ALTER TABLE `table_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_payment`
--
ALTER TABLE `table_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_photo`
--
ALTER TABLE `table_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_product`
--
ALTER TABLE `table_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `table_product_color`
--
ALTER TABLE `table_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `table_product_photo`
--
ALTER TABLE `table_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `table_product_size`
--
ALTER TABLE `table_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `table_rating`
--
ALTER TABLE `table_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `table_service`
--
ALTER TABLE `table_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_settings`
--
ALTER TABLE `table_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_shipping_cost`
--
ALTER TABLE `table_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_shipping_cost_all`
--
ALTER TABLE `table_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_size`
--
ALTER TABLE `table_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `table_slider`
--
ALTER TABLE `table_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_social`
--
ALTER TABLE `table_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_top_category`
--
ALTER TABLE `table_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
