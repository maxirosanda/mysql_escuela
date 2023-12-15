CREATE DATABASE  IF NOT EXISTS `escuela` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `escuela`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: escuela
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id_alumno` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(15) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`id_alumno`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'111111111','Carlos','Lopez',26),(2,'36397097','Bocanera','Damian',32),(3,'19061587','Ferrufino arando','Miguel angel',29),(4,'44737050','espindola','tamara soledad',26),(5,'26281640','CICCONE','NOELIA',45),(6,'22759028','MASANA','Karina Elizabeth',51),(7,'32617935','Moscovich','Sabrina',37),(8,'28304498','OCHOA','DEBORA GISELA',43),(9,'37205359','Martínez','Carla agustina',0),(10,'24296840','Lugo','Gladys del valle',0),(11,'45748360','Grippo','Antonella giuliana',19),(12,'50340848','Varas','Erika Yanneth',26),(13,'32309403','Cuñer','Carla Mariela',37),(14,'26345957','Narbaez','Claudia Evangelina',45),(15,'31522299','González','Ángel Leandro',38),(16,'47792577','Lezcano','Rocío Lezcano',20),(17,'42826649','Peralta','omas Alejandro',23),(18,'42962319','Correa','Marisol Marianella',23),(19,'18024235','TEJEDA','NORMA ELENA TEJEDA',57),(20,'18089577','TEJEDA','ADRIANA ESTELA',56),(21,'32262704','Ortiz','Silvia Veronica',37),(22,'20572803','Girola','Cecilia Inés',54),(23,'37674050','Gesa','Gustavo David',31),(24,'92390366','Huerta','Rosa Marina',49),(25,'29843391','Molina','Rosana soledad',40),(26,'38125608','Zerillo','Magali belen',29),(27,'44749309','Pantano','Melisa Esmeralda',20),(28,'24555140','Hernández','Gabriela Elena',48),(29,'37839820','Ramírez','Karen trinidad',29),(30,'27728686','Moreno','Ximena Alejandra',43),(31,'29077886','Farias','Gisela elisa',42),(32,'42021882','Corvalan','Camila belen',24),(33,'35538500','Mazzucca','Julieta Carolina',1),(34,'44888682','Carabajal','Micaela Aylen Carabajal',20),(35,'11822632','Cruel','idia Beatriz',68),(36,'17739338','gamboa','abriel fernando',57),(37,'28337354','Dominguez','Marcela Alejandra',43),(38,'94468609','Chávez','Pabla Patricia',33),(39,'32573336','Oviedo','Natalia Paula',37),(40,'40350801','AREVALO','MICAELA JOANA',27),(41,'33346083','fuentes','barbara sabrina',36),(42,'26920106','Audala','Reina Analia',44),(43,'39775146','Guerrero','Camila ayelen',27),(44,'26461945','Gimenez','Valeria vanesa',45),(45,'94277028','torrico gonzales','Quenia',32),(46,'44822983','Duarte','Santiago Ezequiel',20),(47,'43458498','Bisignano Hübner','Lobo Simón',22),(48,'36275945','samora cayeta','cynthia soledad',32),(49,'32123406','Gonzalez','Sabrina Elisabeth',37),(50,'45995735','Ortiz','Benjamín Jonathan',1),(51,'43817132','Chanampa Lopez','Adriana Maxima',20),(52,'30358291','Perichon','Silvina andrea',40),(53,'43210132','Veksman','José Luis',22),(54,'43307253','Verón','Facundo',22),(55,'93868407','García','Shirle Enita',50),(56,'41742815','Gira Frias','Nahir Zahira',23),(57,'40526397','Argañaraz','Maria camila',26),(58,'95516123','Vargas cabrera','Analia',19),(59,'41823721','Rodriguez','Jazmin Violeta',24),(60,'43173493','Fernandez','Belen carolina',22),(61,'38687861','bejarano','facundo martin',28),(62,'26061559','Scardino','aria ester',46),(63,'44512225','garcia hinojosa','Nahuel Nicolas',20),(64,'21951606','SANCLAUDIO','ANA',52),(65,'31522104','Guerrero','Luis Adrián',38),(66,'44887687','Vera','Florencia Ludmila Paula',20),(67,'39243439','cabrera','giuliana',28),(68,'45687095','Granado Sanchez','Brisa Magali',19),(69,'35979746','veron','nora',32),(70,'36525178','Enrrique','Daniela Gisele',30),(71,'35325999','Cabral','Nahuel facundo',33),(72,'22464132','Delgado','Viviana Blanca Ines',51),(73,'40024340','pronzato','matias ezequiel',26),(74,'22472344','Valdez','Viviana',51),(75,'42819236','Maidana veron','Alex Mathias',22),(76,'34072389','Gangale Lombardi','Carla Sofía',35),(77,'31067753','Ramírez','Liliana griselda',39),(78,'17953709','Fernández','María de los Angeles',56),(79,'45686894','Gimenez','Alejandra Anahi',19),(80,'25764593','Heidenreich','Valeria Teresa',46),(81,'40635371','Moreno','Brian Ezequiel',26),(82,'38862585','vega','rocio yanet',28),(83,'39214497','Scrocca','Nahuel',28),(84,'19004364','Ferrari Lopez','Marcia Elizabeth',37),(85,'40849176','Mendez','Eduardo Rodrigo',25),(86,'24957142','Capra','Roxana Ines',47),(87,'18449601','Echegaray','Claudia Mónica',56),(88,'38346383','Castro','Jose Felix',29),(89,'41765380','Pogonza','Viviana Gisela',24),(90,'95448559','Acuña Guillén','Jessica Mabel',26),(91,'25424556','Gonzalez','Silvia lorena',47),(92,'38709428','Bruno','Marianela Belén',28),(93,'32092433','Di fronzo','Ivana Elizabeth',37),(94,'38130315','Toledo','Fiorella barbara',28),(95,'41247126','Fleitas','Natalia',25),(96,'42774837','Cabrera','Romina ayelen',23),(97,'19032708','Brez','Alexis Martin',29),(98,'30360333','Robles','Mario alberto',39),(99,'41745704','Fernandinho','Axel Leonel',24),(100,'35710927','Ponce','Noelia Yesica',31),(101,'37807952','Maruca','María Alejandra',30),(102,'43404007','couto','alexis damian',22),(103,'37688364','Bogado','Micaela giselle',30),(104,'44871851','Martinez','Lucila Abril',20),(105,'444578845','penna','yamila micaela',21),(106,'35604861','Genes','Maria Florencia',33),(107,'38467505','Agudo','Julieta',27),(108,'45324705','Ferreyra','Lucas Emiliano',19),(109,'42825917','souto','Jeanette Micaela',25),(110,'41581788','Amante Pérez','Nadia Irina',24),(111,'22589474','Canteros','Silvia Rosana',51),(112,'94558237','Báez Balbuena','Justina Rocio Soledad',43),(113,'25845000','Shlain','Silvia Eugenia',46),(114,'26047944','Albornoz','Liliana Analia',46),(115,'96108221','URRIETA COLMENARES','CARMEN ELENA',54),(116,'42722117','Dutrinit','Luciana',23),(117,'20313814','PALOMBO','MYRIAM ELIZABETH',55),(118,'41107412','Paco Porco','Silvina Esther',25),(119,'23766495','Torbidoni','Carlos Ariel',49),(120,'32232113','Narvaez','Aldana',37),(121,'44689222','Romero Villegas','Lara Naimid',20),(122,'38465727','Llanes','Camila',29),(123,'47685307','Ruiz Diaz','Lourdes Nazareth',24),(124,'38074068','Ramírez','Candelaria',29),(125,'44262541','Osorio Nieto','Martin Ariel',20),(126,'36515974','Nuñez','Leandro nahuel',32),(127,'42368497','Ruiz Díaz','María Marta',23),(128,'45904415','Ruiz Díaz','Bruno',19),(129,'43669846','Santosmingo','Nayla Alexandra',21),(130,'31774985','Barrios','Nancy Elisabeth',37),(131,'39064890','Ledesma','Michelle cynthia',28),(132,'40853205','Aquino','Aldana',26),(133,'44161089','ALMADA','MAXIMILIANO EMANUEL',21),(134,'42319802','maciel ferra','fiamma',23),(135,'21585011','ferra','claudia fabiana',53),(136,'43181111','villalba','sofia micaela',22),(137,'33309903','Coronado','Gisela Loana',0),(138,'43874673','Pacheco','Milagros ayelene',21),(139,'38125343','valenzuela','rocio violeta',29),(140,'25094722','Ramirez','Ricardo Ariel',47),(141,'39108514','Gimenez','Rocio Soledad',27),(142,'35378217','Raielo','Emiliano Ezequiel',33),(143,'26588878','AZCURRA','DEBORA ELIZABETH',45),(144,'32868095','Leal','Leonardo Gabriel',36),(145,'45465456','mauri','macarena oriana',19),(146,'33309554','Osses','Pamela romina',36),(147,'18380578','RAMOS','ALICIA TERESA',56),(148,'45738915','Maidana Cieri','Martina',19),(149,'44238324','Cáseres','Milagro Roxana Isabel',21),(150,'25797047','Cervigni','Elda',46),(151,'38445813','Farias','Debora Belen',29),(152,'41428423','Campos','Dario hernan',25),(153,'41914373','Beltran vicari','Agustin sebastian',24),(154,'44649878','Montes','Leila agostina',1),(155,'30023770','Herrera','Jesica Daiana',40),(156,'44252169','Lescano','Julia agistina',21),(157,'43468305','Franco','Micaela alejandra',22),(158,'26971170','Gimenez','Rosa del valle',1),(159,'44423147','Alfonso','Belen Abigail',26),(160,'28463981','Carrión','Emilse Ana',42),(161,'22573135','Gomez','Patricia Verónica',51),(162,'44457884','penna','yamila micaela',21),(163,'22550498','Rios','Mónica Alicia',51),(164,'94546590','QUICHU','FABIOLA',34),(165,'34539635','Noguera','Delia Yanina',34),(166,'9407850','Aguilera','Sonia',37),(167,'23154204','Miola','Maria Eugenia',50),(168,'43572754','jara alfonzo','victor damian jara alfonzo',22),(169,'25980978','lezcano','sandra paola',45),(170,'21820830','Veizaga','Monica gabriela',53),(171,'39863714','Aguirre','Silvina Estefanía',29),(172,'40976448','gomez','macarena',25),(173,'41129938','Fedele','Aldana Micaela',25),(174,'25930826','Gomez','Patricia Angelica',46),(175,'43173072','Marin cristaldo','Sofía antonella',22),(176,'35075746','Arce','Roxana',33),(177,'36954701','lopez','ivana yanet',33),(178,'30666957','visconti','Delia Gloria',39),(179,'95018788','Colman Avalos','Graciela Jazmin',18),(180,'17356631','Oro Altamirano','Veronika',58),(181,'28749246','Linarez','Andrea Romina',42),(182,'32655119','Zurita','Romina Giselle',36),(183,'40132702','TINTILAY','ELIZABETH SOFIA',26),(184,'42198055','SERRANO','ENZO',23),(185,'44627637','Amarilla','Carisa Mariel',20),(186,'23782935','De maría lencina','Paula Marcela',49),(187,'43016531','lores Rodriguez','Brisa Evelyn',22),(188,'33116112','Ruhl','Sonia Soledad',36),(189,'28785299','Martinez','José Augusto',42),(190,'28053650','Maldonado','Nadia Elena',43),(191,'31346785','Landaburu','Melisa Laura',38),(192,'31838780','QUIROGA','JESUS MATIAS',37),(193,'37217308','LAZARTE','FERNANDO ALEJANDRO',30),(194,'45996621','Fernández','Isis Luana',19),(195,'44514129','Villalba Correa','Alexis Esteban',20),(196,'32262907','Robles','Natalia Juana',37),(197,'38130444','Gonzalez','Natalia',27),(198,'2738130444','Gonzalez','Natalia Gisella',27),(199,'43585105','Almirón Sanchez','Florencia Aylén',22),(200,'28776941','Fleita','Analia',42),(201,'38130832','Guzman','Micaela rocio',29),(202,'43053744','Anessi','Milena sol',22),(203,'42572758','Salzmann','Alejo Ezequiel',23),(204,'45778644','Salzmann','Agustin nicolas',19),(205,'45012505','Bonanomi','Franco',20),(206,'42022623','Iozzi','Gisela Brigitte',5),(207,'22379639','Rueda','Verónica Lidia',50),(208,'41327441','Gonzalez Gomez','Gianluca Germán',25),(209,'42720245','Sánchez','Nicolás Agustín',23),(210,'43301932','nuñez','Sasha abigail',22),(211,'38130033','Medina','Florencia',29),(212,'40571093','Gómez','Micaela',26),(213,'2741544110','Paniagua','Micaela Ariana',24),(214,'44700183','Leguizamón','Damaris Abril',20),(215,'37908028','Santana','Romina Elizabeth',29),(216,'38266935','Sciascia','Laura Antonella',29),(217,'37843871','Britos','Daiana Giselle',30),(218,'92672093','Mariño Cuevas','Ana marcia',75),(219,'42774870','Rodriguez','Brenda',23),(220,'29661452','Garcia','Soledad',41),(221,'37905257','caivano','micaela daniela',30),(222,'40351790','Camara','Soledad',26),(223,'22572979','Diaz','Graciela Susana',51),(224,'39624853','Ercoli','María Belén',27),(225,'41894390','Frutos','Camila Belen',24),(226,'45206783','Benitez','melany georgina',19),(227,'29226303','Ponce','Silvia Isabel',55),(228,'25696560','Salinas','Sandra Mercedes',0),(229,'45475691','Vallejo','Juan Ignacio',19),(230,'21466803','Monserrat','Laura Alejandra',53),(231,'21472444','OSSES','NORA FERNANDA',53),(232,'45920088','Bazán','Ludmila Mariel',19),(233,'43818197','Lopez','Gianella Solange',21),(234,'36726557','olaz','fernanda',31),(235,'41281498','Delfino','Sofia Alejandra',25),(236,'40514183','Flores','Aldana Michelle',26),(237,'43814128','Gonzalez','Milagros Marilin',21),(238,'31144229','fidalgo','noelia romina',39),(239,'131400581','Medina','Norma Susana',65),(240,'27085439','Pino','Nancy Inés',44),(241,'31732413','Mendoza','María Belén',38),(242,'43386691','Escobar','Maria Celeste',22),(243,'41742834','Benitez','Rocio macarena',23),(244,'92829838','Rosso Arancibia','Hortencia',56),(245,'27555055','bordon','julio cesar',44),(246,'30829524','Zárate','Jésica Alejandra',39),(247,'43521047','Armoa','Johanna micaela',26),(248,'44396518','Arias','Brenda Ailen',1),(249,'418368069','García','Melina Antonella',24),(250,'44391001','Gutiérrez','Yazmin Florencia',21),(251,'93855927','Colque Rueda','Genia',49),(252,'42597214','Sandoval','Candela luna nahir',22),(253,'23847854','Ruiz','Norma Alicia',49),(254,'12349142','Luque','Yolanda Graciela',68),(255,'31944458','Verbeck','Verónica soledad',37),(256,'46147575','Segovia','Maria Jose',21),(257,'30217469','Albarracin','Ana Teresa',43),(258,'11989163','Veron','Graciela Leonor',68),(259,'45581578','Ruiz Batlle','Lara Agustina',19),(260,'38946161','Jardines','Daiana',28),(261,'44100702','Ferrari','Valentina',21),(262,'41474446','Torrilla','Carla Milena',25),(263,'38929375','Navarro','Jennifer',28),(264,'36903582','acevedo','rocio antonella',31),(265,'39628462','Martínez','Melanie Fabiana',27),(266,'43397060','Pinto','Maria Milagros',22),(267,'94538912','GONZALEZ BERNAL','MIRTA ELIZABETH',29),(268,'38862402','Lazo','Victoria Belén',28),(269,'29167040','Quinteros','Natalia Pamela',41),(270,'34213878','Larosa','Rocio belen',34),(271,'41713420','Gomez','Maylen Rocío',24),(272,'28573671','Marcos','Cintia debora',43),(273,'42775196','Silvero','Amira Hilen',23),(274,'52096008','Salgado marcos','Dayla milene',20),(275,'32111014','bonavoglia','MARIANO DOMINGO',37),(276,'31261972','Juarez','Noelia Jesica',38),(277,'31522098','Soria','Carla Fernanda',38),(278,'29305045','Lobelos','Paola carina',41),(279,'45928848','Rodríguez','Facundo ariel',19),(280,'36596757','Ricci','Vanesa beatriz',32),(281,'45401121','quiroga','camilo vicente',19),(282,'38130756','Pauli','Karen Yannet',29),(283,'24827449','Berdasco','Mariela karina',48),(284,'45130158','Cabrera','Celeste Agustina',20),(285,'43659428','Monserrate','Josefina Muriel',22),(286,'32525591','Robles','Elizabeth Romina',37),(287,'45739058','Capria','Micaela Victoria',19),(288,'18151347','Batlle','Cristina Inés',1),(289,'35486812','Francisco','Noelia yanina',33),(290,'94937944','CENTURION','MARIA DE JESUS',56),(291,'23014334','Jardines','Cristian',49),(292,'42957306','Vera','Marina Rocio',23),(293,'46396041','Bordón','Jesús Daniel',20),(294,'41709991','Toscano','Juan Ignacio',24),(295,'33219527','Caron','Hernán',36),(296,'29661616','Palacios','Walter Daniel',41),(297,'39337560','Posteraro','Maximiliano Daniel',27),(298,'45928547','Ávalos Ramírez','Joaquín',19),(299,'94130907','Vento coras','Carlos francisco',42),(300,'39872427','basualdo','federico',27),(301,'34940330','Astudillo zapata','Mayra Ayelen',33),(302,'30083320','Larosa','Cristian Adrian',40),(303,'37992900','López','Leandro Alfredo Omar',29),(304,'23148931','Covarrubias','Carlos Rafael',1),(305,'30831367','Bouzas Zensano','Agata Estela Edith',39),(306,'45013049','Cardozo','Leonel David',20),(307,'34738717','Mener','Victor alejandro',34),(308,'33907122','Mazzola','Daniel',34),(309,'39001241','muñoz','marcos david',28),(310,'30224149','Simonelli','Nelson Ivan',40),(311,'22129138','Gallo','Walter Gabriel',52),(312,'34551119','Rivadulla','Cristian dario',34),(313,'34229087','asconape','Walter',34),(314,'31931111','Tello','Ricardo walter damian',37),(315,'29861172','Calderon','Daniel sebastian',40),(316,'13781971','burgos','Leonor beatriz',63),(317,'32384208','FERNANDEZ','CARLOS GABRIEL',37),(318,'31732636','CHAVEZ','FERNANDO SEBASTIAN',38),(319,'41076673','Sanchez','Joel',24),(320,'16207083','casiriain','marcelo eduardo',61),(321,'34424288','BLANCO','VICTOR DANTE',34),(322,'20942676','colarte','adrian',54),(323,'25430894','Sanchez','Gustavo Ariel',47),(324,'27746328','Caballero','Rodrigo',43),(325,'29592520','GARIGLIO','DIEGO ALEJANDRO',41),(326,'32090715','Rodríguez','Pablo Emanuel',37),(327,'41129860','Di Fronzo','Gonzalo',25),(328,'27381268','Gomez','Jesus alejandro maximiliano',44),(329,'41398756','Borda','Lucas Alejandro',25),(330,'38521084','Di Fronzo','Leonel Sebastian',29),(331,'93425994','PONTORIERO','DOMINGO',62),(332,'36319455','García Pérez','Laura Ayelen',32),(333,'93234297','García quinteros','Noemi',32),(334,'3114429','fidalgo','noelia romina',39),(335,'23256582','pierna','marcelo ariel',50),(336,'37907497','González','Armando Sebastián',1),(337,'33122187','Maciel','Jorge carlos',36),(338,'18048101','Loyola','Patricia Monica',57),(339,'18274161','TOSCANO','Roberto Daniel',56),(340,'44513681','Parrondo Sequeira','Guadalupe Yazmin Cruz',20),(341,'23244463','Pepi','Patricia Claudia',50),(342,'44252452','Vera VEGA','Iara Malen',21),(343,'95102262','Soto Cardenas','Maria Dolores',36),(344,'36714512','del Rio','Facundo Nazareno',31),(345,'18440601','Echegaray','Claudia Mónica',56),(346,'24993445','machia','ana maria',47),(347,'42099623','Mercado','Lucia Malena',24),(348,'25345443','Bonelli','Lorena Beatriz',46),(349,'51130754','baez valenzuela','Karen abigail',23),(350,'45402148','Caron','Brenda Rocio',19),(351,'45465.662','Seguil','Dylan Brandon',19),(352,'39207553','Magrino','Micaela Rocio',28),(353,'38663588','Lescano','Mariana',29),(354,'40761676','Roca','Romina Daniela',33),(355,'31471468','Galarza','German Ariel',38),(356,'21983951','CHIGUAY','VERONICA SILVINA',52),(357,'36919288','Montenegro','María Belén',31),(358,'38423981','Corvalan','Maria ines',29),(359,'27536162','Saez','Angelica ines',44),(360,'44239755','Fernandez','Mariela Noemi',21),(361,'38421097','Hilario','Romina Luciana',29),(362,'932558083','Jara Arevalo','Gorge Gabriel',22),(363,'41647734','fiordeliso','marcos adolfo',24),(364,'44939463','SENTENO MONTERO','ADRIAN NESTOR',20),(365,'45011440','CORBERA','ELIAS NAHUEL',22),(366,'42838158','Mansilla','Ivana Maria',23),(367,'42875366','Fernández Cáceres','Érika Andrea',22),(368,'14517356','Jerez','Josefa del valle',62),(369,'32723193','Melgarejo','Daniela soledad',36),(370,'31448225','Mujica','María Belén',38),(372,'33080238','Maximiliano','Rosanda',37);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `alumnos_modificados` AFTER UPDATE ON `alumnos` FOR EACH ROW BEGIN
    INSERT INTO historial_modificaciones_alumnos (
        id_alumno,
        dni_anterior,
        nombre_anterior,
        apellido_anterior,
        edad_anterior,
        accion,
        fecha_hora,
        usuario
    )
    VALUES (
        OLD.id_alumno,
        OLD.dni,
        OLD.nombre,
        OLD.apellido,
        OLD.edad,
        'actualizado',
        NOW(),
        CURRENT_USER()
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `alumnos_eliminados` AFTER DELETE ON `alumnos` FOR EACH ROW BEGIN
    INSERT INTO historial_modificaciones_alumnos (
        id_alumno,
        dni_anterior,
        nombre_anterior,
        apellido_anterior,
        edad_anterior,
        accion,
        fecha_hora,
        usuario
    )
    VALUES (
        OLD.id_alumno,
        OLD.dni,
        OLD.nombre,
        OLD.apellido,
        OLD.edad,
        'borrado',
        NOW(),
        CURRENT_USER()  -- Esta función obtiene el usuario actual
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Programacion'),(2,'Diseño'),(3,'Ciencia de Datos');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cedes`
--

