-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 05, 2025 lúc 04:52 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datavietcarv1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `iddanhgia` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED DEFAULT NULL,
  `idxe` int(10) UNSIGNED DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:34',
  `updated_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:34' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongxe`
--

CREATE TABLE `dongxe` (
  `iddongxe` int(10) UNSIGNED NOT NULL,
  `tendongxe` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33',
  `updated_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dongxe`
--

INSERT INTO `dongxe` (`iddongxe`, `tendongxe`, `created_at`, `updated_at`) VALUES
(1, '4 chỗ (Sedan)', '2024-02-07 02:53:46', '2024-02-07 09:58:41'),
(2, '7 chỗ (SUV Gầm cao)', '2024-02-07 02:53:46', '2024-02-07 09:58:58'),
(5, '5 chỗ (CUV Gầm cao)', '2024-02-07 02:53:46', '2024-02-07 09:59:12'),
(6, '7 chỗ (MPV Gầm thấp)', '2024-02-07 02:53:46', '2024-02-07 09:59:34'),
(7, 'Bán tải', '2024-02-07 02:53:46', '2024-02-07 09:59:49'),
(8, 'Minivan', '2024-02-07 02:53:46', '2024-02-07 02:53:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `idgiaodich` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `idxe` int(10) UNSIGNED NOT NULL,
  `phidv` varchar(255) DEFAULT NULL,
  `tongtien` varchar(255) NOT NULL,
  `tinhtranggiaodich` tinyint(1) DEFAULT 0,
  `ngaynhanxe` date NOT NULL,
  `ngaytraxe` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:34' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangxe`
--

CREATE TABLE `hangxe` (
  `idhangxe` int(10) UNSIGNED NOT NULL,
  `tenhangxe` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33',
  `updated_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hangxe`
--

INSERT INTO `hangxe` (`idhangxe`, `tenhangxe`, `created_at`, `updated_at`) VALUES
(1, 'Audi', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(2, 'BMW', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(3, 'Chevrolet', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(4, 'Ford', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(5, 'Kia', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(6, 'Mazda', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(7, 'Mercedes', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(8, 'Mitsubishi', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(9, 'Toyota', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(10, 'Honda', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(11, 'Hyundai', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(12, 'Bentley', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(13, 'Lexus', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(14, 'Nissan', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(15, 'Porsche', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(16, 'Renault', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(17, 'Daewoo', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(18, 'Volkswagen', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(19, 'Suzuki', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(20, 'Luxgen', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(22, 'UAZ', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(23, 'Zotye', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(24, 'Isuzu', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(25, 'Peugeot', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(26, 'SsangYong', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(27, 'Baic', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(29, 'Vinfast', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(30, 'Fiat', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(31, 'Haima', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(32, 'Subaru', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(33, 'Riich', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(34, 'Jaguar', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(35, 'Buick', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(37, 'Geely', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(39, 'Morris Garages', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(40, 'Dongfeng', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(41, 'Daihatsu', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(42, 'Tobe', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(43, 'Land Rover', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(44, 'Brilliance', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(45, 'Volvo', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(46, 'Kenbo', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(47, 'Samsung', '2024-02-07 02:53:46', '2024-02-07 02:53:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhxe`
--

CREATE TABLE `hinhxe` (
  `idhinhxe` int(10) UNSIGNED NOT NULL,
  `hinhxe` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33',
  `updated_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhxe`
--

INSERT INTO `hinhxe` (`idhinhxe`, `hinhxe`, `created_at`, `updated_at`) VALUES
(1, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2024/00/02/14/kusG3y-zdGaldnyXvosXqw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2024/00/02/14/azeBACq22kU0jlV1U5n4Gg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2024/00/02/14/NFR6SsgL5RTkjJU8GGVLSQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2024/00/02/14/Pwrp6KxRvGZ08k5rLA6wHw.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(2, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_veloz_cross_2022/p/g/2022/05/01/08/sHHCN5pVn0VFzTqfld6xKw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_veloz_cross_2022/p/g/2022/05/01/08/mv5AEM_MMCSSwhk_QfdBAw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_veloz_cross_2022/p/g/2022/05/01/08/xYdfm78JKxLjhMoyJE0mfw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_veloz_cross_2022/p/g/2022/05/01/08/7zPe_hHomjRYLaeCiEy60Q.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(3, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2022/01/10/08/GnSe5I7fxDjknlQwLa1q5A.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2022/01/22/11/VtYgkEKdL6fLj-cWdf7P7Q.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2022/01/22/12/Qmmo4B_hpEAAhHiUUbSctw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2022/01/10/08/kWj-GgCY2tnKK1j8OyhZ1w.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(4, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2022/p/g/2023/02/07/22/BdqrR-YDOvH0ktmysw9SxQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2022/p/g/2023/02/07/22/az8osvQQhKMVihKID2sJUw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2022/p/g/2023/04/20/07/u_OHOuUfhHHFzubLt-VfBQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2022/p/g/2023/02/07/22/rKEPHvm7so2jZChjwRA4wA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(5, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/bmw_320i__2013/p/g/2023/02/24/16/FNoU4l7040O_BAPVzBAPEw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/bmw_320i__2013/p/g/2023/02/24/16/O-m7yef1dmvsYgorG3dpmA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/bmw_320i__2013/p/g/2023/02/24/16/IZK1xCtN5AvagRSuaq64kg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/bmw_320i__2013/p/g/2023/02/24/16/4bBclsR0qNgp3ZoQRbmUBg.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(6, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_2018/p/g/2021/07/15/20/L0lu_Vrtl_Os_Xq1IHdzsQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_2018/p/g/2021/03/22/15/sA7kHit4EBr6-7M2VlAoqg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_2018/p/g/2021/03/22/15/kzJN8lewcFLkj0UiIEbwNQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_2018/p/g/2021/03/22/15/A22oCm6cGOdqb6K8EoC4ew.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(9, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_k3_premium_2022/p/g/2022/11/28/09/GNdSjrWKqin5dR0FfTnARQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_k3_premium_2022/p/g/2022/11/22/09/GatIWBFNF9E4cqkyUajJdg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_k3_premium_2022/p/g/2022/11/22/09/gAvoiZ_ICLB0h_0h5kMWmg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_k3_premium_2022/p/g/2022/11/28/09/kdIK2xohPahZj1Zxz02G0A.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(10, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mercedes_c250_2013/p/g/2021/03/05/12/2W7y65F6yH7Es_7g1xH0iQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mercedes_c250_2013/p/g/2021/03/05/12/GMZV0yUlKOLzrAYQQZx1xw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mercedes_c250_2013/p/g/2021/03/05/12/hR0udFBS8EZlM_HkK-Hu2Q.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mercedes_c250_2013/p/g/2021/03/05/12/gILrNOI9Xl-2WzfMGZZwzQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(11, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2023/03/14/13/iMTUoVD7PlFz6B3u1hdOSA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2023/03/14/13/2sYPjcL1XjuoqrSnWPTDwA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2023/03/14/13/VjTuBnMPrGSayrC2RXgr6w.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2023/03/14/13/Lgh3FQ1J0H8t9YvwhtgZAg.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(12, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_carnival_premium_2021/p/g/2022/09/28/17/tOBkEC4s1wdT4TdiBGi2uw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_carnival_premium_2021/p/g/2022/09/28/17/OgMDDgMgFYI_H6JY78LPQA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_carnival_premium_2021/p/g/2022/09/28/17/bqTQK1oRWR3F77joCW9gnA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_carnival_premium_2021/p/g/2022/09/28/17/Ffhs2oTUk65aEUUhD65_6A.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(14, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2024/00/22/20/YYf1K_289A0pOfbUe-TJyw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2024/00/22/20/y5L_JLg9644RsqP_Y9cqUA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2024/00/22/20/kggzq0gZTPzk7ObCMlYpPw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2021/p/g/2024/00/22/20/j5EV6xola3NSKRfSTJ9tSg.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(16, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_creta_2023/p/g/2023/01/17/10/i37vRVsDmq-Yb9lI9exX-w.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_creta_2023/p/g/2023/01/16/18/J3yJOu_eK5DNnKCIA6s38Q.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_creta_2023/p/g/2023/01/16/18/HPXNiYNqB9QH42Mt9bZTcw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_creta_2023/p/g/2023/01/17/10/IXI0sR4TY0mmfeYMKBFyZA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(17, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_carens_2023/p/g/2023/04/21/09/c53b-I_wleEpm_VmnW6Acw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_carens_2023/p/g/2023/04/21/09/5RUHtlUrBWcuOBzMiCcUFw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_carens_2023/p/g/2023/04/21/09/2z68LvL92ko6VfN0UVlG4w.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_carens_2023/p/g/2023/04/21/09/Od4DLSkPq7k1UbpoZ7j2jA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(18, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/land_rover_range_rover_evoque_2.0_s_r-dynamic_s_2012/p/g/2023/06/25/11/gopMQobykpA8ddOhouTczQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/land_rover_range_rover_evoque_2.0_s_r-dynamic_s_2012/p/g/2023/06/25/11/AqFIOKh1bxxEG6P6zoW98g.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/land_rover_range_rover_evoque_2.0_s_r-dynamic_s_2012/p/g/2023/06/25/11/hss9PO3ITG4kpPi6Vr51hA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/land_rover_range_rover_evoque_2.0_s_r-dynamic_s_2012/p/g/2023/06/25/11/mQlRHoU18VozwzObJpLEcQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(19, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_outlander_2021/p/g/2023/05/02/08/bOnKxCshei5-HCp6HRFGGQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_outlander_2021/p/g/2023/05/02/08/tyM46esaEP1OdkFzhQD_uQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_outlander_2021/p/g/2023/05/02/08/tusmEWLvpWNRM86buINnOg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_outlander_2021/p/g/2023/05/02/08/FBFubzYLK-ooK5h9QqcL9g.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(20, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_vf_e34_2023/p/g/2023/04/26/22/8Cp1LY_OUMRBJDGwSpgbEg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_vf_e34_2023/p/g/2023/04/26/22/7dh_IMuTWj4CF4CuNYaU2Q.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_vf_e34_2023/p/g/2023/04/26/22/7ngmMoTtw69AyGxh18hYhQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_vf_e34_2023/p/g/2023/04/26/22/U8IFAZvtsdX1WxNgLRmlLg.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(21, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_seltos_premium_2021/p/g/2023/05/28/12/943cjQWBiIqwmbrmCGTqbg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_seltos_premium_2021/p/g/2023/05/28/12/PeDAJkCsTMjI8U3pAxsZhw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_seltos_premium_2021/p/g/2023/05/28/12/NYQHMQ8wmE72H32WoMyb6g.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_seltos_premium_2021/p/g/2023/05/28/12/_xEHrdOBm_Xr7823SRHovg.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(22, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_civic_g_2021/p/g/2021/04/04/09/Jug09nP6UvnVLWgg6T5QOQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_civic_g_2021/p/g/2021/04/04/09/J2BGS2YWdTC3A0fMsdnCvA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_civic_g_2021/p/g/2021/04/04/09/1XTJqvIJoO7IxnphSZOqDA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_civic_g_2021/p/g/2021/04/04/09/u50vHg--90n39DgA7H_Ztg.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(23, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_lux_a_2021/p/g/2022/05/14/10/3lj92ED2_VD_ImozwlrOSw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_lux_a_2021/p/g/2022/05/14/10/ys1X49Ddpl2V0vvUI1k1LA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_lux_a_2021/p/g/2022/05/14/10/4NUqDtDiLvKQVkQ5gWSPLA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_lux_a_2021/p/g/2022/05/14/10/rU68JDxKhSmXQNG_gND1Eg.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(25, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2023/p/g/2023/05/19/11/JAobTGUcLcEYsAnEEiVaHg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2023/p/g/2023/05/28/14/IQXVO9EnZ94jArCRvoDsVw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2023/p/g/2023/05/28/14/HwgjfZk3ydRgi9pSxBmmow.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2023/p/g/2023/05/19/13/ZVXnpEX3XBCAX8M5UIeosg.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(26, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sedona_deluxe_2021/p/g/2021/04/03/14/iQSfe3kudl8Hm3OtNeF9GA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sedona_deluxe_2021/p/g/2021/04/03/14/iYSURmgNiwBI1OvRpDN6ig.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sedona_deluxe_2021/p/g/2021/04/03/14/t7-Q_bzIPiY12H1bbqcbfw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sedona_deluxe_2021/p/g/2021/04/03/14/ojElCEaKEsgKUoMW8fk0QQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(27, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_lux_sa__2021/p/g/2022/07/30/18/VvAmSHA0Un1pD-P8M4It1A.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_lux_sa__2021/p/g/2022/07/30/18/2qm_7xofJRFxokrIpjuA-A.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_lux_sa__2021/p/g/2022/07/30/18/asKwzVcNNEn8dsYrNLk--Q.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_lux_sa__2021/p/g/2022/07/30/18/fie9zC3kdpTzU9GCh4v6tQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(28, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2022/p/g/2023/11/07/15/sytuvekdFL2QNKiCczbgNA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2022/p/g/2023/11/07/15/JmRhs7qX4aq7qPBs8bIs2g.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2022/p/g/2023/11/07/15/XlgAYEdrWAxUBq0jcSBQ0g.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2022/p/g/2023/11/07/15/Ly1JiTGvF8NvkOJYdlAYCQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(29, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_civic_g_2020/p/g/2022/04/18/09/wDXYGC-q-ARUxp430W4Kvg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_civic_g_2020/p/g/2022/04/18/09/ArnpEwcrj2RuU6qqj6qz0A.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_civic_g_2020/p/g/2022/04/18/09/MbGl53Eg80bLwyNDONrgRw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_civic_g_2020/p/g/2022/04/18/09/zIggcic6S_fkUkAaihbr7A.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(30, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_pajero_sport_2017/p/g/2023/04/30/11/Q3hKd--rx1lPvHeyWoaeTQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_pajero_sport_2017/p/g/2020/10/22/14/yzdgO-CV9QRS7CR4gvvoUw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_pajero_sport_2017/p/g/2023/10/19/19/yk-iVQdcEEQuldUh2TfhKQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_pajero_sport_2017/p/g/2023/04/30/11/t7PhGKYvGOgjxZE6nJH2nA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(31, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/chevrolet_vivant_2011/p/g/2023/03/20/12/-HldaFSy1z3CasWSFD7nuA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/chevrolet_vivant_2011/p/g/2023/03/20/12/VRSt60wcrM_J7aSLJB4N1Q.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/chevrolet_vivant_2011/p/g/2023/03/20/12/DDDqhwdzqIXjlkQvrJfwgg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/chevrolet_vivant_2011/p/g/2023/03/20/12/oP4-O9be5xNfZUsn5_RTpg.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(33, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sonet_premium_2022/p/g/2024/00/19/10/F2YWZwp-j4rdnBx46idsKw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sonet_premium_2022/p/g/2024/00/19/10/c-poCseQ0224QpcDAt36NA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sonet_premium_2022/p/g/2024/00/19/10/DY3qU6Ln_e2PsEd68m39jg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sonet_premium_2022/p/g/2024/00/19/10/e5nR33noA24N7oUf7vgmsw.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(34, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_ranger_xls_4x2_2018/p/g/2023/01/13/14/d4q9Gk3pc_qIyzZm38mO1Q.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_ranger_xls_4x2_2018/p/g/2023/01/13/14/ygrwQxJjA5B5h2C-N8k35g.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_ranger_xls_4x2_2018/p/g/2023/01/13/14/zuuLbDGS1WBnnVTOrUfJXw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_ranger_xls_4x2_2018/p/g/2023/01/13/14/mQBmqT2tZI0eCBMS0AmFdw.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(37, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_santafe_2013/p/g/2021/01/18/14/mPJmnBMEenTMwmirbEdiFw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_santafe_2013/p/g/2021/01/18/14/RHBEJ-XRDiGVDUd351INCg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_santafe_2013/p/g/2021/01/18/11/ABbhMucPC8nR8Ws58eYvDA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_santafe_2013/p/g/2021/01/18/14/m17mjwDPZoJz_lD6Ko2heA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(38, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_vios_2019/p/g/2024/00/14/11/mM_4y5hzpIr0F08-BRBcyA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_vios_2019/p/g/2024/00/14/11/nmEcInt2es-8MqSbK8-JCQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_vios_2019/p/g/2024/00/14/11/v7gueiS1sEPYYMZDGyJvcQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_vios_2019/p/g/2024/00/14/11/ZzcOSGsmCm7WI_JYvFM-4g.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(39, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mazda_cx30_luxury_2022/p/g/2023/06/17/21/pSnlO0oGbEldGh5QrhOD7g.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mazda_cx30_luxury_2022/p/g/2023/06/17/21/UuX-BCvXMdGc5Y_o3EDcoA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mazda_cx30_luxury_2022/p/g/2023/06/17/21/aMm6_hHnRQZ2RqImUKZMag.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mazda_cx30_luxury_2022/p/g/2023/06/17/21/ZPZJcObC9oVdXyOhbgkWBQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(40, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_accent_2021/p/g/2022/10/06/22/BARWcHFQ0pG4r-Lq_OouTA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_accent_2021/p/g/2022/10/06/22/0fxWxRm4wJXCL6CnySV6aA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_accent_2021/p/g/2022/10/06/22/RbWIrNnjb14vk4MCp2ru-w.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_accent_2021/p/g/2022/10/06/22/bzsADaK6ykbunyY5xdIVCA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(41, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/subaru_forester_2.0i-s_eyesight_2021/p/g/2023/11/25/13/rDvjS95AoS3biFfCjnySuw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/subaru_forester_2.0i-s_eyesight_2021/p/g/2023/11/25/13/xFblreOqIhnxkYsrXnWNWQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/subaru_forester_2.0i-s_eyesight_2021/p/g/2023/11/25/13/epPqeLy3I0q8SaJhIKvubw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/subaru_forester_2.0i-s_eyesight_2021/p/g/2023/11/25/13/4qyiU44MFb-mpB-xVJF1SQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(42, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_vf8_plus_2023/p/g/2023/05/23/03/CpVWg5-rHPIoL_WWX4Gfpw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_vf8_plus_2023/p/g/2023/05/23/03/ret5yfZzFsAXM9w7NIbglg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_vf8_plus_2023/p/g/2023/05/23/03/ZZa_Mm4ChHWAiKsThQB8HA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/vinfast_vf8_plus_2023/p/g/2023/05/23/03/ZTudgOzQCB7dU6_vKKD1kw.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(43, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_crv_g_2021/p/g/2023/07/23/20/UicL9R81maS477XRfQy6nA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_crv_g_2021/p/g/2023/07/23/20/WzLQvCIhgNQzmpnYII6NIA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_crv_g_2021/p/g/2023/07/23/20/HoMIYtGYSJzRevPNcNQHuQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/honda_crv_g_2021/p/g/2023/07/23/20/TJu_1GD-h6l6q9zVzGJlTA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(44, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2020/p/g/2023/02/09/09/dogCXIe2AYkZiuVzq1jWNQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2020/p/g/2023/02/09/09/igk-Zrd_zer-jM46ESIedw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2020/p/g/2023/02/09/09/oUC-2Q-adVAdIIYdkX5g1A.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2020/p/g/2023/02/09/09/9OFvx1gBbP0qmE-KKQAS2g.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(45, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_accent_2019/p/g/2021/09/18/10/uaT4L4-iHg50uap-yZv1zQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_accent_2019/p/g/2021/09/18/10/LIzLdgCJb7sDLhYS43aIZw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_accent_2019/p/g/2021/09/18/10/xOVSHbPnf1q3D_cn8hE3fQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/hyundai_accent_2019/p/g/2021/09/18/10/2VxPNP0qP5bSRQkSR5ehOA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(47, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_vios_2015/p/g/2024/00/26/16/nG3eGWmiN_UzEbT3-wBcyQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_vios_2015/p/g/2024/00/26/16/nJDYaE34VP_f7mGuuaVX2A.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_vios_2015/p/g/2024/00/26/16/H5zgCUOv1OCcbJZSP-PtmQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_vios_2015/p/g/2024/00/26/16/AXUCO69fp-EgbQNp6KDcrQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(49, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2019/10/11/00/JboPCEEobnoUZ3ubIP86tA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2019/10/11/14/Ti6tcEINbD2OjDzSwoQBDg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2020/06/15/23/PTRl-nHYfk0gf3ulODEryA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2020/06/15/23/bVHJZe12p8PVAmnw-uWCyg.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(50, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/nissan_x_trail_2018/p/g/2022/09/27/21/0BQu-lg5OoLrnqkq8d9AiA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/nissan_x_trail_2018/p/g/2022/09/27/21/NFFpUq-MfFH0nNcMPp9qsA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/nissan_x_trail_2018/p/g/2022/09/27/21/PFKDRkZz0nBEfFhyJp78TQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/nissan_x_trail_2018/p/g/2022/09/27/21/zoKpXkvQsQouQyH3Ga2ekQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(51, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sonet_premium_2022/p/g/2023/01/17/12/5_C2bmuJqCyu3JQVHcC3iA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sonet_premium_2022/p/g/2023/05/16/09/Gy08U-Q5heHHGUy80Wt4_g.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sonet_premium_2022/p/g/2023/05/16/09/yle9NHKEETpXKOHPxt7uiQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/kia_sonet_premium_2022/p/g/2023/05/16/09/qfUBgHportVAf0MtKegJIA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(52, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2023/p/g/2023/04/03/13/7v-OMy4Cb7Tw_H6dK55grA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2023/p/g/2023/04/03/13/7v-OMy4Cb7Tw_H6dK55grA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(53, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/nissan_almera_vl_2022/p/g/2023/07/31/10/rPwzUyKlBakbx-Vqa6D0GA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/nissan_almera_vl_2022/p/g/2023/07/31/10/oW3qiSXbAM0vwvdqoY7W-g.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/nissan_almera_vl_2022/p/g/2023/07/31/10/yHof_-ZuRCJaEon8c5RVRg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/nissan_almera_vl_2022/p/g/2023/07/31/10/jEO-CRiyR_5PCqi8uH8kVQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(54, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2024/00/25/21/prT7x4iy8-vlrQzyumo4jQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2024/00/25/21/xsRCoINsx9WV2Mk5wti_pA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2024/00/25/21/ql3i69xmecQzSzZsGHKmjQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_xpander_2019/p/g/2024/00/25/21/lcU9Jw7_NMqQZd1lIb47mw.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(55, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/suzuki_ertiga_2018/p/g/2023/05/06/16/_c8eHiBFsJskQErYZm3JXg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/suzuki_ertiga_2018/p/g/2023/05/06/17/UkUTlLDyfdrjg6lB5Hn92g.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/suzuki_ertiga_2018/p/g/2023/05/06/17/FYhia48WEYDaiODzemjo8g.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/suzuki_ertiga_2018/p/g/2023/05/06/17/oTwZRwu23Ywvg0rz0rGoww.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(56, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mazda_3_luxury_2023/p/g/2023/11/22/19/C2PugZYEvfeVFgloLntBfQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mazda_3_luxury_2023/p/g/2023/11/22/19/8WuDgyC7BF652qPZKLl9Yg.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mazda_3_luxury_2023/p/g/2023/11/22/19/DYUCOKr8spQJbx2U0JTl4Q.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mazda_3_luxury_2023/p/g/2023/11/22/19/9SDKtXB9RA3IskMkvMEyOw.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(57, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_pajero_sport_2021/p/g/2024/00/27/21/6Fn6ayP8psINipGpi5h_mQ.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_pajero_sport_2021/p/g/2024/00/27/21/JKYCuPE1YRT5bD7tWVFyhw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_pajero_sport_2021/p/g/2024/00/27/21/TRKDf-ZbZSPGF0nDwrn0uA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/mitsubishi_pajero_sport_2021/p/g/2024/00/27/21/TRKDf-ZbZSPGF0nDwrn0uA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(58, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/suzuki_ertiga_2020/p/g/2024/00/24/11/VBduqZti7cFrFFTiYiFwOw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/suzuki_ertiga_2020/p/g/2024/00/24/11/ZMpl8JNaMUyKUwpVTdAsbA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/suzuki_ertiga_2020/p/g/2024/00/24/11/AfR0gpYNEiR_2lMqYaQdjw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/suzuki_ertiga_2020/p/g/2024/00/24/11/8t0Q1x9T3PLXpwqxlrIfbw.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(59, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_ranger_wildtrak_4x4_2019/p/g/2024/00/27/22/0xs8cOQcrqwDjGkIZDdrtA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_ranger_wildtrak_4x4_2019/p/g/2024/00/27/22/eBBmOUqXhhrfpJBqr4OT8A.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_ranger_wildtrak_4x4_2019/p/g/2024/00/27/22/MjH_o9QsosV8suRzvBf4_w.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_ranger_wildtrak_4x4_2019/p/g/2024/00/27/22/ZUN2E52BZKgORYf-4kRfEA.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46'),
(60, '[\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_focus_2018/p/g/2021/01/27/06/1R__bh_KT7inu_e_cwavbw.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_focus_2018/p/g/2021/01/26/15/8pVIpYF3L0D8eC7UXLYeCA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_focus_2018/p/g/2021/02/17/11/ikXO0i6v82GrwUNY0vyfRA.jpg\",\"https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/ford_focus_2018/p/g/2021/02/17/11/vyQqgYyil5agl-vpHdZbvQ.jpg\"]', '2024-02-07 02:53:46', '2024-02-07 02:53:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `idhoadon` int(10) UNSIGNED NOT NULL,
  `idgiaodich` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `idxe` int(10) UNSIGNED NOT NULL,
  `ngaythanhtoan` date DEFAULT NULL,
  `phidv` varchar(255) DEFAULT NULL,
  `tongtien` varchar(255) NOT NULL,
  `tinhtranghoadon` tinyint(1) DEFAULT 0,
  `ngaynhanxe` date NOT NULL,
  `ngaytraxe` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:34' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medially_type` varchar(255) NOT NULL,
  `medially_id` bigint(20) UNSIGNED NOT NULL,
  `file_url` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2020_06_14_000001_create_media_table', 1),
(14, '2024_02_07_070750_create_role_table', 1),
(15, '2024_02_07_070811_create_users_table', 1),
(16, '2024_02_07_071612_create_hangxe_table', 1),
(17, '2024_02_07_071619_create_dongxe_table', 1),
(18, '2024_02_07_071644_create_hinhxe_table', 1),
(19, '2024_02_07_071659_create_xe_table', 1),
(20, '2024_02_07_071816_create_danhgia_table', 1),
(21, '2024_02_07_071820_create_giaodich_table', 1),
(22, '2024_02_07_071829_create_hoadon_table', 1),
(25, '2025_03_05_150522_create_password_reset_tokens_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('nguynnguyn200110@gmail.com', '$2y$12$S.sqQ.UuRwUM7LKUuDhQ.uczJAKyrspPfXPvgoCPdIgvode0Il6Vi', '2025-03-05 08:39:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `idrole` int(10) UNSIGNED NOT NULL,
  `namerole` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33',
  `updated_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`idrole`, `namerole`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-02-07 02:53:46', '2024-02-20 10:03:44'),
(2, 'user', '2024-02-07 02:53:46', '2024-02-07 02:53:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `iduser` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `diachi` longtext DEFAULT NULL,
  `cccd` varchar(12) NOT NULL,
  `ngaysinh` date NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `idrole` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33',
  `updated_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`iduser`, `hoten`, `email`, `email_verified_at`, `password`, `sdt`, `diachi`, `cccd`, `ngaysinh`, `google_id`, `idrole`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$sp0RJoWWCDBz7QhgBcUC.eq4KzBOKN.dN78DX6iyxoMLcY43hkKx6', '0902284735', '18A/1 Cộng Hòa, Phường 4, Quận Tân Bình, TP.HCM, Việt Nam.', '123456789011', '2024-02-20', NULL, 1, '2024-02-20 02:51:55', '2024-03-29 01:31:23'),
(2, 'Demo', 'khach5@gmail.com', NULL, '$2y$12$KigIK0jTTEeO1uk3r0uKr.TnosaYVsavDAr9ZJ9xLoMZgw62YOtpa', '0972887662', 'HCM', '092827762772', '2004-03-29', NULL, 2, '2024-03-31 08:11:27', '2024-03-31 08:11:27'),
(3, 'Nguyen Nguyen', 'nguynnguyn200110@gmail.com', NULL, '$2y$12$/fXXPJ4Q8SRSp6H3OpdTzOtaAwKQG3vfCof04D3jpNSy84sA0LAVm', '0254844526', 'Thành phố Hồ Chí Minh', '0258884585', '1900-01-01', '110126619025380580702', 2, '2024-12-15 00:45:01', '2024-12-15 00:45:46'),
(4, 'Ti Ti', 'titi@gmail.com', NULL, '$2y$12$lWrYtr51lygoxjKoTDXKJu6ePNBmzhnghMp.Aq84y/Hx5Wee3SQLC', '098726261', 'Ho Chi Minh', '018292817261', '2004-01-05', NULL, 2, '2025-03-05 07:40:12', '2025-03-05 07:40:12'),
(5, 'Ti Ti', 'titinguyen@gmail.com', NULL, '$2y$12$qkfG.ZLatI5CBopejbpezOLyocHfL08CGUnvvhwwd1sBkDeGwGpEC', '098726261', 'Ho Chi Minh', '012345678900', '2004-01-05', NULL, 2, '2025-03-05 07:43:14', '2025-03-05 07:43:14'),
(6, 'Triều', 'nthtrieu204@gmail.com', NULL, '$2y$12$RfRPBFTefLNuxFDUjrg/4u4p7fgznQSlm1U3UYO5hO1JGFY7O8H92', '0987654251', 'Ho Chi Minh', '019287627621', '2004-01-01', NULL, 2, '2025-03-05 08:41:41', '2025-03-05 08:43:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xe`
--

CREATE TABLE `xe` (
  `idxe` int(10) UNSIGNED NOT NULL,
  `tenxe` varchar(255) NOT NULL,
  `mieuta` text DEFAULT NULL,
  `gia` varchar(255) NOT NULL,
  `bienso` varchar(20) DEFAULT NULL,
  `truyendong` varchar(50) DEFAULT NULL,
  `nhienlieu` varchar(50) DEFAULT NULL,
  `nhienlieutieuhao_km` decimal(5,2) DEFAULT NULL,
  `tinhtrang` tinyint(1) DEFAULT 0,
  `iddongxe` int(10) UNSIGNED NOT NULL,
  `idhangxe` int(10) UNSIGNED NOT NULL,
  `idhinhxe` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33',
  `updated_at` timestamp NOT NULL DEFAULT '2024-03-19 23:44:33' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `xe`
--

INSERT INTO `xe` (`idxe`, `tenxe`, `mieuta`, `gia`, `bienso`, `truyendong`, `nhienlieu`, `nhienlieutieuhao_km`, `tinhtrang`, `iddongxe`, `idhangxe`, `idhinhxe`, `created_at`, `updated_at`) VALUES
(1, 'MITSUBISHI XPANDER 2021', '* Xe mình là xe gia đình nhưng ít sử dụng nên cho thuê, mình chăm sóc xe kỹ, nội thất còn nguyên bản.\\n\\n* Mitsubishi Xpander (AT) số tự động hiện là dòng xe thông dụng ở Việt Nam, đăng ký từ tháng 1/2022. Xe có 7 chỗ ngồi rộng rãi cùng với mức tiêu hao nhiên liệu tiết kiệm, do đó rất phù hợp với nhu cầu đi lại, du lịch của nhiều gia đình.\\n* Xe được trang bị nhiều tính năng an toàn và giải trí như: Camera hành trình có cảnh báo tốc độ, camera + cảm biến lùi, cảm biến áp suất lốp, lốp dự phòng, màn hình giải trí 7 inch hỗ trợ Apple Carplay và Android Auto, thu phí tự động ETC…\\n* Thời gian, địa điểm giao - nhận xe:\\n- Từ thứ 2 đến thứ 6:258 Nguyễn Trãi, phường Nguyễn Cư Trinh, Q1, TP.HCM (đối diện Đại học Sư Phạm)\\n- Thứ 7: Cạnh chung cư Sunview Town, đường Gò Dưa, phường Hiệp Bình Phước, TP Thủ Đức, TP.HCM (gần ngã 4 Bình Phước)', '1218000', '24N88301', 'Số tự động', 'Xăng', 7.00, 0, 2, 8, 1, '2024-02-07 02:53:46', '2024-03-31 01:47:40'),
(2, 'TOYOTA VELOZ CROSS 2022', 'TOYOTA VELOZ CROSS 2022\\r\\n', '2572000', '42W44979', 'Số tự động', 'Xăng', 0.00, 0, 2, 9, 2, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(3, 'MITSUBISHI XPANDER 2021', 'Xe mới đăng kí 2/2022. Mua kết hợp đi gia đình và cho thuê. Ưu tiên gia đình hàng đầu nên đảm bảo sạch sẽ, cho khách hàng có những chuyến du lịch thú vị  cùng người thân của mình.', '1126000', '49H27184', 'Số tự động', 'Xăng', 6.00, 0, 2, 8, 3, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(4, 'MITSUBISHI XPANDER 2022', 'Xe Expander Premium đời mới, đăng ký 8/2022\\r\\nXe 7 chỗ xáy xăng, số tự động, nội thất nguyên bản, trang bị thêm cảnh báo tốc độ Vietmap, giải trí Youtube… đầy đủ.\\r\\nXe gia đình đi sạch sẽ, vệ sinh bảo dưỡng thường xuyên, rửa xe miễn phí\\r\\nXe rộng rãi, an toàn, tiện nghi, phù hợp cho gia đình du lịch. \\r\\nXe trang bị hệ thống cảm biến lùi, gạt mưa tự động, đèn pha tự động, camera hành trình, hệ thống giải trí cùng nhiều tiện nghi khác...', '1894000', '41P65725', 'Số tự động', 'Xăng', 7.00, 0, 2, 8, 4, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(5, 'BMW 320i  2013', 'Bmw màu hồng porsche xinh đẹp', '1722000', '58V25108', 'Số tự động', 'Xăng', 0.00, 0, 5, 2, 5, '2024-02-07 02:53:46', '2024-03-31 01:50:14'),
(6, 'TOYOTA INNOVA 2018', 'TOYOTA INNOVA E 2018 Đẳng cấp doanh nhân nội thất siêu mới Đầy đủ tiện nghi giải trí cho chuyến đi chơi xa cùng gia đình và người thân', '2066000', '26X73690', 'Số sàn', 'Xăng', 0.00, 0, 2, 9, 6, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(9, 'KIA K3 PREMIUM 2022', 'Kia K3 bản cao cấp Premium 2022\\r\\n- Xe gia đình mới\\r\\n- Carplay Box GB8 giải trí trên xe\\r\\n- Sedan C, không gian rộng rãi\\r\\n- Std, đèn full led\\r\\n- Sạc ko dây\\r\\n- Thu phí ko dừng VETC\\r\\n- Cảm biến trước và sau\\r\\n- Cửa sổ trời hóng gió bao mát\\r\\n- Khởi động từ xa bằng chìa\\r\\n- Nhớ ghế lái, sưởi ấm hoặc làm mát ghế\\r\\n- Cảm biến áp suất lốp\\r\\n- Camera hành trình, định vị GPS\\r\\n- Thiết bị nhắc camera phạt nguội Vietmap, nhắc tốc độ, biển báo, trong ngoài khu dân cư tránh bị XXX làm phiền', '1814000', '22U78045', 'Số tự động', 'Xăng', 8.00, 0, 1, 5, 9, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(10, 'MERCEDES C250 2013', 'Xe bảo dưỡng thường xuyên đi cực kỳ yên tâm và tiết kiệm. Dán nhôm xước cực ngầu.\\r\\n\\r\\n- Lốp mới thay 2020. Acqui mới thay 2021. Dụng cụ cứu hộ, bảng phản quang, dây câu bình, bơm lốp, đèn dự phòng... đầy đủ.\\r\\n- Wireless carplay, âm thanh tuyệt vời. Có sẵn thẻ nhạc trẻ, bolero, paris by night...\\r\\n- Luôn vệ sinh sạch sẽ, thay lọc & khử khuẩn thường xuyên.\\r\\n- Lọc không khí, khử ion, ghế massage thông gió. \\r\\n\\r\\nBảo đảm bạn sẽ hoàn toàn hài lòng.', '2181000', '20J79636', 'Số tự động', 'Xăng', 7.00, 0, 5, 7, 10, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(11, 'MITSUBISHI XPANDER 2019', 'MITSUBISHI XPANDER 2019', '1343000', '47U63674', 'Số tự động', 'Xăng', 0.00, 0, 2, 8, 11, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(12, 'KIA CARNIVAL PREMIUM 2021', 'KIA CARNIVAL 2021', '5740000', '25K89129', 'Số tự động', 'Xăng', 10.00, 0, 2, 5, 12, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(14, 'MITSUBISHI XPANDER 2021', 'MITSUBISHI XPANDER 2021', '1768000', '77X21775', 'Số tự động', 'Xăng', 8.00, 0, 2, 8, 14, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(16, 'HYUNDAI CRETA 2023', 'Huynhdai Creta 5 chổ gầm cao, khoang xe rộng rãi thoải mái, biển số đẹp đăng ký 01/2023.\\r\\n\\r\\nXe gia đình sử dụng, số tự động, phanh tay điện tử, trang bị đầy đủ thiết bị Camera hành trình, Camera 360, bản đồ Vietmap cảnh báo tốc độ, cảm biến lùi,… Màn hình 10 inch gắn sim 4G xem phim, nghe nhạc youtube trên xe cả ngày,… Xe lót sàn 5D sạch sẽ, tinh dầu thơm mát…. Xe có dán VETC tiện lợi qua các trạm thu phí.\\r\\n\\r\\nXe được bảo dưỡng thường xuyên, đảm bảo chuyến đi dài của bạn luôn thoải mái nhất ❤️', '1722000', '34B74477', 'Số tự động', 'Xăng', 0.00, 0, 5, 11, 16, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(17, 'KIA CARENS 2023', 'KIA CAREN 2023 số tự động đăng ký tháng 04/2023. xe gia đình mới đẹp rộng rãi an toàn tiện nghi phù hợp cho gia đình đi du lịch. Xe trang bị camera 360 và ứng dụng dẫn đường thông minh việt map giúp khách hàng dễ dàng định vị và tìm đường đi chính xác.', '1894000', '54O34836', 'Số tự động', 'Xăng', 0.00, 0, 2, 5, 17, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(18, 'LAND 2.0 DYNAMIC 2012', 'TRANG BỊ NGOẠI THẤT\\r\r\\n\\r\r\\nĐèn pha LED\\r\r\\nGương điện gập tự động có chức năng sưởi ấm, chống chói tự động với đèn tiếp cận\\r\r\\nMÂM VÀ LỐP\\r\r\\n\\r\r\\nMâm 18\\\" Style 5075,5 chấu kép màu bạc Gloss Sparkle Silver\\r\r\\nTRANG BỊ NỘI THẤT\\r\r\\n\\r\r\\nVô lăng bọc da\\r\r\\nĐiều hòa hai vùng độc lập\\r\r\\nGHẾ VÀ CÁC CHI TIẾT ỐP NỘI THẤT\\r\r\\n\\r\r\\nGhế trước chỉnh điện 10 hướng có nhớ vị trí\\r\r\\nCác ghế bọc da sần màu đen Ebony\\r\r\\nTHÔNG TIN GIẢI TRÍ\\r\r\\n\\r\r\\nHệ thống Định vị Pro\\r\r\\nGói dịch vụ Pro Services và Điểm phát Wi-Fi\\r\r\\nTIỆN NGHI\\r\r\\n\\r\r\\nCamera lùi\\r\r\\nHệ thống Nhận diện Biển báo giao thông và Giới hạn tốc độ thích ứng\\r\r\\n2 tivi cho hàng ghế sau', '4018000', '41F97152', 'Số tự động', 'Xăng', 10.00, 0, 5, 43, 18, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(19, 'MITSUBISHI OUTLANDER 2021', 'Mitsubishi Outlander 2.0 số tự động đăng ký 12/2021\\r\\nXe gia đình mới đẹp, sạch sẽ, bảo dưỡng chính hãng\\r\\nXe trang bị cảm biến lùi, gạt mưa tự động, đèn pha tự động, bánh dự phòng...\\r\\nXe đã được nâng cấp màn hình Android 10inch, camera 360, cốp sau điện, đề nổ từ xa, cảm biến áp suất lốp', '1642000', '26P42948', 'Số tự động', 'Xăng', 7.00, 0, 2, 8, 19, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(20, 'VINFAST VF E34 2023', 'Ô TÔ ĐIỆN VINFAST VF e34\\r\\n\\r\\nVinFast VF e34 là dòng xe ô tô điện thuộc phân khúc hạng C SUV/crossover. \\r\\nXe có kích thước tổng thể (dài x rộng x cao): 4300x1793x1613mm. \\r\\nChiều dài cơ sở: 2610,8mm, khoảng sáng gầm 180mm. \\r\\nXe sử dụng động cơ điện, công suất tối đa 110kW và mô-men xoắn cực đại 242 Nm. Hệ thống dẫn động cầu trước. Pin lithium-ion với dung lượng 42kWh, với chế độ sạc thường xe sạc đầy pin trong khoảng 8h. \\r\\nQuãng đường xe di chuyển được mỗi lần sạc đầy là 318.6 km (Cập nhật 2023). Bên cạnh đó, VinFast cũng cung cấp giải pháp sạc nhanh cho phép xe đi được 180km chỉ sau 18 phút sạc.\\r\\n\\r\\nVF e34 Là mẫu xe ô tô điện thông minh đầu tiên tại Việt Nam được trang bị hàng loạt tính năng thông minh như: Ứng dụng trí tuệ nhân tạo AI, tương tác bằng tiếng việt theo ngôn ngữ tự nhiên đa vùng miền, Hệ thống hỗ trợ người lái thông minh, Điều khiển và tương tác với xe trên ứng dụng thông minh, cập nhật phần mềm từ xa…..', '1378000', '50T25331', 'Số tự động', 'Điện', 285.00, 0, 5, 29, 20, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(21, 'KIA SELTOS PREMIUM 2021', 'Xe Kia Seltos số tự động, mày trắng, đăng ký tháng 2/2021\\r\\nXe gia đình, Nữ chạy kỹ mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên định kỳ tại hãng\\r\\nXe rộng rãi, an toàn, tiết kiệm nhiên liệu phù hợp cho gia đình du lịch cuối tuần\\r\\nXe trang bị optine: Camera 360, camera hành trình, cảm biến áp suất lốp, mà hình chính nghe nhạc, trải sàn 5D…..', '1722000', '67Y11982', 'Số tự động', 'Xăng', 5.00, 0, 5, 5, 21, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(22, 'HONDA CIVIC G 2021', 'HONDA CIVIC 2021', '1986000', '35O18511', 'Số tự động', 'Xăng', 0.00, 0, 1, 10, 22, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(23, 'VINFAST LUX A 2021', 'Đăng ký 2021', '2239000', '22Q76547', 'Số tự động', 'Xăng', 0.00, 0, 1, 29, 23, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(25, 'MITSUBISHI XPANDER 2023', 'MITSUBISHI XPANDER CROSS 2023\\r\\n', '1722000', '24O68705', 'Số tự động', 'Xăng', 0.00, 0, 2, 8, 25, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(26, 'KIA SEDONA DELUXE 2021', 'Sedona Luxury đăng ký 5/2021', '2583000', '52L67308', 'Số tự động', 'Dầu diesel', 0.00, 0, 2, 5, 26, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(27, 'VINFAST LUX SA  2021', 'Xe Vinfast Lux SA 2.0 đời 2021, sử dụng gia đình và thường xuyên chăm sóc bảo dưỡng. Đông cơ mạnh và khung gầm tốt, vừa mang lại cảm giác lái tuyệt vời, vừa êm ái rộng rãi cho những người thân trong chuyến đi. \\r\\nXe có trang bị thêm android box bổ sung các tính năng giải trí khai thác màn hình lớn của vinfast, cũng như kèm thêm các tính năng chỉ đường, cảnh báo tốc độ v.v...\\r\\nNgoài ra, nếu khách thuê có nhu cầu, có thể cho mượn ghế trẻ em miễn phí, là ghế thực tế em bé trong nhà đang sử dụng nên đảm bảo về độ tốt cũng như an toàn cho bé.', '2330000', '68F97981', 'Số tự động', 'Xăng', 12.00, 0, 2, 29, 27, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(28, 'MITSUBISHI XPANDER 2022', 'Xe 7 chổ Xpander Premium gia đình đời mới đẹp, sạch thơm, rửa xe miễn phí cho khách, giao nhanh', '1722000', '29H49856', 'Số tự động', 'Xăng', 7.00, 0, 2, 8, 28, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(29, 'HONDA CIVIC G 2020', 'Honda civic 2020 xe gia đình ít đi . Đẹp sạch sẻ .', '2018000', '42F62409', 'Số tự động', 'Xăng', 0.00, 0, 1, 10, 29, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(30, 'MITSUBISHI PAJERO SPORT 2017', 'xe máy dầu turbo 2.5l mạnh mẽ đầm chắc êm ái đặc biệt tiết kiệm nhiên liệu 7l/100km đường trường xe gầm cao đi địa hình đèo dốc ngon lành.Xe rộng rãi,cửa gió điều hoà cho từng hàng ghế không lo nóng.xe trang bị đầy đủ tiện nghi như camera de camera hành trình,gối tựa đầu,dvd có vietmap bản quyền cảnh báo tốc độ dẫn hướng.Không gian rộng rãi thoải mái cho những chuyến đi xa.xe mình chăm sóc bảo dưỡng tại hãng và dọn dẹp sạch sẽ khi giao xe cho khách yên tâm di chuyển trên mọi hành trình', '1103000', '58O11915', 'Số sàn', 'Dầu diesel', 7.00, 0, 2, 8, 30, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(31, 'CHEVROLET VIVANT 2011', 'Chevrolet Vivant CDX AT 2011 số tự động là bản cao cấp nhất với đầy đủ tính năng màn hình android, vietmap bản quyền cảnh báo tốc độ, camera phạt nguội, cảm biến áp suất lốp, giải trí youtube, camera lùi & hành trình, rèm che nắng nam châm, lốp dự phòng, máy hút bụi, bơm hơi,...\\r\\n\\r\\nXe gia đình mới đẹp, nội thất da xịn êm, bảo dưỡng định kỳ, máy mạnh 2.0, tiết kiệm xăng 7L/100k, luôn vệ sinh sạch sẽ trước khi giao xe.\\r\\n\\r\\nXe rộng rãi, an toàn, tiện nghi, cực kỳ phù hợp cho gia đình đi du lịch.\\r\\n\\r\\nĐẶC BIỆT: nếu đi 5 người có thể gỡ 2 ghế cuối để cốp rộng rãi tha hồ chở hành lý và hàng ghế giữa dạng limousine có thể ngã thẳng để thành giường ngủ thoải mái trong chặng đường dài.\\r\\n\\r\\nChủ xe vui vẻ, thân thiện, nhiệt tình phục vụ đối tác.', '1057000', '46M21355', 'Số tự động', 'Xăng', 8.00, 0, 2, 3, 31, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(33, 'KIA SONET PREMIUM 2022', 'Xe Kia Sonet bản Premium đăng ký lần đầu 10/2022, xe cá nhân ít chạy, nội thất đẹp sạch, chăm sóc thường xuyên. Full lịch sử bảo hành hãng.\\r\\nXe có cam hành trình, kết nối wifi hoặc 4G xem youtube hay xem phim, cảm biến trước sau,cảnh báo tốc độ, cam lùi, cửa sổ trời.\\r\\nXe chạy êm ít tiêu hao nhiên liệu, dễ sử dụng, dán full cách nhiệt 3M Crystal', '1498000', '37U53148', 'Số tự động', 'Xăng', 5.00, 0, 5, 5, 33, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(34, 'FORD RANGER XLS 4x2 2018', 'Xe bán tải Ford Ranger màu đỏ5 chỗ ngồi rộng rãi, phần nắp cốp cao hơn để có khoang chứa đồ rộng rãi\\r\\nXe số tự động, bảo dưỡng thường xuyên, vận hành trơn tru', '1366000', '76U64925', 'Số tự động', 'Dầu diesel', 1.00, 0, 5, 4, 34, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(37, 'HYUNDAI SANTAFE 2013', 'HYUNDAI SANTA FE\\r\\nXe màu xám bạc, số tự động, máy xăng, trang bị đủđồ chơi thuận tiện cho việc lái xe an toàn.\\r\\nMiễn phí vệ sinh xe khi thuê 03 ngày trở lên.', '1642000', '29G63136', 'Số tự động', 'Xăng', 0.00, 0, 2, 11, 37, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(38, 'TOYOTA VIOS 2019', 'Toyota Vios  sản xuất tháng 10/2019, có camera hành trình', '1378000', '54A64544', 'Số tự động', 'Xăng', 0.00, 0, 5, 9, 38, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(39, 'MAZDA CX30 LUXURY 2022', 'Xe gia đình, mới đẹp, trải nghiệm tuyệt vời', '1894000', '45E55242', 'Số tự động', 'Xăng', 7.00, 0, 5, 6, 39, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(40, 'HYUNDAI ACCENT 2021', 'Xe Hundai accent  số sàn, Sản xuất 2021, đăng ký mơi 2022. Số chỗ ngồi 4 hành khách +1 tài xế.', '1320000', '42O16087', 'Số sàn', 'Xăng', 6.00, 0, 5, 11, 40, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(41, 'SUBARU FORESTER 2.0i-S 2021', 'SUBARU FORESTER 2.0i-S Eyesight 2022\\r\r\\n\\r\r\\nXe có gắn sẵn tăng bạt phù hợp cho đi dã ngoại, chủ xe có đủđồ đi camping, báo trước có thể cho mượn.\\r\r\\n\\r\r\\nCó sẵn Vietmap, 4G, youtube premium..', '2296000', '54R28319', 'Số tự động', 'Xăng', 8.00, 0, 5, 32, 41, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(42, 'VINFAST VF8 PLUS 2023', 'Dịch vụ trải nghiệm xe điện #Vinfast #VF8plus\\r\\n\\r\\nĐộng cơ mạnh, xe full option, chủ xe nhiệt tình.\\r\\n\\r\\n????Du lịch hoặc công tác mà muốn tự chủ thời gian.\\r\\n????Muốn trải nghiệm trc khi quyết định mua xe điện.\\r\\n\\r\\nLiên hệ ngay #Nghiệnshopping\\r\\n\\r\\nXe ngon lành, app ngon nghẻ. 100% xe nhà, giữ xe kỹ, chăm sóc xe như ng tình ????.\\r\\n\\r\\nCó thể thuê ngắn ngày hoặc dài ngày. \\r\\n\\r\\n#dịchvụchothuêôtôtựlái #ôtôtựlái #VF8plus #xeôtôđiện #Vinfast #thuêxetựláiTPHCM #thuêxetựlái', '2583000', '41E23531', 'Số tự động', 'Điện', 510.00, 0, 5, 29, 42, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(43, 'HONDA CRV G 2021', 'HONDA CRV-L 2021\\r\\n', '1941000', '39E26111', 'Số tự động', 'Xăng', 8.00, 0, 2, 10, 43, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(44, 'MITSUBISHI XPANDER 2020', 'Xe Mitsubishi Xpander phiên bản 2020 AT gia đình sử dụng trang thiết bị tiện nghi tiết kiệm nhiên liệu 6.9l/100km, 7 chỗ rộng rãi thoải mái. \\r\\nĐèn xe full Led trước sau. \\r\\nXe trang bị màn hình Android Zestech ZT360 thế hệ mới.\\r\\nHệ thống camera 360 toàn cảnh. \\r\\nBản đồ Việt Map S1 bản quyền cảnh báo tốc độ biển báo giao thông, xem phim nghe nhạc Youtube chất lượng cao. \\r\\nTruy cập mạng wifi miễn phí trên xe.\\r\\nChế độ ga tự động Cruise Control. \\r\\nCảm biến lùi, cảm biến áp suất lốp. \\r\\nKhóa cửa tự động. \\r\\nPhủ gầm xe công nghệ Đức. \\r\\nDán phim cách nhiệt, rèm che nắng hít nam châm theo xe, lót sàn simily, thảm sàn 6D luxury.', '1636000', '40H16149', 'Số tự động', 'Xăng', 6.90, 0, 2, 8, 44, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(45, 'HYUNDAI ACCENT 2019', 'HYUNDAI ACCENT 2019', '1837000', '21P29971', 'Số tự động', 'Xăng', 7.00, 0, 5, 11, 45, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(47, 'TOYOTA VIOS 2015', 'TOYOTA VIOS 2015\\r\\n', '1148000', '43G13530', 'Số sàn', 'Xăng', 0.00, 0, 5, 9, 47, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(49, 'MITSUBISHI XPANDER 2019', 'MITSUBISHI XPANDER 2019\\r\\nTiện ích trên xe\\r\\n-Màn hình android 10 inch\\r\\n-Camera hành trình và cam lùi\\r\\n-Cảm biến lùi, cảm biến áp suất lốp.\\r\\n-Vietmap S1, navitel', '2066000', '62F38949', 'Số tự động', 'Xăng', 7.00, 0, 2, 8, 49, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(50, 'NISSAN X TRAIL 2018', 'Nissan X-Trail SUV 5+2 chỗ bản cao cấp nhất đời cuối 2017 ĐKLĐ 2018\\r\\nMáy xăng 2.5 số tự động SV-4WD\\r\\nCửa sổ trời toàn cảnh Panorama\\r\\nCamera 360độ\\r\\nĐiều hoà 02 dàn lạnh auto độc lập\\r\\nGhế ngồi chỉnh điện 2 ghế trước\\r\\n3 chế độ lái 2WD/4WD/Auto\\r\\nHỗ trợ tính năng đổ đèo, khởi hành ngang dốc\\r\\nMàn hình Android giải trí Zestech. Dán phim cách nhiệt 3M Crystal xịn\\r\\nXe chạy êm, đầm, chắc. Cảm giác lái tuyệt vời', '1584000', '66L25187', 'Số tự động', 'Xăng', 0.00, 0, 2, 14, 50, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(51, 'KIA SONET PREMIUM 2022', 'KIA SONET PREMIUM 2022', '1205000', '67Q44730', 'Số tự động', 'Xăng', 0.00, 0, 5, 5, 51, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(52, 'MITSUBISHI XPANDER 2023', 'MITSUBISHI XPANDER 2023\\r\\n', '1894000', '55V23758', 'Số tự động', 'Xăng', 6.00, 0, 2, 8, 52, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(53, 'NISSAN ALMERA VL 2022', 'NISSAN ALMERA VL 2021', '1492000', '40M37191', 'Số tự động', 'Xăng', 4.20, 0, 5, 14, 53, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(54, 'MITSUBISHI XPANDER 2019', 'MITSUBISHI XPANDER 2019', '1677000', '23B36755', 'Số tự động', 'Xăng', 0.00, 0, 2, 8, 54, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(55, 'SUZUKI ERTIGA 2018', 'Xe Suzuki All New Ertiga Limited, 7 chỗ, số tự động. ĐK tháng 10/2022.\\r\\nXe được nhập khẩu nguyên chiếc, chất lượng siêu xịn sò. Máy êm, mượt, tiết kiệm xăng. Đèn pha công nghệ led siêu sáng. Kính có dán film cách nhiệt 3M của Mỹ. Đuôi lướt gió thể thao, giúp gia tăng khí động học cho xe. Khoá xe có chức năng chống trộm, yên tâm đỗ xe và rời đi. Màn hình thương hiệu nổi tiếng Alpine kết hợp với 4 loa cho ra chất lượng âm thanh tuyệt hảo. Khi kết nối Apple Carplay hoặc Android Auto với điện thoại có thể sử dụng được rất nhiều chức năng như nghe nhạc, đàm thoại rãnh tay, xem bản đồ, v. v… Móc cố định ghế trẻ em chuẩn quốc tế ISOFIX là trang bị bắt buộc trên xe Ertiga, mang đầy tính nhân văn. Camera hành trình có chức năng tự động khoá các đoạn videos, chống bị ghi đè hoặc bị xoá nếu có va chạm xảy ra. Camera lùi và cảm biến cảnh báo va chạm lắp ở đuôi xe giúp tài xế lùi xe an toàn trong mọi tình huống. Bảo hiểm thân vỏ (hai chiều) và bảo hiểm trách nhiệm dân sự bắt buộc được gia hạn thường xuyên, lái xe yên tâm vận hành. Tem thu phí không dừng (ETC) dán sẵn ở đèn trước bên phải xe, luôn có đủ tiền trong tài khoản giúp bác tài di chuyển xe qua trạm dễ dàng, nhanh chóng. Xe luôn được bảo dưỡng đúng định kỳ tại hãng. Nội và ngoại thất sạch sẽ, tinh tươm.\\r\\n Chúc bạn sẽ có những trải nghiệm tuyệt vời, một chuyến đi suôn sẻ và thú vị.\\r\\nCám ơn bạn rất nhiều!❤️\\r\\nNguyễn Nhật Hoài Phong', '1665000', '41N89464', 'Số tự động', 'Xăng', 5.00, 0, 2, 19, 55, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(56, 'MAZDA 3 LUXURY 2023', 'Mazda 3 Luxury 2023 đăng ký tháng 11/2023,xe gia đình\\r\\nxe được trang bị camera hành trình,cảm biến lùi,camera lùi,điều hoà 2 vùng độc lập,có cửa gió điều hoà cho người ngồi phía sau,ghế bọc dạ,đèn full led,động cơ 1,5L tiết kiệm xăng\\r\\nĐỊA ĐIỂM GIAO XE: ngay Bãi đậu xe oto Thống Nhất', '1607000', '24B74600', 'Số tự động', 'Xăng', 6.00, 0, 5, 6, 56, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(57, 'MITSUBISHI PAJERO SPORT 2021', 'MITSUBISHI PAJERO SPORT 2021', '1838000', '38E58018', 'Số tự động', 'Dầu diesel', 0.00, 0, 2, 8, 57, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(58, 'SUZUKI ERTIGA 2020', 'SUZUKI ERTIGA 2020\\r\\n', '1045000', '37N31822', 'Số tự động', 'Xăng', 0.00, 0, 2, 19, 58, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(59, 'FORD RANGER 2019', 'FORD RANGER 2019\\r\\n', '1923000', '49W30204', 'Số tự động', 'Dầu diesel', 8.00, 0, 5, 4, 59, '2024-02-07 02:53:46', '2024-03-24 07:20:33'),
(60, 'FORD FOCUS 2018', 'FORD FOCUS HATCHBACK 2019.\\r\\nXe chủ xài kỹ, luôn thơm tho sạch sẽ. xe rộng nhất trong các phân khúc. đi xa thoải mái. với 180 mã lực, quý khách sẽ luôn hài lòng khi cầm lái chiếc xe này.', '1607000', '53S16518', 'Số tự động', 'Xăng', 7.80, 0, 1, 4, 60, '2024-02-07 02:53:46', '2024-03-24 07:20:33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`iddanhgia`),
  ADD KEY `danhgia_iduser_foreign` (`iduser`),
  ADD KEY `danhgia_idxe_foreign` (`idxe`);

--
-- Chỉ mục cho bảng `dongxe`
--
ALTER TABLE `dongxe`
  ADD PRIMARY KEY (`iddongxe`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`idgiaodich`),
  ADD KEY `giaodich_iduser_foreign` (`iduser`),
  ADD KEY `giaodich_idxe_foreign` (`idxe`);

--
-- Chỉ mục cho bảng `hangxe`
--
ALTER TABLE `hangxe`
  ADD PRIMARY KEY (`idhangxe`);

--
-- Chỉ mục cho bảng `hinhxe`
--
ALTER TABLE `hinhxe`
  ADD PRIMARY KEY (`idhinhxe`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idhoadon`),
  ADD KEY `hoadon_idgiaodich_foreign` (`idgiaodich`),
  ADD KEY `hoadon_iduser_foreign` (`iduser`),
  ADD KEY `hoadon_idxe_foreign` (`idxe`);

--
-- Chỉ mục cho bảng `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_medially_type_medially_id_index` (`medially_type`,`medially_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idrole`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_idrole_foreign` (`idrole`);

--
-- Chỉ mục cho bảng `xe`
--
ALTER TABLE `xe`
  ADD PRIMARY KEY (`idxe`),
  ADD KEY `xe_iddongxe_foreign` (`iddongxe`),
  ADD KEY `xe_idhangxe_foreign` (`idhangxe`),
  ADD KEY `xe_idhinhxe_foreign` (`idhinhxe`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `iddanhgia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dongxe`
--
ALTER TABLE `dongxe`
  MODIFY `iddongxe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `idgiaodich` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hangxe`
--
ALTER TABLE `hangxe`
  MODIFY `idhangxe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `hinhxe`
--
ALTER TABLE `hinhxe`
  MODIFY `idhinhxe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idhoadon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `idrole` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `xe`
--
ALTER TABLE `xe`
  MODIFY `idxe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_iduser_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`),
  ADD CONSTRAINT `danhgia_idxe_foreign` FOREIGN KEY (`idxe`) REFERENCES `xe` (`idxe`);

--
-- Các ràng buộc cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD CONSTRAINT `giaodich_iduser_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`),
  ADD CONSTRAINT `giaodich_idxe_foreign` FOREIGN KEY (`idxe`) REFERENCES `xe` (`idxe`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_idgiaodich_foreign` FOREIGN KEY (`idgiaodich`) REFERENCES `giaodich` (`idgiaodich`),
  ADD CONSTRAINT `hoadon_iduser_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`),
  ADD CONSTRAINT `hoadon_idxe_foreign` FOREIGN KEY (`idxe`) REFERENCES `xe` (`idxe`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_idrole_foreign` FOREIGN KEY (`idrole`) REFERENCES `role` (`idrole`);

--
-- Các ràng buộc cho bảng `xe`
--
ALTER TABLE `xe`
  ADD CONSTRAINT `xe_iddongxe_foreign` FOREIGN KEY (`iddongxe`) REFERENCES `dongxe` (`iddongxe`),
  ADD CONSTRAINT `xe_idhangxe_foreign` FOREIGN KEY (`idhangxe`) REFERENCES `hangxe` (`idhangxe`),
  ADD CONSTRAINT `xe_idhinhxe_foreign` FOREIGN KEY (`idhinhxe`) REFERENCES `hinhxe` (`idhinhxe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
