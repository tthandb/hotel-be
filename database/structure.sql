SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE access_levels (
  access_id int(3) NOT NULL,
  type varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE customers (
  customer_id int(6) NOT NULL,
  first_name varchar(30) NOT NULL,
  last_name varchar(30) NOT NULL,
  address varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  country varchar(30) NOT NULL,
  email varchar(50) NOT NULL,
  phone varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE hotel_info (
  hotel_info_id int(6) NOT NULL,
  hotel_name varchar(30) NOT NULL,
  address varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  country varchar(30) NOT NULL,
  email varchar(50) NOT NULL,
  phone varchar(20) NOT NULL,
  active tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE invoices (
  invoice_id int(10) NOT NULL,
  res_room_id int(10) NOT NULL,
  num_days int(3) NOT NULL,
  rate decimal(5,2) NOT NULL,
  room_service_charges decimal(5,2) DEFAULT 0.00,
  payment_type varchar(50) NOT NULL,
  created_at datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE reservations (
  reservation_id int(10) NOT NULL,
  customer_id int(6) NOT NULL,
  user_id int(6) NOT NULL,
  created_at datetime DEFAULT current_timestamp(),
  comments varchar(255) DEFAULT NULL,
  active tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE res_rooms (
  res_room_id int(10) NOT NULL,
  reservation_id int(10) NOT NULL,
  room_type_id int(6) NOT NULL,
  check_in_date date NOT NULL,
  check_out_date date NOT NULL,
  checked_in tinyint(1) DEFAULT 0,
  checked_out tinyint(1) DEFAULT 0,
  adults int(3) NOT NULL,
  room_id int(6) DEFAULT NULL,
  rate mediumint(9) NOT NULL,
  comments varchar(255) DEFAULT NULL,
  active tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE rooms (
  room_id int(6) NOT NULL,
  room_num varchar(20) NOT NULL,
  room_type_id int(3) NOT NULL,
  description varchar(255) DEFAULT NULL,
  num_beds int(3) NOT NULL,
  clean tinyint(1) DEFAULT 0,
  occupied tinyint(1) DEFAULT 0,
  active tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE room_issues (
  room_issue_id int(10) NOT NULL,
  room_id int(6) DEFAULT NULL,
  issue text NOT NULL,
  user_id int(6) NOT NULL,
  start_date date NOT NULL,
  end_date date NOT NULL,
  fixed tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE room_types (
  room_type_id int(3) NOT NULL,
  type varchar(30) NOT NULL,
  rate mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE sessions (
  session_id varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  expires int(11) UNSIGNED NOT NULL,
  data mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE users (
  user_id int(6) NOT NULL,
  username varchar(20) NOT NULL,
  password varchar(255) NOT NULL,
  access_id int(3) NOT NULL,
  active tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE access_levels
  ADD PRIMARY KEY (access_id);

ALTER TABLE customers
  ADD PRIMARY KEY (customer_id);

ALTER TABLE hotel_info
  ADD PRIMARY KEY (hotel_info_id);

ALTER TABLE invoices
  ADD PRIMARY KEY (invoice_id),
  ADD KEY res_room_id (res_room_id);

ALTER TABLE reservations
  ADD PRIMARY KEY (reservation_id),
  ADD KEY customer_id (customer_id),
  ADD KEY user_id (user_id);

ALTER TABLE res_rooms
  ADD PRIMARY KEY (res_room_id),
  ADD KEY reservation_id (reservation_id),
  ADD KEY room_type_id (room_type_id),
  ADD KEY room_id (room_id);

ALTER TABLE rooms
  ADD PRIMARY KEY (room_id),
  ADD UNIQUE KEY room_num (room_num),
  ADD KEY room_type_id (room_type_id);

ALTER TABLE room_issues
  ADD PRIMARY KEY (room_issue_id),
  ADD KEY room_id (room_id),
  ADD KEY user_id (user_id);

ALTER TABLE room_types
  ADD PRIMARY KEY (room_type_id);

ALTER TABLE sessions
  ADD PRIMARY KEY (session_id);

ALTER TABLE users
  ADD PRIMARY KEY (user_id),
  ADD UNIQUE KEY username (username),
  ADD KEY access_id (access_id);


ALTER TABLE access_levels
  MODIFY access_id int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE customers
  MODIFY customer_id int(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE hotel_info
  MODIFY hotel_info_id int(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE invoices
  MODIFY invoice_id int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE reservations
  MODIFY reservation_id int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE res_rooms
  MODIFY res_room_id int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE rooms
  MODIFY room_id int(6) NOT NULL AUTO_INCREMENT;

ALTER TABLE room_issues
  MODIFY room_issue_id int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE room_types
  MODIFY room_type_id int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE users
  MODIFY user_id int(6) NOT NULL AUTO_INCREMENT;


ALTER TABLE invoices
  ADD CONSTRAINT invoices_ibfk_1 FOREIGN KEY (res_room_id) REFERENCES res_rooms (res_room_id) ON UPDATE CASCADE;

ALTER TABLE reservations
  ADD CONSTRAINT reservations_ibfk_1 FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON UPDATE CASCADE,
  ADD CONSTRAINT reservations_ibfk_2 FOREIGN KEY (user_id) REFERENCES `users` (user_id) ON UPDATE CASCADE;

ALTER TABLE res_rooms
  ADD CONSTRAINT res_rooms_ibfk_1 FOREIGN KEY (reservation_id) REFERENCES reservations (reservation_id) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT res_rooms_ibfk_2 FOREIGN KEY (room_type_id) REFERENCES room_types (room_type_id) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT res_rooms_ibfk_3 FOREIGN KEY (room_id) REFERENCES rooms (room_id) ON UPDATE CASCADE;

ALTER TABLE rooms
  ADD CONSTRAINT rooms_ibfk_1 FOREIGN KEY (room_type_id) REFERENCES room_types (room_type_id) ON UPDATE CASCADE;

ALTER TABLE room_issues
  ADD CONSTRAINT room_issues_ibfk_1 FOREIGN KEY (room_id) REFERENCES rooms (room_id) ON UPDATE CASCADE,
  ADD CONSTRAINT room_issues_ibfk_2 FOREIGN KEY (user_id) REFERENCES `users` (user_id) ON UPDATE CASCADE;

ALTER TABLE users
  ADD CONSTRAINT users_ibfk_1 FOREIGN KEY (access_id) REFERENCES access_levels (access_id) ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