DROP TABLE IF EXISTS `cedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cedes` (
  `id_cede` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `localidad` varchar(60) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_cede`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedes`
--

LOCK TABLES `cedes` WRITE;
/*!40000 ALTER TABLE `cedes` DISABLE KEYS */;
INSERT INTO `cedes` VALUES (1,'Juan Baustista Alberdi','Brandsen 4534','Ramos Mejia','46587452'),(2,'Bernardino Rivadavia','Av de mayo 721','Ramos Mejia','48875632');
/*!40000 ALTER TABLE `cedes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comisiones`
--

DROP TABLE IF EXISTS `comisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comisiones` (
  `id_comision` int NOT NULL AUTO_INCREMENT,
  `id_curso` int DEFAULT NULL,
  `id_cede` int DEFAULT NULL,
  `id_profesor` int DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  PRIMARY KEY (`id_comision`),
  KEY `id_cede` (`id_cede`),
  KEY `id_curso` (`id_curso`),
  KEY `id_profesor` (`id_profesor`),
  CONSTRAINT `comisiones_ibfk_1` FOREIGN KEY (`id_cede`) REFERENCES `cedes` (`id_cede`),
  CONSTRAINT `comisiones_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`),
  CONSTRAINT `comisiones_ibfk_3` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesor`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comisiones`
--

LOCK TABLES `comisiones` WRITE;
/*!40000 ALTER TABLE `comisiones` DISABLE KEYS */;
INSERT INTO `comisiones` VALUES (1,1,1,1,'2023-02-15','2023-05-15'),(2,4,2,6,'2023-11-15','2023-12-15'),(3,2,2,3,'2023-02-15','2023-05-15'),(4,2,2,1,'2023-04-15','2023-07-15'),(5,3,2,5,'2023-04-15','2023-07-15'),(6,3,2,2,'2023-04-15','2023-07-15'),(7,4,1,4,'2023-04-15','2023-07-15'),(8,4,1,4,'2023-07-15','2023-09-15'),(9,4,2,3,'2023-07-15','2023-09-15'),(10,4,1,3,'2023-07-15','2023-09-15'),(11,5,1,6,'2023-07-15','2023-09-15'),(12,5,2,6,'2023-07-15','2023-09-15'),(13,6,1,5,'2023-09-15','2023-12-15'),(14,6,2,5,'2023-09-15','2023-12-15'),(15,6,1,2,'2023-09-15','2023-12-15'),(17,5,1,6,'2023-11-15','2024-01-15'),(18,5,2,6,'2023-11-15','2024-01-15'),(19,6,1,5,'2023-12-15','2024-02-15'),(20,6,2,5,'2023-12-31','2023-02-15'),(21,6,1,2,'2023-12-31','2024-02-15'),(22,1,2,3,'2023-11-10','2023-12-10');
/*!40000 ALTER TABLE `comisiones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comisiones_modificadas` AFTER UPDATE ON `comisiones` FOR EACH ROW BEGIN
    INSERT INTO historial_modificaciones_comisiones (
        id_comision,
        id_curso,
        id_cede,
        id_profesor,
        fecha_inicio_anterior,
        fecha_finalizacion_anterior,
        accion,
        fecha_hora,
        usuario
    )
    VALUES (
        NEW.id_comision,
        NEW.id_curso,
        NEW.id_cede,
        NEW.id_profesor,
        OLD.fecha_inicio,
        OLD.fecha_finalizacion,
        'actualizado',
        NOW(),
        CURRENT_USER()
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `comisiones_eliminadas` AFTER DELETE ON `comisiones` FOR EACH ROW BEGIN
    INSERT INTO historial_modificaciones_comisiones (
        id_comision,
        id_curso,
        id_cede,
        id_profesor,
        fecha_inicio_anterior,
        fecha_finalizacion_anterior,
        accion,
        fecha_hora,
        usuario
    )
    VALUES (
        OLD.id_comision,
        OLD.id_curso,
        OLD.id_cede,
        OLD.id_profesor,
        OLD.fecha_inicio,
        OLD.fecha_finalizacion,
        'borrado',
        NOW(),
        CURRENT_USER()
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `cantidad_clases` tinyint DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `id_dificultad` int DEFAULT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_dificultad` (`id_dificultad`),
  CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `cursos_ibfk_2` FOREIGN KEY (`id_dificultad`) REFERENCES `dificultad` (`id_dificultad`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Desarrollo Web',19,1,4),(2,'Javascript',17,1,4),(3,'Programacion Backend',47,1,4),(4,'Analisis de Datos',24,3,3),(5,'Ciencia de Datos',53,3,4),(6,'Diseño ux/ui',25,2,2),(7,'Diseño ux/ui Avanzado',25,2,2);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dificultad`
--

DROP TABLE IF EXISTS `dificultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dificultad` (
  `id_dificultad` int NOT NULL AUTO_INCREMENT,
  `dificultad` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_dificultad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dificultad`
--

LOCK TABLES `dificultad` WRITE;
/*!40000 ALTER TABLE `dificultad` DISABLE KEYS */;
INSERT INTO `dificultad` VALUES (1,'Baja'),(2,'Media'),(3,'Media Alta'),(4,'Alta');
/*!40000 ALTER TABLE `dificultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_modificaciones_alumnos`
--

DROP TABLE IF EXISTS `historial_modificaciones_alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_modificaciones_alumnos` (
  `id_historia` int NOT NULL AUTO_INCREMENT,
  `id_alumno` int DEFAULT NULL,
  `dni_anterior` varchar(15) DEFAULT NULL,
  `nombre_anterior` varchar(60) DEFAULT NULL,
  `apellido_anterior` varchar(60) DEFAULT NULL,
  `edad_anterior` int DEFAULT NULL,
  `accion` varchar(15) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_modificaciones_alumnos`
--

LOCK TABLES `historial_modificaciones_alumnos` WRITE;
/*!40000 ALTER TABLE `historial_modificaciones_alumnos` DISABLE KEYS */;
INSERT INTO `historial_modificaciones_alumnos` VALUES (1,1,'23204700','Echegaray','Marco Antonio',50,'actualizado','2023-12-15 14:41:27','root@localhost'),(2,371,'123456789','Juan','Perez',25,'borrado','2023-12-15 14:41:27','root@localhost');
/*!40000 ALTER TABLE `historial_modificaciones_alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_modificaciones_comisiones`
--

DROP TABLE IF EXISTS `historial_modificaciones_comisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_modificaciones_comisiones` (
  `id_historia` int NOT NULL AUTO_INCREMENT,
  `id_comision` int DEFAULT NULL,
  `id_curso` int DEFAULT NULL,
  `id_cede` int DEFAULT NULL,
  `id_profesor` int DEFAULT NULL,
  `fecha_inicio_anterior` date DEFAULT NULL,
  `fecha_finalizacion_anterior` date DEFAULT NULL,
  `accion` varchar(15) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_modificaciones_comisiones`
--

LOCK TABLES `historial_modificaciones_comisiones` WRITE;
/*!40000 ALTER TABLE `historial_modificaciones_comisiones` DISABLE KEYS */;
INSERT INTO `historial_modificaciones_comisiones` VALUES (1,2,4,2,6,'2023-02-15','2023-05-15','actualizado','2023-12-15 14:41:27','root@localhost'),(2,16,4,1,3,'2023-11-15','2024-01-15','borrado','2023-12-15 14:41:27','root@localhost');
/*!40000 ALTER TABLE `historial_modificaciones_comisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inasistencias`
--

DROP TABLE IF EXISTS `inasistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inasistencias` (
  `id_inasistencia` int NOT NULL AUTO_INCREMENT,
  `id_inscripto` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_inasistencia`),
  KEY `id_inscripto` (`id_inscripto`),
  CONSTRAINT `inasistencias_ibfk_1` FOREIGN KEY (`id_inscripto`) REFERENCES `inscripciones` (`id_inscripto`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inasistencias`
--

LOCK TABLES `inasistencias` WRITE;
/*!40000 ALTER TABLE `inasistencias` DISABLE KEYS */;
INSERT INTO `inasistencias` VALUES (1,1,'2023-02-16'),(2,44,'2023-02-24'),(3,54,'2023-02-28'),(4,67,'2023-04-15'),(5,99,'2023-04-20'),(6,121,'2023-05-23'),(7,100,'2023-05-24'),(8,100,'2023-06-25'),(9,110,'2023-06-25'),(10,150,'2023-06-25'),(11,150,'2023-06-25'),(12,153,'2023-07-10'),(13,154,'2023-07-10'),(14,155,'2023-07-10'),(15,170,'2023-07-15'),(16,172,'2023-07-15'),(17,178,'2023-08-07'),(18,189,'2023-08-07'),(19,200,'2023-08-09'),(20,200,'2023-08-09'),(21,200,'2023-08-09'),(22,221,'2023-08-18'),(23,212,'2023-08-19'),(24,212,'2023-08-20'),(25,233,'2023-08-20'),(26,233,'2023-08-21'),(27,244,'2023-08-21'),(28,256,'2023-08-21'),(29,256,'2023-09-01'),(30,265,'2023-09-01'),(31,265,'2023-09-10'),(32,300,'2023-11-01'),(33,300,'2023-10-01'),(34,311,'2023-10-01'),(35,311,'2023-10-06'),(36,321,'2023-11-07'),(37,330,'2023-11-08'),(38,334,'2023-11-09');
/*!40000 ALTER TABLE `inasistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripciones`
--

DROP TABLE IF EXISTS `inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripciones` (
  `id_inscripto` int NOT NULL AUTO_INCREMENT,
  `nota` tinyint DEFAULT NULL,
  `id_comision` int DEFAULT NULL,
  `id_alumno` int DEFAULT NULL,
  PRIMARY KEY (`id_inscripto`),
  KEY `id_alumno` (`id_alumno`),
  KEY `id_comision` (`id_comision`),
  CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`),
  CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`id_comision`) REFERENCES `comisiones` (`id_comision`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripciones`
--

LOCK TABLES `inscripciones` WRITE;
/*!40000 ALTER TABLE `inscripciones` DISABLE KEYS */;
INSERT INTO `inscripciones` VALUES (1,7,1,1),(2,9,2,1),(3,7,3,2),(4,7,1,3),(5,8,1,4),(6,7,1,5),(7,9,1,6),(8,8,1,7),(9,6,1,8),(10,10,1,9),(11,10,1,10),(12,10,1,11),(13,9,1,12),(14,7,1,13),(15,8,1,14),(16,8,1,15),(17,8,1,16),(18,10,1,17),(19,10,1,18),(20,NULL,1,19),(21,NULL,1,20),(22,NULL,1,21),(23,NULL,1,22),(24,NULL,1,23),(25,NULL,1,24),(26,NULL,2,25),(27,NULL,2,26),(28,NULL,2,27),(29,NULL,2,28),(30,NULL,2,29),(31,NULL,2,30),(32,NULL,2,31),(33,NULL,2,32),(34,NULL,2,33),(35,NULL,2,34),(36,NULL,2,35),(37,NULL,2,36),(38,NULL,2,37),(39,NULL,2,38),(40,NULL,2,39),(41,NULL,2,40),(42,NULL,2,41),(43,NULL,2,42),(44,NULL,2,43),(45,NULL,2,44),(46,NULL,2,45),(47,NULL,2,46),(48,NULL,2,47),(49,NULL,2,48),(50,NULL,3,49),(51,NULL,3,50),(52,NULL,3,51),(53,NULL,3,52),(54,NULL,3,53),(55,NULL,3,54),(56,NULL,3,55),(57,NULL,3,56),(58,NULL,3,57),(59,NULL,3,58),(60,NULL,3,59),(61,NULL,3,60),(62,NULL,3,61),(63,NULL,3,62),(64,NULL,3,63),(65,NULL,3,64),(66,NULL,3,65),(67,NULL,3,66),(68,NULL,3,67),(69,NULL,3,68),(70,NULL,3,69),(71,NULL,3,70),(72,NULL,3,71),(73,NULL,3,72),(74,NULL,4,73),(75,NULL,4,74),(76,NULL,4,75),(77,NULL,4,76),(78,NULL,4,77),(79,NULL,4,78),(80,NULL,4,79),(81,NULL,4,80),(82,NULL,4,81),(83,NULL,4,82),(84,NULL,4,83),(85,NULL,4,84),(86,NULL,4,85),(87,NULL,4,86),(88,NULL,4,87),(89,NULL,4,88),(90,NULL,4,89),(91,NULL,4,90),(92,NULL,4,91),(93,NULL,4,92),(94,NULL,4,93),(95,NULL,4,94),(96,NULL,4,95),(97,NULL,4,96),(98,NULL,5,97),(99,NULL,5,98),(100,NULL,5,99),(101,NULL,5,100),(102,NULL,5,101),(103,NULL,5,102),(104,NULL,5,103),(105,NULL,5,104),(106,NULL,5,105),(107,NULL,5,106),(108,NULL,5,107),(109,NULL,5,108),(110,NULL,5,109),(111,NULL,5,110),(112,NULL,5,111),(113,NULL,5,112),(114,NULL,5,113),(115,NULL,5,114),(116,NULL,5,115),(117,NULL,5,116),(118,NULL,5,117),(119,NULL,5,118),(120,NULL,5,119),(121,NULL,5,120),(122,NULL,6,121),(123,NULL,6,122),(124,NULL,6,123),(125,NULL,6,124),(126,NULL,6,125),(127,NULL,6,126),(128,NULL,6,127),(129,NULL,6,128),(130,NULL,6,129),(131,NULL,6,130),(132,NULL,6,131),(133,NULL,6,132),(134,NULL,6,133),(135,NULL,6,134),(136,NULL,6,135),(137,NULL,6,136),(138,NULL,6,137),(139,NULL,6,138),(140,NULL,6,139),(141,NULL,6,140),(142,NULL,6,141),(143,NULL,6,142),(144,NULL,6,143),(145,NULL,6,144),(146,NULL,7,145),(147,NULL,7,146),(148,NULL,7,147),(149,NULL,7,148),(150,NULL,7,149),(151,NULL,7,150),(152,NULL,7,151),(153,NULL,7,152),(154,NULL,7,153),(155,NULL,7,154),(156,NULL,7,155),(157,NULL,7,156),(158,NULL,7,157),(159,NULL,7,158),(160,NULL,7,159),(161,NULL,7,160),(162,NULL,7,161),(163,NULL,7,162),(164,NULL,7,163),(165,NULL,7,164),(166,NULL,7,165),(167,NULL,7,166),(168,NULL,7,167),(169,NULL,7,168),(170,NULL,8,169),(171,NULL,8,170),(172,NULL,8,171),(173,NULL,8,172),(174,NULL,8,173),(175,NULL,8,174),(176,NULL,8,175),(177,NULL,8,176),(178,NULL,8,177),(179,NULL,8,178),(180,NULL,8,179),(181,NULL,8,180),(182,NULL,8,181),(183,NULL,8,182),(184,NULL,8,183),(185,NULL,8,184),(186,NULL,8,185),(187,NULL,8,186),(188,NULL,8,187),(189,NULL,8,188),(190,NULL,8,189),(191,NULL,8,190),(192,NULL,8,191),(193,NULL,8,192),(194,NULL,9,193),(195,NULL,9,194),(196,NULL,9,195),(197,NULL,9,196),(198,NULL,9,197),(199,NULL,9,198),(200,NULL,9,199),(201,NULL,9,200),(202,NULL,9,201),(203,NULL,9,202),(204,NULL,9,203),(205,NULL,9,204),(206,NULL,9,205),(207,NULL,9,206),(208,NULL,9,207),(209,NULL,9,208),(210,NULL,9,209),(211,NULL,9,210),(212,NULL,9,211),(213,NULL,9,212),(214,NULL,9,213),(215,NULL,9,214),(216,NULL,9,215),(217,NULL,9,216),(218,NULL,10,217),(219,NULL,10,218),(220,NULL,10,219),(221,NULL,10,220),(222,NULL,10,221),(223,NULL,10,222),(224,NULL,10,223),(225,NULL,10,224),(226,NULL,10,225),(227,NULL,10,226),(228,NULL,10,227),(229,NULL,10,228),(230,NULL,10,229),(231,NULL,10,230),(232,NULL,10,231),(233,NULL,10,232),(234,NULL,10,233),(235,NULL,10,234),(236,NULL,10,235),(237,NULL,10,236),(238,NULL,10,237),(239,NULL,10,238),(240,NULL,10,239),(241,NULL,10,240),(242,NULL,11,241),(243,NULL,11,242),(244,NULL,11,243),(245,NULL,11,244),(246,NULL,11,245),(247,NULL,11,246),(248,NULL,11,247),(249,NULL,11,248),(250,NULL,11,249),(251,NULL,11,250),(252,NULL,11,251),(253,NULL,11,252),(254,NULL,11,253),(255,NULL,11,254),(256,NULL,11,255),(257,NULL,11,256),(258,NULL,11,257),(259,NULL,11,258),(260,NULL,11,259),(261,NULL,11,260),(262,NULL,11,261),(263,NULL,11,262),(264,NULL,11,263),(265,NULL,11,264),(266,NULL,12,265),(267,NULL,12,266),(268,NULL,12,267),(269,NULL,12,268),(270,NULL,12,269),(271,NULL,12,270),(272,NULL,12,271),(273,NULL,12,272),(274,NULL,12,273),(275,NULL,12,274),(276,NULL,12,275),(277,NULL,12,276),(278,NULL,12,277),(279,NULL,12,278),(280,NULL,12,279),(281,NULL,12,280),(282,NULL,12,281),(283,NULL,12,282),(284,NULL,12,283),(285,NULL,12,284),(286,NULL,12,285),(287,NULL,12,286),(288,NULL,12,287),(289,NULL,12,288),(290,NULL,13,289),(291,NULL,13,290),(292,NULL,13,291),(293,NULL,13,292),(294,NULL,13,293),(295,NULL,13,294),(296,NULL,13,295),(297,NULL,13,296),(298,NULL,13,297),(299,NULL,13,298),(300,NULL,13,299),(301,NULL,13,300),(302,NULL,13,301),(303,NULL,13,302),(304,NULL,13,303),(305,NULL,13,304),(306,NULL,13,305),(307,NULL,13,306),(308,NULL,13,307),(309,NULL,13,308),(310,NULL,13,309),(311,NULL,13,310),(312,NULL,13,311),(313,NULL,13,312),(314,NULL,14,313),(315,NULL,14,314),(316,NULL,14,315),(317,NULL,14,316),(318,NULL,14,317),(319,NULL,14,318),(320,NULL,14,319),(321,NULL,14,320),(322,NULL,14,321),(323,NULL,14,322),(324,NULL,14,323),(325,NULL,14,324),(326,NULL,14,325),(327,NULL,14,326),(328,NULL,14,327),(329,NULL,14,328),(330,NULL,14,329),(331,NULL,14,330),(332,NULL,14,331),(333,NULL,14,332),(334,NULL,14,333),(335,NULL,14,334),(336,NULL,14,335),(337,NULL,14,336),(338,NULL,15,337),(339,NULL,15,338),(340,NULL,15,339),(341,NULL,15,340),(342,NULL,15,341),(343,NULL,15,342),(344,NULL,15,343),(345,NULL,15,344),(346,NULL,15,345),(347,NULL,15,346),(348,NULL,15,347),(349,NULL,15,348),(350,NULL,15,349),(351,NULL,15,350),(352,NULL,15,351),(353,NULL,15,352),(354,NULL,15,353),(355,NULL,15,354),(356,NULL,15,355),(357,NULL,15,356),(358,NULL,15,357),(359,NULL,15,358),(360,NULL,15,359),(361,NULL,15,360),(362,NULL,20,352),(363,NULL,20,353),(364,NULL,20,354),(365,NULL,20,355),(366,NULL,20,356),(367,NULL,20,357),(368,NULL,20,358),(369,NULL,20,359),(370,NULL,20,360),(371,NULL,21,224),(372,NULL,21,225),(373,NULL,21,226),(374,NULL,21,227),(375,NULL,21,228),(376,NULL,21,229),(377,NULL,21,230),(378,NULL,21,231),(379,NULL,1,372);
/*!40000 ALTER TABLE `inscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `id_profesor` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(15) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `edad` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_profesor`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (1,'41647734','fiordeliso','marcos adolfo',24),(2,'44939463','SENTENO MONTERO','ADRIAN NESTOR',20),(3,'45011440','CORBERA','ELIAS NAHUEL',22),(4,'42838158','Mansilla','Ivana Maria',23),(5,'42875366','Fernández Cáceres','Érika Andrea',22),(6,'14517356','Jerez','Josefa del valle',62),(7,'32723193','Melgarejo','Daniela soledad',36),(8,'31448225','Mujica','María Belén',38);
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_alumnos`
--

DROP TABLE IF EXISTS `vista_alumnos`;
/*!50001 DROP VIEW IF EXISTS `vista_alumnos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_alumnos` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `edad`,
 1 AS `dni`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_asistencia`
--

DROP TABLE IF EXISTS `vista_asistencia`;
/*!50001 DROP VIEW IF EXISTS `vista_asistencia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_asistencia` AS SELECT 
 1 AS `id_inscripto`,
 1 AS `Alumno`,
 1 AS `Curso`,
 1 AS `fecha_inicio`,
 1 AS `fecha_finalizacion`,
 1 AS `cantidad_clases`,
 1 AS `total_inasistencias`,
 1 AS `total_clases_asistidas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_comisiones`
--

DROP TABLE IF EXISTS `vista_comisiones`;
/*!50001 DROP VIEW IF EXISTS `vista_comisiones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_comisiones` AS SELECT 
 1 AS `id_comision`,
 1 AS `Cede`,
 1 AS `direccion`,
 1 AS `localidad`,
 1 AS `Curso`,
 1 AS `cantidad_clases`,
 1 AS `dificultad`,
 1 AS `categoria`,
 1 AS `Profesor`,
 1 AS `fecha_inicio`,
 1 AS `fecha_finalizacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_inscriptos`
--

DROP TABLE IF EXISTS `vista_inscriptos`;
/*!50001 DROP VIEW IF EXISTS `vista_inscriptos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_inscriptos` AS SELECT 
 1 AS `id_inscripto`,
 1 AS `Curso`,
 1 AS `nota`,
 1 AS `dni`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `edad`,
 1 AS `fecha_inicio`,
 1 AS `fecha_finalizacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_profesores`
--

DROP TABLE IF EXISTS `vista_profesores`;
/*!50001 DROP VIEW IF EXISTS `vista_profesores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_profesores` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `edad`,
 1 AS `dni`,
 1 AS `total_comisiones`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'escuela'
--

--
-- Dumping routines for database 'escuela'
--
/*!50003 DROP FUNCTION IF EXISTS `calcular_promedio_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcular_promedio_alumno`(id_alumno INT) RETURNS decimal(5,2)
    DETERMINISTIC
BEGIN
        DECLARE promedio DECIMAL(5,2);

        SELECT AVG(nota) INTO promedio
        FROM inscripciones
        WHERE id_alumno = id_alumno;

        IF promedio IS NULL THEN
            RETURN 'No hay notas para promediar';
        END IF;

        RETURN promedio;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `obtener_fecha_finalizacion_curso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_fecha_finalizacion_curso`(id_alumno INT, id_comision INT) RETURNS date
    DETERMINISTIC
BEGIN
		DECLARE fecha_finalizacion DATE;
		
		SELECT c.fecha_finalizacion INTO fecha_finalizacion
		FROM inscripciones i
		JOIN comisiones c ON i.id_comision = c.id_comision
		WHERE i.id_alumno = id_alumno AND i.id_comision = id_comision;
		
		RETURN fecha_finalizacion;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_alumno_inscripcion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_alumno_inscripcion`(
    IN p_dni INT,
    IN p_nombre VARCHAR(255),
    IN p_apellido VARCHAR(255),
    IN p_edad INT,
    IN p_id_comision INT
)
BEGIN
    DECLARE v_id_alumno INT;
    DECLARE v_id_inscripto INT;

    -- Insertar el nuevo alumno
    INSERT INTO alumnos (dni, nombre, apellido, edad)
    VALUES (p_dni, p_nombre, p_apellido, p_edad);

    -- Obtener el ID del nuevo alumno
    SET v_id_alumno = LAST_INSERT_ID();

    -- Validar que la comisión exista
    IF NOT EXISTS (SELECT 1 FROM comisiones WHERE id_comision = p_id_comision) THEN
        DELETE FROM alumnos WHERE id_alumno = v_id_alumno; -- Eliminar el alumno si la comisión no existe
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La comisión especificada no existe.';
    ELSE
        -- Insertar la inscripción
        INSERT INTO inscripciones (id_alumno, id_comision, nota)
        VALUES (v_id_alumno, p_id_comision, NULL);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerCantidadComisionesFinalizadasEnMes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerCantidadComisionesFinalizadasEnMes`(
    IN mes_param INT,
    IN anio_param INT
)
BEGIN
    SELECT
        c.id_comision,
        c.id_curso,
        cu.nombre AS nombre_curso
    FROM
        comisiones c
    JOIN
        cursos cu ON c.id_curso = cu.id_curso
    WHERE
        MONTH(c.fecha_finalizacion) = mes_param
        AND YEAR(c.fecha_finalizacion) = anio_param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerCantidadComisionesPorCursoEnMes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerCantidadComisionesPorCursoEnMes`(
    IN mes_param INT,
    IN anio_param INT
)
BEGIN
    SELECT
        c.id_comision,
        c.id_curso,
        cu.nombre AS nombre_curso,
        COUNT(*) AS cantidad_comisiones
    FROM
        comisiones c
    JOIN
        cursos cu ON c.id_curso = cu.id_curso
    WHERE
        MONTH(c.fecha_inicio) = mes_param
        AND YEAR(c.fecha_inicio) = anio_param
    GROUP BY
        c.id_comision, c.id_curso;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerCantidadInscriptosComisionesNoIniciadas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerCantidadInscriptosComisionesNoIniciadas`()
BEGIN
    SELECT
        c.id_curso,
        ic.id_comision,
        cu.nombre AS nombre_curso,
        c.fecha_inicio,
        COUNT(*) AS cantidad_inscriptos
    FROM
        comisiones c
    JOIN
        inscripciones ic ON c.id_comision = ic.id_comision
    JOIN
        cursos cu ON c.id_curso = cu.id_curso
    WHERE
        c.fecha_inicio > CURDATE()  -- Solo comisiones que aún no han iniciado
    GROUP BY
        c.id_curso, ic.id_comision, cu.nombre, c.fecha_inicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtener_comisiones_de_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtener_comisiones_de_alumno`(IN p_id_alumno INT)
BEGIN
    SELECT 
        a.nombre AS nombre_alumno,
        a.apellido AS apellido_alumno,
        c.id_comision,
        cu.nombre AS nombre_curso,
        cu.cantidad_clases,
        d.dificultad,
        cat.categoria
    FROM 
        alumnos a
    JOIN 
        inscripciones i ON a.id_alumno = i.id_alumno
    JOIN 
        comisiones c ON i.id_comision = c.id_comision
    JOIN 
        cursos cu ON c.id_curso = cu.id_curso
    JOIN 
        dificultad d ON cu.id_dificultad = d.id_dificultad
    JOIN 
        categorias cat ON cu.id_categoria = cat.id_categoria
    WHERE 
        a.id_alumno = p_id_alumno;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ordenar_alumnos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ordenar_alumnos`(IN p_columna VARCHAR(255), IN p_orden VARCHAR(255))
BEGIN
    SET @query = CONCAT('SELECT * FROM alumnos ORDER BY ', p_columna, ' ', p_orden);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_alumnos`
--

/*!50001 DROP VIEW IF EXISTS `vista_alumnos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_alumnos` AS select `al`.`nombre` AS `nombre`,`al`.`apellido` AS `apellido`,`al`.`edad` AS `edad`,`al`.`dni` AS `dni` from `alumnos` `al` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_asistencia`
--

/*!50001 DROP VIEW IF EXISTS `vista_asistencia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_asistencia` AS select `ins`.`id_inscripto` AS `id_inscripto`,`al`.`nombre` AS `Alumno`,`cu`.`nombre` AS `Curso`,`co`.`fecha_inicio` AS `fecha_inicio`,`co`.`fecha_finalizacion` AS `fecha_finalizacion`,`cu`.`cantidad_clases` AS `cantidad_clases`,count(`ina`.`id_inasistencia`) AS `total_inasistencias`,(`cu`.`cantidad_clases` - count(`ina`.`id_inasistencia`)) AS `total_clases_asistidas` from ((((`inscripciones` `ins` join `alumnos` `al` on((`ins`.`id_alumno` = `al`.`id_alumno`))) join `inasistencias` `ina` on((`ins`.`id_inscripto` = `ina`.`id_inscripto`))) join `comisiones` `co` on((`ins`.`id_comision` = `co`.`id_comision`))) join `cursos` `cu` on((`co`.`id_curso` = `cu`.`id_curso`))) group by `ins`.`id_inscripto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_comisiones`
--

/*!50001 DROP VIEW IF EXISTS `vista_comisiones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_comisiones` AS select `co`.`id_comision` AS `id_comision`,`ce`.`nombre` AS `Cede`,`ce`.`direccion` AS `direccion`,`ce`.`localidad` AS `localidad`,`cu`.`nombre` AS `Curso`,`cu`.`cantidad_clases` AS `cantidad_clases`,`di`.`dificultad` AS `dificultad`,`ca`.`categoria` AS `categoria`,`pr`.`nombre` AS `Profesor`,`co`.`fecha_inicio` AS `fecha_inicio`,`co`.`fecha_finalizacion` AS `fecha_finalizacion` from (((((`comisiones` `co` join `profesores` `pr` on((`co`.`id_profesor` = `pr`.`id_profesor`))) join `cursos` `cu` on((`co`.`id_curso` = `cu`.`id_curso`))) join `cedes` `ce` on((`co`.`id_cede` = `co`.`id_cede`))) join `dificultad` `di` on((`cu`.`id_dificultad` = `di`.`id_dificultad`))) join `categorias` `ca` on((`cu`.`id_categoria` = `ca`.`id_categoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_inscriptos`
--

/*!50001 DROP VIEW IF EXISTS `vista_inscriptos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_inscriptos` AS select `ins`.`id_inscripto` AS `id_inscripto`,`cu`.`nombre` AS `Curso`,`ins`.`nota` AS `nota`,`al`.`dni` AS `dni`,`al`.`nombre` AS `nombre`,`al`.`apellido` AS `apellido`,`al`.`edad` AS `edad`,`co`.`fecha_inicio` AS `fecha_inicio`,`co`.`fecha_finalizacion` AS `fecha_finalizacion` from (((`inscripciones` `ins` join `alumnos` `al` on((`ins`.`id_alumno` = `al`.`id_alumno`))) join `comisiones` `co` on((`ins`.`id_comision` = `co`.`id_comision`))) join `cursos` `cu` on((`co`.`id_curso` = `cu`.`id_curso`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_profesores`
--

/*!50001 DROP VIEW IF EXISTS `vista_profesores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_profesores` AS select `pr`.`nombre` AS `nombre`,`pr`.`apellido` AS `apellido`,`pr`.`edad` AS `edad`,`pr`.`dni` AS `dni`,(select count(0) from `comisiones` where (`comisiones`.`id_profesor` = `pr`.`id_profesor`)) AS `total_comisiones` from `profesores` `pr` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-15 14:42:24
