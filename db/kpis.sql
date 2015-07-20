# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 10.0.20-MariaDB)
# Database: kpis
# Generation Time: 2015-07-20 07:46:33 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `number_id` varchar(5) NOT NULL DEFAULT '',
  `item_name` varchar(255) DEFAULT NULL,
  `item_status` varchar(1) DEFAULT NULL,
  `perstatus` varchar(1) DEFAULT NULL,
  `moph` varchar(5) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `province` varchar(3) DEFAULT NULL,
  `category_id` int(3) DEFAULT NULL,
  `item_type` char(1) DEFAULT '1',
  `pass_score` double(6,2) DEFAULT '0.00',
  `chart_front` char(1) DEFAULT 'N',
  `file_path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`number_id`),
  KEY `idx_moph` (`moph`),
  KEY `idx_region` (`region`),
  KEY `idx_province` (`province`),
  KEY `idx_category` (`category_id`),
  KEY `idx_chart_front` (`chart_front`),
  KEY `idx_status` (`item_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;

INSERT INTO `items` (`number_id`, `item_name`, `item_status`, `perstatus`, `moph`, `region`, `province`, `category_id`, `item_type`, `pass_score`, `chart_front`, `file_path`)
VALUES
	('101','อัตราส่วนการตายมารดา','Y','4','Y','Y','Y',1,'1',90.00,'N',NULL),
	('102','ร้อยละของเด็กอายุ 0 - 5 ปี มีพัฒนาการสมวัย','Y','1','Y','Y','Y',1,'1',80.00,'Y',NULL),
	('103','ร้อยละของเด็กนักเรียนมีภาวะเริ่มอ้วนและอ้วน','Y','1','Y',NULL,NULL,1,'1',90.00,'Y',NULL),
	('104','อัตราการเสียชีวิตจากการจมน้ำของเด็กอายุต่ำกว่า 15 ปี','Y','4','Y','Y','Y',1,'1',90.00,'Y',NULL),
	('105','อัตราการคลอดมีชีพในหญิงอายุ 15-19 ปี','Y','2','Y',NULL,NULL,1,'1',90.00,'Y',NULL),
	('106','ความชุกผู้บริโภคเครื่องดื่มแอลกอฮอล์ในประชากรอายุ 15-19 ปีไม่เพิ่มขึ้น','N','','Y',NULL,'Y',1,'1',90.00,'N',NULL),
	('107','อัตราตายจากอุบัติเหตุทางถนน','Y','4','Y','Y',NULL,5,'1',90.00,'N',NULL),
	('108','อัตราตายจากโรคหลอดเลือดหัวใจ','Y','1','Y',NULL,NULL,5,'1',90.00,'N',NULL),
	('109','ร้อยละของผู้สูงอายุมีพฤติกรรมสุขภาพที่พึงประสงค์','N','','Y',NULL,NULL,NULL,'1',90.00,'N',NULL),
	('110','ร้อยละของอำเภอที่มี District Health System (DHS) ที่เชื่อมโยงระบบบริการปฐมภูมิกับชุมชนและท้องถิ่นอย่างมีคุณภาพ','N',NULL,'Y',NULL,'Y',1,'2',90.00,'N',NULL),
	('111','การส่งต่อผู้ป่วยออกนอกเขตสุขภาพ','Y','1','Y',NULL,NULL,NULL,'1',90.00,'N',NULL),
	('112','ร้อยละของอำเภอที่สามารถควบคุมโรคติดต่อสำคัญของพื้นที่ได้  โรคไข้เลือดออก','Y','1','Y',NULL,NULL,5,'2',90.00,'N',NULL),
	('113','ร้อยละของอำเภอที่สามารถควบคุมโรคติดต่อสำคัญของพื้นที่ได้  โรคหัด','Y','1','Y',NULL,NULL,NULL,'2',90.00,'N',NULL),
	('114','ร้อยละของอำเภอชายแดนสามารถควบคุมโรคติดต่อสำคัญของพื้นที่ชายแดน','N',NULL,'Y',NULL,NULL,5,'2',90.00,'N',NULL),
	('115','ระดับความสำเร็จของการดำเนินงานงานคุ้มครองผู้บริโภคด้านผลิตภัณฑ์','N',NULL,'Y',NULL,NULL,5,'2',90.00,'N',NULL),
	('116','อัตราการหยุดเสพ (remission rate)','N',NULL,'Y',NULL,NULL,NULL,'2',90.00,'N',NULL),
	('117','มีเครือข่ายนักกฎหมายที่เข็มแข็งและบังคับใช้กฎหมายในเรื่องที่สำคัญ','N',NULL,'Y',NULL,NULL,5,'2',90.00,'N',NULL),
	('118','มีระบบฐานข้อมูลและสถานการณ์สิ่งแวดล้อมและสุขภาพ ระบบเฝ้าระวัง','N',NULL,'Y',NULL,NULL,NULL,'2',90.00,'N',NULL),
	('119','แผนพัฒนาบุคลากรอย่างมืออาชีพในระดับจังหวัดด้านสิ่งแวดล้อมและสุขภาพ','N',NULL,'Y',NULL,NULL,NULL,'2',90.00,'N',NULL),
	('120','ประสิทธิภาพการบริหารการเงินสามารถควบคุมปัญหาทางการเงินระดับ 7','N',NULL,'Y',NULL,NULL,1,'2',90.00,'N',NULL),
	('121','ลดต้นทุนของยา เวชภัณฑ์ และเวชภัณฑ์ที่ไม่ใช่ยา   ต้นทุนค่าเวชภัณฑ์ฯของหน่วยงาน','N',NULL,'Y',NULL,NULL,NULL,'2',90.00,'N',NULL),
	('122','ลดต้นทุนของยา เวชภัณฑ์ และเวชภัณฑ์ที่ไม่ใช่ยา  มูลค่าการจัดซื้อร่วมยาและเวชภัณฑ์ฯ ของหน่วยงาน','N',NULL,'Y',NULL,NULL,NULL,'2',90.00,'N',NULL),
	('123','ร้อยละของหน่วยงานในสังกัดกระทรวงสาธารณสุขผ่านเกณฑ์ประเมินระดับ คุณธรรมและความโปร่งใสในการดำเนินงาน (Integrity and TransparencyAssessment : ITA )','N',NULL,'Y',NULL,NULL,NULL,'1',90.00,'N',NULL),
	('201','ร้อยละของ MCH Board ระดับจังหวัด มีกลไกในการเฝ้าระวังและแก้ปัญหาสุขภาพอนามัยแม่และเด็ก','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('202','ร้อยละของศูนย์เด็กเล็กคุณภาพ','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('203','ร้อยละของโรงเรียนที่เข้าร่วมโครงการโรงเรียนส่งเสริมสุขภาพ','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('204','ร้อยละของโรงเรียนผ่านเกณฑ์ตามที่กาหนด','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('205','ร้อยละของการตั้งครรภ์ซ้าในวัยรุ่นอายุ 15-19 ปี','Y','1',NULL,'Y','Y',NULL,'1',90.00,'N',NULL),
	('206','ร้อยละของเด็กและเยาวชนอายุ 15-24 ปี ที่มีการป้องกันตนเองโดยใช้ถุงยางอนามัย เมื่อมีเพศสัมพันธ์ครั้งล่าสุด','N',NULL,NULL,'Y','Y',NULL,'1',90.00,'N',NULL),
	('207','ร้อยละผู้สูบบุหรี่ในวัยรุ่น','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('208','ร้อยละของผู้ป่วยเบาหวานที่ควบคุมระดับน้าตาลในเลือดได้ดี','Y','1',NULL,'Y',NULL,NULL,'1',90.00,'Y',NULL),
	('209','ร้อยละของผู้ป่วยความดันโลหิตสูงที่ควบคุมความดันได้ดี','Y','1',NULL,'Y',NULL,NULL,'1',90.00,'Y',NULL),
	('210','อัตราป่วยรายใหม่จากโรคเบาหวาน','Y','1',NULL,'Y',NULL,NULL,'1',90.00,'Y',NULL),
	('211','อัตราป่วยรายใหม่จากโรคความดันโลหิตสูง','Y','1',NULL,'Y',NULL,NULL,'1',90.00,'Y',NULL),
	('212','ความชุกของพฤติกรรมเสี่ยงลดลง (ดื่มเหล้า สูบบุหรี่ การบริโภคผักผลไม้น้อยออกกาลังกายไม่เพียงพอ ขี่มอเตอร์ไซด์ไม่สวมหมวกนิรภัยเมาแล้วขับ)','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('213','ร้อยละของ DHS มีระบบการดูแลผู้สูงอายุระยะยาว และผู้สูงอายุที่ต้องการการพึ่งพิง ( Long Term Care) ด้านสุขภาพ','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('214','ร้อยละของจังหวัดในเขตบริการสุขภาพมีการดาเนินงานในการบูรณาการระบบดูแลสุขภาพคนพิการทางการเคลื่อนไหว/ผู้ป่วยโรคหลอดเลือดสมองที่พ้นระยะวิกฤติ ผ่าน เกณฑ์ระดับ 3','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('215','ร้อยละของสถานบริการมีการปรับสภาพแวดล้อม มีสิ่งอานวยความสะดวกให้คน พิการ/ผู้สูงอายุเข้าถึงและใช้ประโยชน์ได้','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('216','คนพิการทุกประเภทมีคุณภาพชีวิตดีขึ้น','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('217','โรงพยาบาลชุมชนแม่ข่าย(M2) มีแพทย์ผู้เชี่ยวชาญ 5 สาขาหลักครบตามเกณฑ์','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('218','ร้อยละสถานบริการสุขภาพที่ผ่านเกณฑ์ดัชนีผู้ป่วยใน (CMI) ที่กาหนดของแต่ละระดับสถานบริการสุขภาพตาม Service Plan','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('219','โรงพยาบาลทุกกระดับได้รับการรับรองคุณภาพ HA','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('220','ร้อยละของผู้ป่วยโรคกล้ามเนื้อหัวใจขาดเลือดเฉียบพลัน (STEMI) ได้รับยา ละลายลิ่มเลือด และ/หรือ การขยายหลอดเลือดหัวใจ ( PPCI ? PrimaryPercutaneous Cardiac Intervention) (ร้อยละ 75 )','Y','1',NULL,'Y',NULL,NULL,'1',90.00,'N',NULL),
	('221','อัตราตายผู้ป่วยบาดเจ็บต่อสมองลดลง (Fatality Rate) (รหัส ICD S06.0-S06.9)','Y','1',NULL,'Y',NULL,NULL,'1',90.00,'N',NULL),
	('222','สัดส่วนของผู้ป่วยมะเร็งเต้านม /มะเร็งปากมดลูก ระยะที่ 1 และ 2 ไม่น้อยกว่าร้อยละ 70 )','N',NULL,NULL,'Y',NULL,NULL,'1',90.00,'N',NULL),
	('223','ลดอัตราการเสียชีวิตในโรงพยาบาลของทารกแรกเกิดน้าหนักต่ากว่า 2,500 กรัม ภายใน 28 วัน(ร้อยละ 5)','Y','1',NULL,'Y',NULL,NULL,'1',90.00,'N',NULL),
	('224','ร้อยละของผู้ป่วยโรคซึมเศร้า/โรคจิต เข้าถึงบริการ (ไม่น้อยกว่า 31%)','Y',NULL,NULL,'Y',NULL,NULL,'1',90.00,'Y',NULL),
	('225','การส่งต่อผู้ป่วย 5 สาขาหลักจากรพช.แม่ข่าย (Node) Refer out ไปรพศ./รพท. ลดลง','N',NULL,NULL,'Y',NULL,NULL,'1',90.00,'N',NULL),
	('226','อัตราความชุกของตาบอดลดลง','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('227','ร้อยละของผู้ป่วยโรคไตเรื้อรังที่มีการลดลงของ (eGFR) <4 มล/1.72 ม2 /นาที/ปี','N',NULL,NULL,'Y',NULL,NULL,'1',90.00,'N',NULL),
	('228','เพิ่มการเข้าถึงบริการสุขภาพช่องปากของประชาชนทุกกลุ่มวัย ในหน่วยบริการทุกระดับ','N',NULL,NULL,'Y',NULL,NULL,'1',90.00,'N',NULL),
	('229','อัตราการรับไว้รักษาในโรงพยาบาลผู้ป่วยโรคปอดอุดกั้นเรื้อรัง','Y','1',NULL,'Y',NULL,NULL,'1',90.00,'Y',NULL),
	('230','ร้อยละ 80 ของอาเภอควบคุมโรคเข้มแข็งแบบยั่งยืนภายใต้ระบบสุขภาพอำเภอ','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('231','ร้อยละ 70 ช่องทางเข้าออกระหว่างประเทศและจังหวัดชายแดนที่เป็นเป้าหมายผ่านเกณฑ์การประเมินที่กาหนด','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('232','ระดับความสาเร็จของการจัดการงานคุ้มครองผู้บริโภคระดับเขต','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('233','ร้อยละของคลินิกเวชกรรมที่ให้บริการด้านเสริมความงามและคลินิกที่ไม่ได้รับอนุญาตให้ประกอบกิจการสถานพยาบาลได้รับการเฝ้าระวังและให้ดาเนินการตามกฎหมาย','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('234','ร้อยละของคลินิกเวชกรรมที่ให้บริการด้านเสริมความงาม ได้รับการตรวจมาตรฐาน','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('235','ร้อยละของเรื่องร้องเรียนคลินิกที่ไม่ได้รับอนุญาตให้ประกอบกิจการสถานพยาบาลได้รับดาเนินการตามกฎหมาย','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('236','ร้อยละของผลิตภัณฑ์และสถานประการอาหารมีคุณภาพมาตรฐานตามเกณฑ์ที่กาหนด','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('237','ระดับความสาเร็จในการขับเคลื่อนกิจกรรมส่งเสริมการใช้ยาปลอดภัยในชุมชนนาร่อง','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('238','ร้อยละชองการโฆษณาด้านสุขภาพที่ผิดกฎหมายได้รับการจัดการ','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('239','ร้อยละของข้อร้องเรียนของผู้บริโภคได้รับการแก้ไขภายในระยะเวลาตามที่กาหนด','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('240',' ระดับความสาเร็จของการดาเนินงานโครงการอื่นที่เขตกาหนด','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('241','ร้อยละของเทศบาลทุกระดับมีระบบบริการอนามัยสิ่งแวดล้อมได้มาตรฐาน','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('242','เขตสุขภาพมีระบบฐานข้อมูล สถานการณ์สิ่งแวดล้อมและสุขภาพ ระบบเฝ้าระวัง ด้านสิ่งแวดล้อมและสุขภาพ','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('243','ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขมีการจัดการมูลฝอยติดเชื้อ ตามกฎหมาย','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('244','ระดับความสาเร็จในการวางแผนกาลังคน','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('245','ระดับความสาเร็จของการพัฒนาบุคลากรด้านบริหารและบริการ','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('246','หน่วยบริการในพื้นที่มีต้นทุนต่อหน่วยไม่เกินเกณฑ์เฉลี่ยลุ่มระดับบริการ','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('247','ผู้บาดเจ็บจากเหตุการณ์ความไม่สงบในพื้นที่ที่มีอัตราการรอดชีวิตสูงไม่ควรเสียชีวิต','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('248','ร้อยละของเด็กที่ได้รับผลกระทบได้รับการติดตามดูแลปัญหาสุขภาพจิตแบบบูรณาการอย่างต่อเนื่อง','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('249','มีระบบส่งเสริมพัฒนาการเด็กและพัฒนาสติปัญญา','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('250','อัตราการหยุดเสพ (Early Remission Rate) ในผู้ป่วยติดยาและสารเสพติดในระฟื้นฟูสมรรถภาพ','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL),
	('251','ผลการประเมินคะแนนความสุขในการปฏิบัติงานของเจ้าหน้าที่ในจังหวัดชายแดน ภาคใต้','N',NULL,NULL,'Y',NULL,NULL,'2',90.00,'N',NULL);

/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table results
# ------------------------------------------------------------

DROP TABLE IF EXISTS `results`;

CREATE TABLE `results` (
  `kpi_id` varchar(5) NOT NULL,
  `province` varchar(5) NOT NULL DEFAULT '',
  `hospcode` varchar(10) NOT NULL DEFAULT '',
  `total` int(12) DEFAULT NULL,
  `s_year` varchar(5) NOT NULL DEFAULT '',
  `s_month` varchar(5) NOT NULL DEFAULT '',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`kpi_id`,`province`,`hospcode`,`s_year`,`s_month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table targets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `targets`;

CREATE TABLE `targets` (
  `kpi_id` varchar(5) NOT NULL,
  `province` varchar(5) NOT NULL DEFAULT '',
  `hospcode` varchar(10) NOT NULL DEFAULT '',
  `total` int(6) DEFAULT NULL,
  `kpi_year` varchar(5) NOT NULL DEFAULT '',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`kpi_id`,`province`,`hospcode`,`kpi_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
