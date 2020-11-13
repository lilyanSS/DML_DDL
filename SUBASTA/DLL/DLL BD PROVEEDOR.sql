--- UNIVERSIDAD MARIANO GALVEZ SEMINARIO DE ANÁLISIS.
--- LILYAN SICA 1990-13-11645. 

--- CREACION DE LA BASE DE DATOS
CREATE DATABASE SUBASTA;

-- CREACION DE LAS TABLAS
CREATE TABLE `vehicles_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
); 

CREATE TABLE `vehicles_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `vehicles_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
);

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
); 

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
);

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
);

CREATE TABLE `vehicles_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
); 

CREATE TABLE `vehicles_vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(200) NOT NULL,
  `line` varchar(100) NOT NULL,
  `cubic_centimeters` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `sold` tinyint(1) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicles_vehicle_brand_id_4d8d6d5d_fk_vehicles_brand_id` (`brand_id`),
  KEY `vehicles_vehicle_provider_id_d97540f2_fk_vehicles_user_id` (`provider_id`),
  KEY `vehicles_vehicle_status_id_cdc2385e_fk_vehicles_status_id` (`status_id`),
  KEY `vehicles_vehicle_type_id_1552fe5d_fk_vehicles_type_id` (`type_id`),
  CONSTRAINT `vehicles_vehicle_brand_id_4d8d6d5d_fk_vehicles_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `vehicles_brand` (`id`),
  CONSTRAINT `vehicles_vehicle_provider_id_d97540f2_fk_vehicles_user_id` FOREIGN KEY (`provider_id`) REFERENCES `vehicles_user` (`id`),
  CONSTRAINT `vehicles_vehicle_status_id_cdc2385e_fk_vehicles_status_id` FOREIGN KEY (`status_id`) REFERENCES `vehicles_status` (`id`),
  CONSTRAINT `vehicles_vehicle_type_id_1552fe5d_fk_vehicles_type_id` FOREIGN KEY (`type_id`) REFERENCES `vehicles_type` (`id`)
);

CREATE TABLE `vehicles_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(100) NOT NULL,
  `description` longtext,
  `vehicle_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicles_photos_vehicle_id_0b9a89fb_fk_vehicles_vehicle_id` (`vehicle_id`),
  CONSTRAINT `vehicles_photos_vehicle_id_0b9a89fb_fk_vehicles_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles_vehicle` (`id`)
);

