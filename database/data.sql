SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

TRUNCATE TABLE access_levels;
INSERT INTO access_levels (access_id, type) VALUES
(1, 'Employee'),
(2, 'Manager'),
(3, 'Administrator');

TRUNCATE TABLE customers;
INSERT INTO customers (customer_id, first_name, last_name, address, city, country, email, phone) VALUES
(1, 'Sy', 'Vo Trong', '315 Huynh Van Banh St., Ward 11', 'Ho Chi Minh City', 'VN', 'kimberly1986@hotmail.com', '0377796684'),
(2, 'Phuoc', 'Vo Quang ', '285 Phố Bùi Quân Dung', 'Cần Thơ', 'VN', 'neuffer@aol.com', '0975777629'),
(3, ' Hieu', 'Luc Trong', '1A Tang Bat Ho,  Hai Ba Trung Dist.', 'Hà Nội', 'VN', 'zavadsky@me.com', '0327014325'),
(4, 'Hai', 'Phan Xuan', '23/8/6 Dinh Tien Hoang Str', 'Ho Chi Minh City', 'VN', 'frikazoyd@comcast.net', '0327014325'),
(5, 'Canh', 'Huynh Thi', '58 Tran Nhan Tong, Hai Ba Trung', 'Hanoi', 'VN', 'nguynhep@gmail.com', '0369625299'),
(6, 'Ha', 'Van Thi', 'Bac Son Ward, Trang Bom District', 'Dong Nai', 'VN', 'ylchang@comcast.net', '0384564243'),
(7, 'Tam', 'Lam Thi', '20 Thuy Khue, Tay Ho', 'Hanoi', 'VN', 'uncled@yahoo.com', '0965071890 '),
(8, 'Lan', 'Châu', '8424 Phố Hồng Thiện Trường', 'Hải Phòng', 'VN', 'dsugal@me.com', '0705228686'),
(9, 'Kim', 'Đặng Tôn', '9 Phố Từ Hội Chiến', 'Hải Phòng', 'VN', 'nhanson@liposhop.site', '0974787414'),
(10, 'Hoàng', 'Ngô Việt ', '6558 Phố Thiều Tấn Tân', 'Hà Nội', 'VN', 'ullman@gmail.com', '0352302991 '),
(11, 'Hoàng Hiếu', 'Nghĩa', '7 Phố Khuất Nhã Tâm', 'Cần Thơ', 'VN', 'syncnine@yahoo.ca', '0962232190 '),
(12, 'Nhật', 'Chử Quang ', '7 Phố Quản Lân Hưng', 'Hải Phòng', 'VN', 'bbirth@comcast.net', '0967438488'),
(13, 'Bảo', 'Bùi Thiệu', '91 Phố Thời', 'Đà Nẵng', 'VN', 'cameron@icloud.com', '0376736501 '),
(14, 'Phương', 'Đỗ Hoài ', '2401 Phố Chế Giác Phụng', 'Hồ Chí Minh', 'VN', 'jaesenj@att.net', '0976895989 '),
(15, ' Thương', 'Văn Minh', '829 Phố Bồ Tài Quỳnh', 'Hải Phòng', 'VN', 'jaxweb@yahoo.com', '0869228823'),
(16, 'Thủy', 'Trần Hồng', '533 Phố Lý Trưởng Dân', 'Hồ Chí Minh', 'VN', 'adamk@optonline.net', '0383677647'),
(17, 'Huệ', 'Ngô Bích', '112 Nguyễn Văn Cừ, Bồ Đề, Long Biên', 'Hà Nội', 'VN', 'forsberg@gmail.com', '0354513870 '),
(18, 'Ánh', 'Huỳnh Thu ', '278 Phố Án', 'Cần Thơ', 'VN', 'bflong@yahoo.ca', '0969527819'),
(19, 'Thanh', 'Triệu Yến', '8 Phố Ong Thoại Hiếu', 'Cần Thơ', 'VN', 'mcsporran@verizon.net', '0823480005'),
(20, 'Bình', 'Tạ Thái ', '01 Le Hong Phong', 'Hue', 'VN', 'raides@verizon.net', '0369392410'),
(21, 'Bằng', 'Trần Hữu', '49 Nguyen Du', 'Hanoi', 'VN', 'sinkou@hotmail.com', '0366993286'),
(22, 'Chính', 'Nguyễn Ðức ', '18 Le Phung Hieu, Hoan Kiem', 'Hanoi', 'VN', 'flakeg@att.net', '0358514637'),
(23, 'Tường', 'Phan Trọng', '164 Phố Hoàng Cơ Hiền', 'Hồ Chí Minh', 'VN', 'papathan@yahoo.com', '0339511516'),
(24, 'Ninh', 'Nguyễn Thịnh', '24 Trang Tien, Hoan Kiem', 'Hanoi', 'VN', 'loscar@msn.com', '0961073350'),
(25, 'Thắng', 'Trần Hữu ', '29 Hang Bai, Hoan Kiem', 'Hanoi', 'VN', 'elflord@att.net', '0986668985');

