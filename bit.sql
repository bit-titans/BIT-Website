-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: bit
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Announcements`
--

DROP TABLE IF EXISTS `Announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `adate` date DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Announcements`
--

LOCK TABLES `Announcements` WRITE;
/*!40000 ALTER TABLE `Announcements` DISABLE KEYS */;
INSERT INTO `Announcements` VALUES (1,'1st','2020-01-22',''),(2,'2nd','2020-01-22','Body2'),(4,'3rd','2020-01-22','Body3'),(5,'4th','2020-01-22','Body4'),(6,'5th','2020-01-22','Body5'),(7,'6th','2020-01-22','Body6');
/*!40000 ALTER TABLE `Announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Faculty`
--

DROP TABLE IF EXISTS `Faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Faculty` (
  `id` varchar(5) NOT NULL,
  `FName` text,
  `Designation` text,
  `Qualification` text,
  `Email` text,
  `Dept` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Faculty`
--

LOCK TABLES `Faculty` WRITE;
/*!40000 ALTER TABLE `Faculty` DISABLE KEYS */;
INSERT INTO `Faculty` VALUES ('CS01','Dr. Asha. T','Professor & H.O.D','B.E.,M.E.,Ph.D','asha.masthi@gmail.com','CSE'),('CS02','Shobha Y','Associate professor','M.E','shobha.bitcse@gmail.com','CSE'),('CS03','Dr. D G Jyothi','Associate Professor & PG Coordinator','B.E,M.S','jyothi.bitcse@gmail.com','CSE'),('CS04','Dr. T. Vijaya Kumar','Associate professor','M.Sc., M.Tech','vijaykrte@gmail.com','CSE'),('CS05','Girija J.','Associate professor','B.E. , M. Tech., (Ph.D)','girija.bitcse@gmail.com','CSE'),('CS06','B. N. Shankar Gowda','Associate professor','B.E, M.I.T','bnsgowda@gmail.com','CSE'),('CS07','S. Keshava Murthy','Assistant Professor','B.E, M.S','skmurthy107@yahoo.co.in','CSE'),('CS08','Dr. Suneetha K R','Assistant Professor','B.E, M.Tech., Ph.D','suneetha.bit@gmail.com','CSE'),('CS09','Savitha. S. K','Assistant Professor','B.E, M.Tech.,','savithabit06@gmail.com','CSE'),('CS10','Kanchan A Purohit','Assistant Professor','B.E,M.Tech','kanchan.md10@gmail.com','CSE'),('CS11','Harish Kumar B T','Assistant Professor','M.Tech','harish_bitcse82@gmail.com','CSE'),('CS12','Nethravathy V','Assistant Professor','B.E, M.Tech','nethra_v@rediffmail.com','CSE'),('CS13','N Thanuja','Assistant Professor','B.E,  M.Tech ','thanu.anu21@gmail.com','CSE'),('CS14','Dr. M.Kempanna','Assistant Professor','M.E. Ph.D','kempsindia@yahoo.com','CSE'),('CS15','D.R. Nagamani','Assistant Professor','B.E., M.Tech','nmanirrr@gmail.com','CSE'),('CS16','Hemavathi P','Assistant Professor','B.E., M.Tech,Ph.D','hemavathibitcse09@gmail.com','CSE'),('CS17','Bhargavi.M.S','Assistant Professor','B.E, M.Tech, Ph.D','ms.bhargavi@gmail.com','CSE'),('CS18','K.N Prashanth kumar','Assistant Professor','B.E, M.Tech','prashanth.bit81@gmail.com','CSE'),('CS19','K.J Bhanushree','Assistant Professor','B.E., M.Tech','bssrm09@gmail.com','CSE'),('CS20','Mamatha. V','Assistant Professor','M.E','mamathavenk@gmail.com','CSE'),('CS21','Maya B S','Assistant Professor','M.Tech (CS)','bs1985.maya@gmail.com','CSE'),('CS22','Madhuri J','Assistant Professor','B.E., M.Tech','madhurimanjunath@gmail.com','CSE'),('CS23','Gunavathi H S','Assistant Professor','M. Tech','gunavathihs@gmail.com','CSE'),('CS24','Prathima M G','Assistant Professor','B.E., M.E','prathima005@gmail.com','CSE'),('CS25','Anjini. L','Assistant Professor','B.E, M.Tech','anjini.nagesh@gmail.com','CSE'),('CS26','T. P Manasa','Assistant Professor','B.E, M.Tech','manasatp@gmail.com','CSE'),('CS27','Suma L','Assistant Professor','B.E, M.Tech','sumahalgur@gmail.com','CSE'),('CS28','Manasa C','Assistant Professor','B.E, M.Tech','manasa244@gmail.com','CSE'),('CS29','Mahalakshmi C V','Assistant Professor','B.E, M.Tech','mahalakshmicv@gmail.com','CSE'),('CS30','Tejashwini P S','Assistant Professor','B.E, M.Tech','tejashwini.bit@gmail.com','CSE'),('CS31','Bhavana K V','Assistant Professor','B.E, M.Tech','bvg20.cse@gmail.com','CSE'),('CS32','Varshitha K C','Assistant Professor','B.E, M.Tech','varshithakc@gmail.com','CSE'),('CS33','Sushma H R','Assistant Professor','B.E, M.Tech','sushmahr6@gmail.com','CSE'),('CS34','Nikitha KS','Assistant Professor','B.E, M.Tech','varshithakc@gmail.com','CSE'),('CS35','Priya Srinivasa','Assistant Professor','B.E, M.Tech','priyapurvika@gmail.com','CSE'),('CS36','Divyashree P','Assistant Professor','B.E, M.Tech','divya.p0487@gmail.com','CSE'),('CS37','Archana A','Assistant Professor','B.E, M.Tech','a.rchana0486@gmail.com','CSE'),('CS38','Shruthi B R','Assistant Professor','B.E, M.Tech','shruthirami91@gmail.com','CSE'),('CS39','Shruthi A','Assistant Professor','B.E, M.Tech','shruthi.tushara@gmail.com','CSE'),('CS40','Chaitra K','Assistant Professor','B.E, M.Tech','chaitrakumar25@gmail.com','CSE'),('CS41','Kavitha K','Assistant Professor','B.E, M.Tech','kavi123monu@gmail.com','CSE'),('CS42','Pooja Rangaswamy','Assistant Professor','B.E, M.Tech','poojapatel1234@gmail.com','CSE'),('CV01','DR.H.B.BALAKRISHNA','Professor and Head','-','balubit@gmail.com,hbbalakrishna@bit-bangalore.edu.in','CV'),('CV02','DR.H.N.JAGANNATHA REDDY','Professor, Deputed as Registrar, VTU','-','jagannath.priyadhi@gmail.com,jagannathareddyhn@bit-bangalore.edu.in','CV'),('CV03','MR.C.R.DEVARAJ','Associate Professor','-','dev0919@gmail.com,devarajcr@bit-bangalore.edu.in','CV'),('CV04','MR.G.C.RANGANATH','Associate Professor','-','r.gc@rediffmail.com,ranganathgc@bit-bangalore.edu.in','CV'),('CV05','MR.M.B.GIRISH','Associate Professor','-','Mb_girish@yahoo.in,girishmb@bit-bangalore.edu.in','CV'),('CV06','DR.P.M.RAVINDRA','Professor and PG Coordinator','-','pmrbit@yahoo.in,ravindrapm@bit-bangalore.edu.in','CV'),('CV07','DR.K.C.JAYARAMU','Professor','-','kcjayarambit@gmail.com,jayaramukc@bit-bangalore.edu.in','CV'),('CV08','DR.K.V.VIJAYENDRA','Professor','-','kvvcivil@gmail.com,vijayendrakv@bit-bangalore.edu.in','CV'),('CV09','MR.D.SHIVAPRASAD','Associate Professor','-','shivdsp@rediffmail.com,shivaprasadd@bit-bangalore.edu.in','CV'),('CV10','MR.RAMESH BABU','Assistant Professor','-','sgrb97@yahoo.com,rameshbabu@bit-bangalore.edu.in','CV'),('CV11','DR.RUDRE GOWDA','Assistant Professor','-','challyrg737@gmail.com,rudregowdarg@bit-bangalore.edu.in','CV'),('CV12','DR.B.S.PUTTE GOWDA','Assistant Professor','-','puttuji123@gmail.com,puttegowdabs@bit-bangalore.edu.in','CV'),('CV13','DR.VATHSALA','Assistant Professor','-','vathsalagowda@gmail.com,vathsalagowda@bit-bangalore.edu.in','CV'),('CV14','DR.N.JEEVAN','Assistant Professor','-','njeevan19@gmail.com,jeevan@bit-bangalore.edu.in','CV'),('CV15','MR.K.V.MAHESH CHANDRA','Assistant Professor','-','mckv83@gmail.com,maheshchandrakv@bit-bangalore.edu.in','CV'),('CV16','MR.GANGADHARA.S','	Assistant Professor	','-','gangadharasbit@gmail.com,gangadharas@bit-bangalore.edu.in','CV'),('CV17','MR.PRADEEP.C.R','Assistant Professor','-','Pradeep.cr8586@gmail.com,pradeepcr@bit-bangalore.edu.in','CV'),('CV18','MRS.ASHWINI.H.D','Assistant Professor','-','Hd.ashwini377@gmail.com,ashwinihd@bit-bangalore.edu.in','CV'),('CV19','MR.KARTHEEK.B.S','Assistant Professor','-','kartheek.bs@gmail.com,karthikbs@bit-bangalore.edu.in','CV'),('CV20','MRS.ARCHANA.D.P','Assistant Professor','-','archana3190@gmail.com,archanadp@bit-bangalore.edu.in','CV'),('CV21','MR.MADHAN.S','Assistant Professor','-','madhanshr@gmail.com,madhans@bit-bangalore.edu.in','CV'),('CV22','MR.PUNEETH.M.S','Assistant Professor','-','Puneethms24@gmail.com,puneethms@bit-bangalore.edu.in','CV'),('CV23','MS.THANUJA.H.P','Assistant Professor','-','Thanuja1990civil@gmail.com,thanujahp@bit-bangalore.edu.in','CV'),('CV24','MR.PRASAD GOWDA.C','Assistant Professor','-','pppgowda@gmail.com,prasadgowdac@bit-bangalore.edu.in','CV'),('CV25','MRS. KAVYASHREE.R.R','Assistant Professor','-','Kavyashree.r.r@gmail.com,kavyashreerr@bit-bangalore.edu.in','CV'),('CV26','MR. SHREYAS.A.C','Assistant Professor','-','Shreyas9125@icloud.com,shreyasac@bit-bangalore.edu.in','CV'),('CV27','MR. CHETHAN CHANDRU','Assistant Professor','-','Chethanchandru92@gmail.com,chethanchandru@bit-bangalore.edu.in','CV'),('CV28','Mrs.HEMALATHA K','Assistant Professor','-','Latha.knhl@gmail.com,hemalathak@bit-bangalore.edu.in','CV'),('CV29','K.M.KIRAN','Assistant Professor','-','Kirangowda300@gmail.com,kirankm@bit-bangalore.edu.in','CV'),('CV30','SMT. KAVANA S','Assistant Professor','-','kavana.shankaregowda@gmail.com,kavanas@bit-bangalore.edu.in','CV'),('CV31','Mr. MALLIKARJUNA K','Assistant Professor','-','	Malinavi.reddy@ gmail.com,mallikarjunak@bit-bangalore.edu.in','CV'),('CV32','MR. S POORNACHANDRA THEJASWI','Assistant Professor','-','poornachandra.thejaswi81@gmail.com,poornachandrathejaswis@bit-bangalore.edu.in','CV'),('CV33','DEEPIKA K.C.','Assistant Professor','-','civil.deepika@gmail.com,deepikakc@bit-bangalore.edu.in','CV'),('CV34','MRS. RASHMI R','Assistant Professor','-','Rashmireddy.bit@gmail.com,rashmir@bit-bangalore.edu.in','CV'),('CV35','MR. SACHIN T M','Assistant Professor','-','Sachin.mandya888@gmail.com,sachintm@bit-bangalore.edu.in','CV'),('CV36','MR. DILIP N','Assistant Professor','-','dil.rak@gmail.com,dilipn@bit-bangalore.edu.in','CV'),('CV37','Dr. H.K. Lakshmipathiah','Professor','-','geopathi@rediffmail.com,lakshmipathiah@bit-bangalore.edu.in','CV'),('EC01','Dr.K.V PRASAD','Professor','B.Tech, M.Tech, Ph.D(U.K)','drsvt@yahoo.com','ECE'),('EC02',' Dr.SREE RANGA RAJU M N','Professor','B.E, M.Tech, Ph.D','mnsrr@rediffmail.com','ECE'),('EC03',' Dr. HEMANTH KUMAR A.R','Professor','B.E, M.Tech, Ph.D','drhkar2010@gmail.com','ECE'),('EC04',' Dr.VIJAYA PRAKASH A.M','Professor','B.E,M.E, Ph.D','am_vprakash@yahoo.co.in','ECE'),('EC05',' Dr.BYRA REDDY. C.R','Professor','B.E, M.E, Ph.D','byrareddycr@yahoo.co.in','ECE'),('EC06',' GOPINATH .C.Y','Associate Professor','B.E, M.Tech (Ph.D)','gopinath_cyg@yahoo.com','ECE'),('EC07',' NIRMALA KUMARI .K','Associate Professor','B.E, M.E','knkbit@gmail.com','ECE'),('EC08',' CHANDRASHEKARAPPA.K','Associate Professor','B.E, M.Tech','kcsbit@gmail.com','ECE'),('EC09',' SUJATHA .S','Associate Professor','B.E, M.E','bit.sujatha@gmail.com','ECE'),('EC10',' RADHA B.L','Associate Professor','B.E, M.E(Ph.D)','radha_bl@rediffmail.com','ECE'),('EC11',' KARUNAVATI R.K','Associate Professor','B.E, M.E','rkk_dcj@yahoo.com','ECE'),('EC12','SUDHA .H','Associate Professor','B.E, M.E','bitsudha@yahoo.com','ECE'),('EC13','VEENA H.S','Associate Professor','B.E, M.E','veena3.sastry@gmail.com','ECE'),('EC14','Dr.KALPANA. A.B','Associate Professor','B.E, M.E, Ph.D','abkalpana@gmail.com','ECE'),('EC15','Dr.NARENDRA. C.P','Associate Professor','B.E, M.Tech, Ph.D','narendracp@rediffmail.com','ECE'),('EC16','Prem Chandra R.L','Associate Professor','B.E, M.E','rlpgowda@gmail.com','ECE'),('EC17','NARAYANA SWAMY J.C','Assistant Professor','B.E, M.E','jcnswamy@gmail.com','ECE'),('EC18','KRISHNA. R','Assistant Professor','B.E, M.E','krishnar129@yahoo.com','ECE'),('EC19','PUSHPANJALI.J','Assistant Professor','B.E, M.E','pushpanjalijayachandra@yahoo.com','ECE'),('EC20','BHAGIRATHI. N.M','Assistant Professor','B.E, M.E','bhagirathin.m485@yahoo.com','ECE'),('EC21','DHANALAKSHMI. L','Assistant Professor','B.E, M.E (Ph.D)','dhanalakshmil31@yahoo.co.in ','ECE'),('EC22','Dr.MUKTHI. S.L','Assistant Professor','B.E, M.Tech, Ph.D','chakshu.son@gmail.com','ECE'),('EC23','Dr.VIJAYA LAKSHMI. D','Assistant Professor','B.E, M.E, Ph.D','vijibit@gmail.com','ECE'),('EC24','SHYLAJA. V','Assistant Professor','B.E, M.Tech ','narayanb2@gmail.com','ECE'),('EC25','SRINIVASA MURTHY. R','Assistant Professor','B.E, M.Tech ','srinivasamurthyr@yahoo.co.in','ECE'),('EC26','JALAJA. S','Assistant Professor','B.E, M.Tech(Ph.D) ','jalajabit@gmail.com','ECE'),('EC27','NIRANJAN .E','Assistant Professor','B.E, M.E (Ph.D)','ne_gowda@yahoo.co.in ','ECE'),('EC28','K P LEELA','Assistant Professor','B.E, M.E ','leelasuda@yahoo.com','ECE'),('EC29','THEJASWINI B M','Assistant Professor','B.E, M.Tech','thejaswini.bmg@gmail.com','ECE'),('EC30','M.V.RANJEETHA','Assistant Professor','BE, MTech','work.ranjeetha@gmail.com','ECE'),('EC31','Yashaswini M','Assistant Professor','BE, MTech ','yashaswini.mgowda@gmail.com ','ECE'),('EC32','NAVANEETH NATARAJ','Assistant Professor','B.E, M.Tech ','navaneeth_nataraj2002@yahoo.com','ECE'),('EC33','HITHAISHI DEVARAJ','Assistant Professor','B. E,  M. Tech ','work.hithaishi@gmail.com   ','ECE'),('EC34','SHILPA.B','Assistant Professor','B.E, M.Tech ','shilpa.b1104@gmail.com','ECE'),('EC35','SACHIN.B.M','Assistant Professor','B.E, M.Tech','sachinbm99@gmail.com','ECE'),('EC36','JANARDHAN R','Assistant Professor','B.E, M.Tech',' Janardhanrangappa@gmail.com ','ECE'),('EC37','VANISRI.K','Assistant Professor','B.E, M.Tech',' vani.vinutha@gmail.com','ECE'),('EC38','ANIL KUMAR.G.N','Assistant Professor','B.E., M.Tech','anilgowda44@gmail.com','ECE'),('EC39','KESHAVA.A','Assistant Professor','B.E., M.Tech ','keshava.2805@gmail.com','ECE'),('EC40','GAHAN.A.V','Assistant Professor','B.E., M.Tech ','gahanbit@gmail.com ','ECE'),('EC41','HITHAISHI.P','Assistant Professor',' BE, M.Tech','hithu.powda@gmail.com ','ECE'),('EC42','SANTHOSH B','Assistant Professor','B.E., M.Tech ','santhoshb366@gmail.com ','ECE'),('EC43','VIDYASHREE.G.P','Assistant Professor',' BE, M.Tech ',' vidya.parva@gmail.com ','ECE'),('EC44','MANASA P','Assistant Professor','B.E , M.Tech',' emanasagowda@gmail.com  ','ECE'),('EC45','Vidyasaraswathi H.N','Assistant Professor','B.E , M.Tech',' vidyanaveen24@gmail.com  ','ECE'),('EC46','JESMITHA S','Assistant Professor','B.E , M.Tech',' jesmitha.n@gmail.com ','ECE'),('EC47','CHETHAN K ','Assistant Professor','B.E , M.Tech',' chethangowda02@gmail.com','ECE'),('EC48','Swathi','Assistant Professor','B.E, M.Tech','swathi.maheshwara@gmail.com','ECE'),('EC49','BHAVYA K B','Assistant Professor','B.E , M.Tech','bhavyagowdakb@gmail.com  ','ECE'),('ME01','Dr. S. Vidya Shankar\n(Deputed as Vice Chancellor to Karnataka State\nOpen University, Mysore)','Professor','BE, ME, PhD','Svs_iste@yahoo.co.in','ME'),('ME02','Dr. Sreerama Reddy T V','Professor & HOD','BE, ME, PhD','bittvs@gmail.com','ME'),('ME03','Dr. Ravi Kumar B N','Professor & PG Coordinator (MMD)','BE, ME, PhD','ravikumarbn_bit@yahoo.co.in','ME'),('ME04','Dr. Ashwath','Associate Professor','BE, MTech, Ph.D','dr.aswath999@gmail.com','ME'),('ME05','Dr. Satish N','Associate Professor & PG Coordinator (MSE)','BE, ME, PhD','Nsatish.bit@gmail.com','ME'),('ME06','Dr. Reddappa H.N.','Associate Professor','BE, MTech, Ph.D','reddappa@bit-bangalore.edu.in','ME'),('ME07','Dr. Honne Gowda','Associate Professor','BE, MTech, PhD','bithonnegowda@gmail.com','ME'),('ME08','Dr. M.C.Manjunath','Associate Professor','BE, ME, PhD','Mcmanju2003@gmail.com','ME'),('ME09','Dr. M.K.Prasanna Kumar','Assistant Professor','BE, MTech, PhD','prasannabit@gmail.com','ME'),('ME10','Mr. V.C.Ravi','Assistant Professor','BE, MTech','ravivc_ravivc@yahoo.co.in','ME'),('ME11','Mr. M.R. Praveen Kumar','Assistant Professor','BE, MTech','pkm_1947@rediffmail.com','ME'),('ME12','Mr. Umesh G.L','Assistant Professor','BE, MTech','gl_umesh@yahoo.co.in','ME'),('ME13','Mrs. N.L.Shanthala','Assistant Professor','BE, MTech','nls_subbu@ymail.com','ME'),('ME14','Dr. Nagaraja .C. Reddy','Assistant Professor','BE, MTech, Ph.D','ncreddy@bit-bangalore.edu.in','ME'),('ME15','Mr. Ravindra K G','Assistant Professor','BE, MTech','rv_kg@yahoo.co.in','ME'),('ME16','Mr. Hemath Kumar. C. B','Assistant Professor','BE, MTech','yashaswini.yogendra19@gmail.com','ME'),('ME17','Mr. Suresh C','Assistant Professor','BE, MTech','Sureshc@bit-bangalore.edu.in','ME'),('ME18','Dr. Chetan  B','Assistant Professor','BE, MTech, Ph.D','chetbk@gmail.com','ME'),('ME19','Mr. S. M. Jayadev','Assistant Professor','BE, MTech','jaidevsm@gmail.com','ME'),('ME20','Dr. Babu E.R.','Assistant Professor','BE, MTech, Ph.D','rajjbabu@bit-bangalore.edu.in','ME'),('ME21','Mr. Lingesh B V','Assistant Professor','BE, MTech','blingesh@gmail.com','ME'),('ME22','Mr. Girish. B.','Assistant Professor','BE, ME','girishb@bit-bangalore.edu.in','ME'),('ME23','Dr. H.N. Prem Kumar','Assistant Professor','BE, MTech','premkumarhn@yahoo.co.in','ME'),('ME24','Dr. A. Chandrashekar.','Assistant Professor','BE, MTech, Ph.d','chandrashekara@bit-bangalore.edu.in','ME'),('ME25','Mr. Vijayakumar V M','Assistant Professor','BE, MTech','Vijayakumaravm092@gmail.com','ME'),('ME26','Mr. Madhusudhan M','Assistant Professor','BE, MTech','madhubit04@gmail.com','ME'),('ME27','Mr. Kumar P L','Assistant Professor','BE, MTech','kummipl@gmail.com','ME'),('ME28','Mr. Rakshith O R','Assistant Professor','BE, MTech','rakshith.or@gmail.com','ME'),('ME29','Mr. Rajesh A','Assistant Professor ','BE, MTech','rajeshamech@gmail.com','ME'),('ME30','Mr. Pratik. V','Assistant Professor ','BE, MTech','pratik.sporty@gmail.com','ME'),('ME31','Mr. K. Nishanth Gowda','Assistant Professor ','BE, MTech','nishanthbit2016@gmail.com','ME'),('ME32','Mr. C. Soma Shekar','Assistant Professor','BE, MTech','somshekar039@gmail.com','ME'),('ME33','Mr. Vasanth Kumar. R','Assistant Professor ','BE, MTech','vasanthkumarmechanical@gmail.com','ME'),('ME34','Mr. G. Mohan Kumar','Assistant Professor','BE, MTech','mohankg05@gmail.com','ME'),('ME35','Mr. D. N. Jagadeesha','Assistant Professor','BE, MTech','jagadeeshadn1@gmail.com','ME'),('ME36','Mr. Sushil. V. Kumar','Assistant Professor','BE, MTech','sushilvkumar06@gmail.com','ME'),('ME37','Mr. Manjunath Y. J.','Assistant Professor','BE, MTech','manjunathyj@bit-bangalore.edu.in','ME'),('ME38','Ms. Sahana Reddy','Assistant Professor','BE, MTech','Sahanareddy@bit-bangalore.edu.in','ME'),('ME39','Mr. Santhosh Kumar M','Assistant Professor ','BE, MTech','santoshkumarm@bit-bangalore.edu.in','ME');
/*!40000 ALTER TABLE `Faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `Dname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`Dname`),
  CONSTRAINT `fkd` FOREIGN KEY (`id`) REFERENCES `Announcements` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-27 10:50:21