TRUNCATE TABLE hotel_info;
INSERT INTO hotel_info (hotel_info_id, hotel_name, address, city, country, email, phone, active) VALUES
(1, 'Regal Inn & Suites', '389 Truong Dinh, Hai Ba Trung', 'Ha Noi', 'Vietnam', 'info@regalinn.com', '216-555-1212', 1);

TRUNCATE TABLE invoices;
INSERT INTO invoices (invoice_id, res_room_id, num_days, rate, payment_type, created_at) VALUES
(1, 1101, 6, '2000000', 'Cash', '2023-02-15 17:18:53'),
(2, 1101, 6, '2000000', 'Cash', '2023-02-15 17:19:07'),
(3, 1101, 6, '2000000', 'Cash', '2023-02-15 17:19:15'),
(4, 1002, 4, '3000000', 'Cash', '2023-02-28 21:57:20');

TRUNCATE TABLE reservations;
INSERT INTO reservations (reservation_id, customer_id, user_id, comments) VALUES
(1001, 1, 1, ''),
(1002, 2, 1, ''),
(1003, 3, 2, ''),
(1004, 4, 1, ''),
(1005, 5, 3, ''),
(1006, 6, 1, ''),
(1007, 7, 1, ''),
(1008, 8, 2, ''),
(1009, 9, 1, ''),
(1010, 10, 3, ''),
(1011, 11, 1, ''),
(1012, 12, 1, ''),
(1013, 13, 2, ''),
(1014, 14, 1, ''),
(1015, 15, 3, ''),
(1016, 16, 1, ''),
(1017, 17, 1, ''),
(1018, 18, 2, ''),
(1019, 19, 1, ''),
(1020, 20, 3, ''),
(1021, 21, 2, ''),
(1022, 22, 3, ''),
(1023, 23, 1, ''),
(1024, 24, 3, '');

TRUNCATE TABLE res_rooms;
INSERT INTO res_rooms (res_room_id, reservation_id, room_type_id, check_in_date, check_out_date, checked_in, checked_out, adults, room_id, rate, comments, active) VALUES
(1001, 1001, 1, DATE_SUB(CURDATE(), INTERVAL 3 DAY), CURDATE(), 1, 0, 1, 9, 2000000, 'Muốn checkout muộn', 1),
(1002, 1002, 2, DATE_SUB(CURDATE(), INTERVAL 3 DAY), DATE_ADD(CURDATE(), INTERVAL 1 DAY), 1, 1, 2, 4, 3000000, '', 1),
(1003, 1003, 1, DATE_SUB(CURDATE(), INTERVAL 3 DAY), DATE_ADD(CURDATE(), INTERVAL 1 DAY), 1, 0, 2, 11, 2000000, '', 1),
(1004, 1004, 2, DATE_SUB(CURDATE(), INTERVAL 3 DAY), DATE_ADD(CURDATE(), INTERVAL 2 DAY), 1, 0, 1, 12, 3000000, 'Muốn view đẹp', 1),
(1005, 1005, 1, DATE_SUB(CURDATE(), INTERVAL 3 DAY), DATE_ADD(CURDATE(), INTERVAL 2 DAY), 1, 0, 2, 13, 2000000, '', 1),
(1006, 1006, 3, DATE_SUB(CURDATE(), INTERVAL 3 DAY), DATE_ADD(CURDATE(), INTERVAL 3 DAY), 1, 0, 1, 6, 5000000, '', 1),
(1007, 1007, 1, DATE_SUB(CURDATE(), INTERVAL 2 DAY), DATE_ADD(CURDATE(), INTERVAL 1 DAY), 1, 0, 2, 23, 2000000, '', 1),
(1008, 1008, 3, DATE_SUB(CURDATE(), INTERVAL 2 DAY), DATE_ADD(CURDATE(), INTERVAL 2 DAY), 1, 0, 2, 26, 5000000, '', 1),
(1009, 1009, 1, DATE_SUB(CURDATE(), INTERVAL 2 DAY), DATE_ADD(CURDATE(), INTERVAL 3 DAY), 1, 0, 1, 25, 2000000, '', 1),
(1010, 1010, 3, DATE_SUB(CURDATE(), INTERVAL 2 DAY), DATE_ADD(CURDATE(), INTERVAL 2 DAY), 1, 0, 3, 28, 5000000, '', 1),
(1011, 1011, 1, DATE_SUB(CURDATE(), INTERVAL 2 DAY), DATE_ADD(CURDATE(), INTERVAL 3 DAY), 1, 0, 1, 27, 2000000, '', 1),
(1012, 1012, 2, DATE_SUB(CURDATE(), INTERVAL 2 DAY), DATE_ADD(CURDATE(), INTERVAL 2 DAY), 1, 0, 2, 24, 3000000, '', 1),
(1013, 1013, 1, DATE_SUB(CURDATE(), INTERVAL 2 DAY), DATE_ADD(CURDATE(), INTERVAL 1 DAY), 1, 0, 2, 29, 2000000, '', 1),
(1014, 1014, 2, DATE_SUB(CURDATE(), INTERVAL 2 DAY), DATE_ADD(CURDATE(), INTERVAL 2 DAY), 1, 0, 1, 32, 3000000, '', 1),
(1015, 1015, 1, DATE_SUB(CURDATE(), INTERVAL 2 DAY), DATE_ADD(CURDATE(), INTERVAL 1 DAY), 1, 0, 3, 31, 2000000, '', 1),
(1016, 1016, 3, DATE_SUB(CURDATE(), INTERVAL 1 DAY), DATE_ADD(CURDATE(), INTERVAL 3 DAY), 1, 0, 1, 50, 5000000, '', 1),
(1017, 1017, 1, DATE_SUB(CURDATE(), INTERVAL 1 DAY), DATE_ADD(CURDATE(), INTERVAL 2 DAY), 1, 0, 2, 63, 2000000, '', 1),
(1018, 1018, 3, DATE_SUB(CURDATE(), INTERVAL 1 DAY), DATE_ADD(CURDATE(), INTERVAL 1 DAY), 1, 0, 2, 56, 5000000, '', 1),
(1019, 1019, 1, DATE_SUB(CURDATE(), INTERVAL 1 DAY), DATE_ADD(CURDATE(), INTERVAL 2 DAY), 1, 0, 1, 65, 2000000, '', 1),
(1020, 1020, 3, DATE_SUB(CURDATE(), INTERVAL 1 DAY), DATE_ADD(CURDATE(), INTERVAL 1 DAY), 1, 0, 3, 58, 5000000, 'Muốn view đẹp', 1),
(1021, 1021, 1, DATE_SUB(CURDATE(), INTERVAL 1 DAY), DATE_ADD(CURDATE(), INTERVAL 2 DAY), 1, 0, 1, 67, 2000000, '', 1),
(1022, 1022, 2, DATE_SUB(CURDATE(), INTERVAL 1 DAY), DATE_ADD(CURDATE(), INTERVAL 4 DAY), 1, 0, 2, 62, 3000000, '', 1),
(1023, 1023, 1, DATE_SUB(CURDATE(), INTERVAL 1 DAY), DATE_ADD(CURDATE(), INTERVAL 6 DAY), 1, 0, 2, 69, 2000000, '', 1),
(1024, 1024, 2, DATE_SUB(CURDATE(), INTERVAL 1 DAY), DATE_ADD(CURDATE(), INTERVAL 3 DAY), 1, 0, 1, 64, 3000000, '', 1);


TRUNCATE TABLE rooms;
INSERT INTO rooms (room_id, room_num, room_type_id, description, num_beds, clean, occupied, active) VALUES
(1, '101', 1, 'có ban công', 2, 0, 0, 1),
(2, '102', 2, '', 1, 1, 1, 1),
(3, '103', 1, '', 2, 0, 1, 1),
(4, '104', 2, '', 2, 0, 0, 1),
(5, '105', 1, '', 2, 1, 1, 1),
(6, '106', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(7, '107', 1, '', 2, 1, 1, 1),
(8, '108', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(9, '109', 1, '', 2, 1, 1, 1),
(10, '110', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(11, '111', 1, '', 2, 1, 1, 1),
(12, '112', 2, '60-inch TV', 2, 1, 1, 1),
(13, '113', 1, '', 2, 1, 1, 1),
(14, '114', 2, '60-inch TV', 1, 1, 1, 1),
(15, '115', 1, '', 2, 1, 1, 1),
(16, '116', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(17, '117', 1, '', 2, 1, 1, 1),
(18, '118', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(19, '119', 1, '', 2, 1, 1, 1),
(20, '120', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(21, '121', 1, '', 2, 1, 1, 1),
(22, '122', 2, '', 1, 1, 1, 1),
(23, '123', 1, '', 2, 1, 1, 1),
(24, '124', 2, '60-inch TV', 2, 1, 1, 1),
(25, '125', 1, 'có ban công', 2, 1, 1, 1),
(26, '126', 3, 'có lò vi sóng, tủ lạnh, có ban công', 1, 1, 1, 1),
(27, '127', 1, '', 2, 1, 1, 1),
(28, '128', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(29, '129', 1, '', 2, 1, 1, 1),
(30, '130', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(31, '131', 1, '', 2, 1, 1, 1),
(32, '132', 2, '', 2, 1, 1, 1),
(33, '133', 1, '', 2, 1, 1, 1),
(34, '134', 2, '60-inch TV', 1, 1, 1, 1),
(35, '135', 1, '', 2, 1, 1, 1),
(36, '136', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(37, '137', 1, '', 2, 1, 1, 1),
(38, '138', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(39, '139', 1, '', 2, 1, 1, 1),
(40, '140', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(41, '141', 1, '', 2, 1, 1, 1),
(42, '142', 2, '60-inch TV', 1, 1, 1, 1),
(43, '143', 1, '', 2, 1, 1, 1),
(44, '144', 2, '', 2, 1, 1, 1),
(45, '145', 1, '', 2, 1, 1, 1),
(46, '146', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(47, '147', 1, '', 2, 1, 1, 1),
(48, '148', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(49, '149', 1, '', 2, 1, 1, 1),
(50, '150', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(51, '201', 1, 'có ban công', 2, 1, 1, 1),
(52, '202', 2, '', 2, 1, 1, 1),
(53, '203', 1, '', 2, 1, 1, 1),
(54, '204', 2, '', 1, 1, 1, 1),
(55, '205', 1, '', 2, 1, 1, 1),
(56, '206', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(57, '207', 1, '', 2, 1, 1, 1),
(58, '208', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(59, '209', 1, '', 2, 1, 1, 1),
(60, '210', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(61, '211', 1, '', 2, 1, 1, 1),
(62, '212', 2, '60-inch TV', 1, 1, 1, 1),
(63, '213', 1, '', 2, 1, 1, 1),
(64, '214', 2, '', 2, 1, 1, 1),
(65, '215', 1, '', 2, 1, 1, 1),
(66, '216', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(67, '217', 1, '', 2, 1, 1, 1),
(68, '218', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(69, '219', 1, '', 2, 1, 1, 1),
(70, '220', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(71, '221', 1, '', 2, 1, 1, 1),
(72, '222', 2, '', 2, 1, 1, 1),
(73, '223', 1, '', 2, 1, 1, 1),
(74, '224', 2, '60-inch TV', 1, 1, 1, 1),
(75, '225', 1, 'có ban công', 2, 1, 1, 1),
(76, '226', 3, 'có lò vi sóng, tủ lạnh, có ban công', 2, 1, 1, 1),
(77, '227', 1, '', 2, 1, 1, 1),
(78, '228', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 1, 1),
(79, '229', 1, '', 2, 1, 1, 1),
(80, '230', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 1, 1),
(81, '231', 1, '', 2, 0, 0, 1),
(82, '232', 2, '', 1, 1, 0, 1),
(83, '233', 1, '', 2, 1, 0, 1),
(84, '234', 2, '60-inch TV', 2, 1, 0, 1),
(85, '235', 1, '', 2, 1, 0, 1),
(86, '236', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 0, 1),
(87, '237', 1, '', 2, 1, 0, 1),
(88, '238', 3, 'có lò vi sóng, tủ lạnh', 2, 1, 0, 1),
(89, '239', 1, '', 2, 0, 0, 0),
(90, '240', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 0, 1),
(91, '241', 1, '', 2, 0, 0, 1),
(92, '242', 2, '', 2, 1, 0, 1),
(93, '243', 1, '', 2, 1, 0, 1),
(94, '244', 2, '', 1, 0, 0, 1),
(95, '245', 1, '', 2, 1, 0, 1),
(96, '246', 3, 'có lò vi sóng, tủ lạnh', 2, 0, 0, 0),
(97, '247', 1, '', 2, 1, 0, 1),
(98, '248', 3, 'có lò vi sóng, tủ lạnh', 1, 1, 0, 1),
(99, '249', 1, '', 2, 1, 0, 1),
(100, '250', 3, 'có lò vi sóng, tủ lạnh', 2, 0, 0, 1);

TRUNCATE TABLE room_issues;
INSERT INTO room_issues (room_issue_id, room_id, issue, user_id, start_date, end_date, fixed) VALUES
(1, 89, 'Cần khăn tắm mới, với cả có một vết bẩn trên cửa sổ', 1, '2023-01-20', '2023-01-24', 1),
(2, 96, 'Ống thoát nước của bồn tắm bị tắc và cần phải thay rèm tắm.', 1, '2023-02-17', '2023-02-20', 0),
(3, 22, 'Quạt trần hỏng', 4, '2023-02-07', '2023-03-07', 0),
(4, 24, 'Ghế đẩu gãy một chân, nhà tắm có nhiều kiến', 4, '2023-02-07', '2023-03-07', 1),
(5, 26, 'Rèm cửa có mùi hôi', 4, '2023-02-07', '2023-03-07', 0);

TRUNCATE TABLE room_types;
INSERT INTO room_types (room_type_id, type, rate) VALUES
(1, '2 Queens', 2000000),
(2, 'King', 3000000),
(3, 'Suite', 5000000);

TRUNCATE TABLE sessions;
INSERT INTO sessions (session_id, expires, data) VALUES
('5EmsLElG2bLCT5UJtBQ0dk0SS0tN9Zlc', 1677970697, '{\"cookie\":{\"originalMaxAge\":3600000,\"expires\":\"2023-03-04T22:58:16.793Z\",\"httpOnly\":true,\"path\":\"/\",\"sameSite\":true},\"passport\":{\"user\":1}}'),
('GSyTnaX8M6VV1NfdolI-Ycc1-XyPffcZ', 1677970772, '{\"cookie\":{\"originalMaxAge\":3600000,\"expires\":\"2023-03-04T22:59:32.060Z\",\"httpOnly\":true,\"path\":\"/\",\"sameSite\":true},\"passport\":{\"user\":1}}'),
('ZEKFDU-Kx3CX-bqo4Y2rj8k9o8dNO2AH', 1677970768, '{\"cookie\":{\"originalMaxAge\":3600000,\"expires\":\"2023-03-04T22:59:28.120Z\",\"httpOnly\":true,\"path\":\"/\",\"sameSite\":true},\"passport\":{\"user\":1}}'),
('ox1XE8PlQRcRIm3jXdWSWbJIviv1Jk5g', 1677970515, '{\"cookie\":{\"originalMaxAge\":3600000,\"expires\":\"2023-03-04T22:55:14.941Z\",\"httpOnly\":true,\"path\":\"/\",\"sameSite\":true},\"passport\":{\"user\":1}}');

TRUNCATE TABLE users;
INSERT INTO users (user_id, username, password, access_id, active) VALUES
(1, 'admin', '$2b$10$Qf/0VNBQiYr.pHN8IN9Yl.SrYQCpG4b2mrsX6dx85DkE7/fwsNWvy', 3, 1),
(2, 'manager', '$2b$10$2ataQ4kjDbZaR9TDSUqXI.Mt.Gq/bDn1Te3MN939s3fJAtTrKJa9i', 2, 1),
(3, 'vince', '$2b$10$HEj.issBvH6pxDEiBxtCr.c8fU7Cl4TC34K4/MGtTMdXqztLyqt8K', 3, 1),
(4, 'user', '$2b$10$rnUz2cFk61G27KdixeR5G.rf78zaKzDZlebrs9ZK5tnnVGFWrnUPm', 1, 1);
