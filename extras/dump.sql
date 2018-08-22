-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: cupomFiscal
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'510.281.656-07','Robin Bamb'),(2,'099.801.995-01','Becka Bartell'),(3,'683.529.894-84','Darb Thistleton'),(4,'979.280.636-14','Penelopa Bolles'),(5,'392.072.508-72','Leyla Milbourn'),(6,'933.478.301-94','Stanislaw Adnams'),(7,'826.299.614-00','Ebeneser Consadine'),(8,'457.210.295-30','Brandyn Blaisdale'),(9,'547.636.396-18','Thornie Pauleit'),(10,'313.473.306-52','Hinze Kitchenham');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `ie` varchar(255) DEFAULT NULL,
  `im` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'07.623.305/0001-95','768 Sloan Park','99933123','812769','Eare');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` double NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Beans - Long, Chinese',1,61.85),(2,'Crackers - Water',1,82.57),(3,'Lettuce - Boston Bib - Organic',1,21.42),(4,'Basil - Seedlings Cookstown',1,76.28),(5,'Vermouth - Sweet, Cinzano',1,6.83),(6,'Chocolate - Semi Sweet',1,53.16),(7,'Ice Cream - Fudge Bars',1,66.59),(8,'Quail Eggs - Canned',1,68.14),(9,'Sprouts - Peppercress',1,50.92),(10,'Beer - Labatt Blue',1,57.86),(11,'Pasta - Lasagna, Dry',1,76.24),(12,'Beef - Rib Roast, Cap On',1,28.69),(13,'Horseradish Root',1,60.41),(14,'Vinegar - Rice',1,55.04),(15,'Nut - Almond, Blanched, Sliced',1,9.17),(16,'Alize Gold Passion',1,73.25),(17,'Crab - Soft Shell',1,80.82),(18,'Bread - Sour Sticks With Onion',1,96.27),(19,'Fondant - Icing',1,79.94),(20,'Spinach - Baby',1,10.79),(21,'Wine - Red, Black Opal Shiraz',1,52.61),(22,'Bread - Roll, Italian',1,26.18),(23,'Wine - Winzer Krems Gruner',1,56.59),(24,'Longos - Chicken Curried',1,47.06),(25,'Lid - 10,12,16 Oz',1,89.06),(26,'Buffalo - Tenderloin',1,29.52),(27,'Blueberries - Frozen',1,37.08),(28,'Sugar - Crumb',1,1.87),(29,'Compound - Strawberry',1,76.84),(30,'Pork - Chop, Frenched',1,46.57),(31,'Munchies Honey Sweet Trail Mix',1,68.36),(32,'Pepperoni Slices',1,57.81),(33,'Lemon Balm - Fresh',1,16.83),(34,'Milk - 1%',1,81.65),(35,'Soup - Campbells - Tomato',1,49.22),(36,'Lamb - Loin, Trimmed, Boneless',1,18.97),(37,'Muffin Mix - Oatmeal',1,87.93),(38,'Chicken - Breast, 5 - 7 Oz',1,62.87),(39,'Jam - Blackberry, 20 Ml Jar',1,37.74),(40,'Pie Shell - 5',1,78.04),(41,'Tea - Earl Grey',1,25.82),(42,'Island Oasis - Cappucino Mix',1,78.01),(43,'Flour - Rye',1,6.46),(44,'Iced Tea - Lemon, 340ml',1,37.5),(45,'Ice Cream Bar - Hagen Daz',1,43.17),(46,'Juice - Pineapple, 341 Ml',1,66.38),(47,'Napkin - Dinner, White',1,77.8),(48,'Potatoes - Fingerling 4 Oz',1,94.92),(49,'Liners - Baking Cups',1,48.26),(50,'Bread - 10 Grain',1,13.62),(51,'Ham - Proscuitto',1,97.58),(52,'Juice - Apple, 500 Ml',1,98.51),(53,'Pepper - Chilli Seeds Mild',1,97.68),(54,'Cake Slab',1,90.2),(55,'Cheese Cloth',1,11.92),(56,'Tea - Mint',1,73.54),(57,'Lighter - Bbq',1,59.79),(58,'Foam Dinner Plate',1,5.93),(59,'Turkey - Whole, Fresh',1,4.27),(60,'Stock - Fish',1,9.99),(61,'Steamers White',1,25.02),(62,'Sesame Seed',1,66.78),(63,'Chicken - Wieners',1,54.21),(64,'Wine - Sawmill Creek Autumn',1,65.73),(65,'Plasticknivesblack',1,63.22),(66,'Lamb - Leg, Bone In',1,38.97),(67,'Shrimp - 150 - 250',1,65.68),(68,'Cheese - La Sauvagine',1,85.76),(69,'Kolrabi',1,51.23),(70,'Prunes - Pitted',1,29.46),(71,'Parsley - Dried',1,82.93),(72,'Schnappes - Peach, Walkers',1,73.15),(73,'Compound - Pear',1,97.66),(74,'Cheese - Mix',1,99.9),(75,'Coffee Cup 16oz Foam',1,57.94),(76,'Pumpkin - Seed',1,2.06),(77,'Corn - Mini',1,62.23),(78,'Bread - Raisin',1,49.74),(79,'Curry Paste - Madras',1,71.03),(80,'Extract - Rum',1,54.81),(81,'Sea Urchin',1,37.37),(82,'Sandwich Wrap',1,98.74),(83,'Wine - Piper Heidsieck Brut',1,29.54),(84,'Skirt - 29 Foot',1,19.11),(85,'Scallops - U - 10',1,15.35),(86,'Carbonated Water - Blackberry',1,46.28),(87,'Chinese Lemon Pork',1,63.14),(88,'Tofu - Firm',1,15.02),(89,'Island Oasis - Lemonade',1,72.72),(90,'Turnip - White',1,59.63),(91,'Beef - Rib Roast, Cap On',1,3.71),(92,'Wine - White, Riesling, Henry Of',1,77.22),(93,'Wine - Two Oceans Cabernet',1,59.26),(94,'Tarts Assorted',1,11.87),(95,'Puff Pastry - Sheets',1,78.85),(96,'Flounder - Fresh',1,17.84),(97,'Pomegranates',1,29.04),(98,'Piping - Bags Quizna',1,21.87),(99,'Pepper - Red Chili',1,1.17),(100,'Five Alive Citrus',1,16.11),(101,'Radish - Pickled',1,24.09),(102,'Muffin Mix - Carrot',1,43.12),(103,'Bread - Multigrain',1,85.84),(104,'Tomatillo',1,43.64),(105,'Bacardi Breezer - Tropical',1,22.61),(106,'Chilli Paste, Hot Sambal Oelek',1,12.67),(107,'Muffin Mix - Lemon Cranberry',1,92.31),(108,'Lamb Rack - Ontario',1,97.65),(109,'Steam Pan - Half Size Deep',1,4.58),(110,'Foam Dinner Plate',1,33.06),(111,'Bar Energy Chocchip',1,87.99),(112,'Venison - Liver',1,19.11),(113,'Vinegar - White Wine',1,98.59),(114,'Cranberries - Frozen',1,66.39),(115,'Langers - Cranberry Cocktail',1,82.02),(116,'Vegetable - Base',1,64.99),(117,'Brocolinni - Gaylan, Chinese',1,69.13),(118,'Iced Tea - Lemon, 340ml',1,2.66),(119,'Steel Wool S.o.s',1,71.91),(120,'Wine - Red, Concha Y Toro',1,48.21),(121,'Sobe - Orange Carrot',1,37.89),(122,'Muffin - Mix - Bran And Maple 15l',1,38.86),(123,'Dip - Tapenade',1,77.22),(124,'Bagel - Plain',1,32.5),(125,'Bag Clear 10 Lb',1,43.97),(126,'Cabbage - Savoy',1,22.49),(127,'Beef - Ground, Extra Lean, Fresh',1,2.56),(128,'Guinea Fowl',1,90.33),(129,'Turkey - Breast, Bone - In',1,27.73),(130,'Dawn Professionl Pot And Pan',1,71.3),(131,'Mushroom - Trumpet, Dry',1,63.02),(132,'Beans - French',1,13.49),(133,'Wine - Rosso Toscano Igt',1,59.29),(134,'Chicken - Diced, Cooked',1,39.58),(135,'Trout - Rainbow, Frozen',1,52.66),(136,'The Pop Shoppe - Grape',1,98.7),(137,'Tendrils - Baby Pea, Organic',1,21.72),(138,'Roe - Lump Fish, Black',1,18.91),(139,'Wine - Rubyport',1,12.5),(140,'Tea - Herbal Orange Spice',1,37.84),(141,'Eggroll',1,23.59),(142,'Fish - Bones',1,32.59),(143,'Flour - Cake',1,36.64),(144,'Salt And Pepper Mix - Black',1,64.45),(145,'Lettuce - Red Leaf',1,89.99),(146,'Island Oasis - Strawberry',1,53.56),(147,'Broom - Corn',1,94.67),(148,'Trueblue - Blueberry Cranberry',1,78.32),(149,'Tart Shells - Sweet, 2',1,73.79),(150,'Pumpkin - Seed',1,74.77),(151,'Chips Potato Swt Chilli Sour',1,62.67),(152,'Flavouring - Rum',1,76.49),(153,'Nut - Cashews, Whole, Raw',1,15.37),(154,'Tea - Herbal I Love Lemon',1,7.13),(155,'Mushroom Morel Fresh',1,77.85),(156,'Wine - Barossa Valley Estate',1,13.84),(157,'Whmis - Spray Bottle Trigger',1,86.85),(158,'Cheese Cloth No 100',1,96.3),(159,'Wine - Wyndham Estate Bin 777',1,20.64),(160,'Veal - Chops, Split, Frenched',1,81.92),(161,'Squash - Guords',1,17.54),(162,'Oven Mitts - 15 Inch',1,60.19),(163,'Chinese Foods - Thick Noodles',1,15.59),(164,'Cherries - Bing, Canned',1,75.94),(165,'Wine - Savigny - Les - Beaune',1,82.04),(166,'Nori Sea Weed - Gold Label',1,81.64),(167,'Sprouts Dikon',1,52.92),(168,'Lobster - Base',1,85.01),(169,'Lid Coffee Cup 8oz Blk',1,1.66),(170,'Icecream Bar - Del Monte',1,76.23),(171,'Split Peas - Yellow, Dry',1,75.13),(172,'Remy Red',1,58.83),(173,'Appetizer - Mushroom Tart',1,87.51),(174,'Dill Weed - Fresh',1,94.03),(175,'Beef - Tenderloin - Aa',1,97.01),(176,'Juice - Ocean Spray Cranberry',1,70.11),(177,'Sole - Fillet',1,72.71),(178,'Island Oasis - Pina Colada',1,30.5),(179,'Pork - Belly Fresh',1,49.33),(180,'Wine - Casillero Deldiablo',1,89.3),(181,'Tamarillo',1,22.17),(182,'Oil - Sesame',1,73.66),(183,'Chicken - Wieners',1,51.9),(184,'The Pop Shoppe - Root Beer',1,26.51),(185,'Cookie Dough - Chocolate Chip',1,66.02),(186,'Sage - Ground',1,6.13),(187,'Wine - White Cab Sauv.on',1,84.66),(188,'Shrimp - Black Tiger 13/15',1,63.42),(189,'Wine - Ej Gallo Sierra Valley',1,69.8),(190,'Cheese - St. Paulin',1,97.6),(191,'Bread - Pumpernickel',1,46.49),(192,'Lettuce Romaine Chopped',1,63.9),(193,'Wiberg Super Cure',1,59.88),(194,'Wine - White, Lindemans Bin 95',1,21.43),(195,'Dikon',1,84.36),(196,'Lid - 0090 Clear',1,23.51),(197,'Cloves - Ground',1,69.55),(198,'Bar Energy Chocchip',1,77.1),(199,'Cleaner - Lime Away',1,99.92),(200,'Molasses - Fancy',1,54.74);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint(20) DEFAULT NULL,
  `empresa_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK30s8j2ktpay6of18lbyqn3632` (`cliente_id`),
  KEY `FKt7rqpuedt7235kbgks5vdtbwi` (`empresa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,1,1),(2,1,1),(3,1,1),(4,1,1),(5,1,1),(6,1,1),(7,1,1),(8,1,1),(9,1,1),(10,1,1),(11,2,1),(12,2,1),(13,2,1),(14,2,1),(15,2,1),(16,2,1),(17,2,1),(18,2,1),(19,2,1),(20,2,1),(21,3,1),(22,3,1),(23,3,1),(24,3,1),(25,3,1),(26,3,1),(27,3,1),(28,3,1),(29,3,1),(30,3,1),(31,4,1),(32,4,1),(33,4,1),(34,4,1),(35,4,1),(36,4,1),(37,4,1),(38,4,1),(39,4,1),(40,4,1),(41,5,1),(42,5,1),(43,5,1),(44,5,1),(45,5,1),(46,5,1),(47,5,1),(48,5,1),(49,5,1),(50,5,1),(51,6,1),(52,6,1),(53,6,1),(54,6,1),(55,6,1),(56,6,1),(57,6,1),(58,6,1),(59,6,1),(60,6,1),(61,7,1),(62,7,1),(63,7,1),(64,7,1),(65,7,1),(66,7,1),(67,7,1),(68,7,1),(69,7,1),(70,7,1),(71,8,1),(72,8,1),(73,8,1),(74,8,1),(75,8,1),(76,8,1),(77,8,1),(78,8,1),(79,8,1),(80,8,1),(81,9,1),(82,9,1),(83,9,1),(84,9,1),(85,9,1),(86,9,1),(87,9,1),(88,9,1),(89,9,1),(90,9,1),(91,10,1),(92,10,1),(93,10,1),(94,10,1),(95,10,1),(96,10,1),(97,10,1),(98,10,1),(99,10,1),(100,10,1);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_itens`
--

DROP TABLE IF EXISTS `pedido_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_itens` (
  `pedido_codigo` bigint(20) NOT NULL,
  `itens_codigo` bigint(20) NOT NULL,
  KEY `FKeta95oiab90wp5pk2sml0157t` (`itens_codigo`),
  KEY `FK22ao0xl859bhax5wb67bkqili` (`pedido_codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_itens`
--

LOCK TABLES `pedido_itens` WRITE;
/*!40000 ALTER TABLE `pedido_itens` DISABLE KEYS */;
INSERT INTO `pedido_itens` VALUES (56,90),(95,8),(96,176),(6,1),(97,124),(83,195),(9,133),(41,52),(90,146),(32,86),(61,198),(45,81),(31,122),(52,45),(90,28),(97,40),(13,16),(7,188),(29,171),(73,150),(63,94),(45,66),(2,59),(34,165),(74,119),(74,30),(83,183),(42,126),(25,43),(13,47),(56,41),(94,16),(78,1),(98,19),(33,14),(6,73),(5,140),(57,130),(91,86),(58,174),(44,25),(11,67),(31,84),(39,101),(84,99),(38,154),(43,35),(79,32),(12,7),(73,134),(61,163),(6,184),(18,60),(84,193),(49,98),(9,94),(10,73),(90,25),(80,75),(75,110),(36,104),(36,105),(1,64),(2,169),(89,147),(98,76),(52,111),(76,113),(33,17),(27,85),(24,145),(50,6),(8,153),(13,200),(81,134),(78,122),(50,172),(27,47),(45,115),(8,173),(2,57),(31,7),(55,49),(75,3),(39,171),(28,40),(49,31),(74,135),(90,68),(100,65),(85,135),(67,85),(98,50),(85,34),(15,3),(81,70),(27,80),(31,176),(8,69),(65,122),(49,3),(61,39),(99,162),(48,182),(78,115),(31,174),(80,192),(18,64),(88,142),(44,183),(68,145),(15,31),(49,39),(14,114),(70,174),(81,2),(73,95),(1,21),(6,182),(5,14),(87,83),(25,57),(3,167),(53,193),(97,89),(46,28),(73,173),(8,54),(52,58),(88,69),(83,168),(69,83),(50,39),(88,100),(47,175),(5,101),(70,135),(87,113),(26,140),(39,17),(26,142),(11,140),(55,16),(16,65),(86,46),(58,100),(58,73),(72,116),(29,138),(50,123),(90,150),(22,197),(33,97),(21,35),(48,143),(84,91),(5,138),(32,62),(53,33),(90,169),(86,23),(69,4),(73,150),(27,119),(58,46),(70,141),(72,85),(95,1),(3,133),(14,190),(14,182),(47,157),(59,2),(19,18),(70,16),(25,53),(20,142),(81,58),(29,180),(76,7),(97,23),(7,170),(10,44),(44,148),(97,15),(28,151),(39,125),(3,98),(92,153),(30,16),(28,24),(69,6),(54,120),(42,171),(12,167),(66,130),(32,129),(13,100),(94,87),(29,93),(28,196),(67,132),(32,25),(17,63),(30,170),(36,127),(80,37),(60,112),(15,135),(65,132),(44,155),(41,46),(52,145),(71,57),(29,107),(75,110),(32,1),(18,14),(94,135),(80,97),(84,167),(85,14),(64,80),(90,120),(54,19),(87,130),(17,104),(96,55),(29,163),(31,96),(57,150),(3,92),(98,174),(69,123),(97,97),(17,117),(96,121),(63,133),(54,84),(60,117),(89,3),(8,188),(27,71),(35,130),(13,159),(55,74),(17,85),(26,185),(97,41),(88,73),(28,142),(60,159),(94,104),(26,198),(17,138),(85,88),(30,106),(63,1),(37,77),(91,22),(88,107),(42,153),(88,38),(41,178),(14,188),(61,58),(84,28),(73,18),(38,154),(11,52),(6,132),(58,149),(58,77),(58,103),(73,21),(22,98),(57,54),(49,142),(99,55),(11,180),(57,164),(71,158),(100,160),(4,110),(21,111),(1,36),(84,33),(88,8),(5,189),(33,135),(60,36),(23,65),(84,187),(71,6),(56,135),(78,179),(71,134),(23,122),(43,4),(56,17),(77,138),(98,138),(93,34),(68,135),(9,107),(86,48),(40,144),(69,178),(2,20),(1,170),(63,41),(2,119),(80,15),(97,51),(82,159),(8,162),(18,89),(62,174),(90,128),(73,145),(67,61),(72,184),(43,41),(82,110),(89,55),(16,51),(50,145),(66,190),(25,45),(60,152),(9,196),(51,124),(97,112),(79,144),(6,4),(72,128),(19,11),(77,184),(42,44),(66,10),(14,35),(16,43),(75,64),(17,144),(70,191),(31,191),(28,145),(68,95),(19,65),(19,21),(92,169),(64,26),(58,130),(89,121),(24,19),(47,177),(28,27),(46,172),(75,188),(86,81),(79,159),(37,10),(49,38),(44,104),(12,143),(4,96),(9,176),(42,165),(35,150),(51,47),(24,70),(100,27),(62,162),(66,184),(24,98),(48,57),(100,32),(68,124),(16,58),(20,117),(68,65),(96,151),(51,196),(29,62),(29,153),(21,92),(58,59),(93,61),(11,91),(20,28),(3,54),(26,70),(23,154),(94,126),(64,170),(54,78),(52,116),(33,44),(79,192),(65,6),(63,188),(76,33),(66,41),(30,128),(86,176),(98,95),(21,38),(6,49),(64,32),(36,177),(34,48),(37,171),(36,80),(8,152),(24,91),(64,42),(43,115),(42,17),(95,33),(17,44),(11,128),(34,127),(62,111),(38,97),(14,89),(1,8),(92,6),(22,121),(97,60),(86,159),(48,136),(26,105),(47,86),(29,44),(28,80),(87,146),(1,161),(44,187),(62,181),(1,81),(12,141),(14,164),(33,153),(66,26),(29,187),(96,164),(91,44),(51,62),(76,58),(40,111),(82,89),(24,45),(40,95),(74,98),(99,20),(57,125),(45,144),(16,108),(17,181),(94,161),(5,97),(5,52),(52,128),(25,161),(71,155),(91,160),(76,119),(86,134),(59,79),(17,105),(50,2),(62,127),(99,107),(65,107),(20,162),(50,138),(33,102),(29,37),(24,116),(36,108),(51,186),(72,143),(87,156),(61,200),(78,178),(98,5),(27,63),(2,151),(78,154),(8,174),(99,45),(34,78),(17,200),(98,27),(11,6),(30,10),(85,185),(99,192),(23,86),(49,132),(64,66),(59,175),(46,138),(40,155),(64,127),(25,41),(95,148),(51,122),(5,24),(25,199),(64,41),(31,80),(31,112),(99,127),(56,48),(45,125),(14,200),(44,70),(42,82),(8,22),(2,187),(86,72),(22,60),(83,182),(42,131),(87,98),(23,185),(43,125),(47,63),(66,155),(16,132),(63,58),(64,56),(48,67),(37,96),(69,129),(19,182),(82,117),(30,46),(88,90),(16,183),(53,94),(41,137),(23,41),(96,150),(18,14),(70,72),(18,194),(39,18),(60,142),(11,186),(20,102),(28,24),(5,61),(32,138),(15,126),(30,159),(34,91),(58,151),(44,177),(78,92),(20,49),(41,110),(62,118),(66,194),(40,62),(75,123),(57,191),(27,18),(50,29),(50,107),(41,74),(74,168),(6,123),(50,145),(62,159),(52,184),(61,140),(29,126),(88,109),(85,89),(85,67),(18,40),(4,167),(64,7),(94,93),(82,119),(38,89),(90,58),(82,177),(40,102),(71,118),(90,193),(62,60),(93,82),(18,144),(90,16),(65,191),(95,144),(2,77),(44,164),(4,166),(79,49),(19,160),(27,98),(23,182),(55,173),(68,115),(4,161),(41,99),(83,65),(69,107),(98,178),(36,31),(63,156),(91,51),(38,158),(87,93),(31,18),(84,119),(12,121),(21,149),(73,70),(11,128),(100,3),(68,75),(75,135),(29,194),(62,46),(64,69),(38,79),(7,188),(73,21),(3,48),(63,72),(82,135),(46,41),(31,85),(45,28),(29,92),(4,133),(77,128),(72,86),(42,158),(54,132),(84,3),(33,77),(87,124),(96,7),(97,34),(42,139),(22,148),(55,151),(27,122),(69,3),(68,49),(84,168),(80,80),(54,123),(74,148),(18,186),(75,62),(76,87),(3,182),(19,24),(32,19),(56,171),(11,193),(81,184),(71,170),(60,44),(75,147),(96,184),(41,139),(3,88),(62,37),(27,142),(34,152),(83,147),(50,94),(22,143),(84,1),(27,188),(99,28),(66,67),(76,93),(13,61),(77,55),(26,95),(4,25),(51,169),(50,161),(10,151),(84,22),(37,79),(69,164),(75,131),(52,132),(41,83),(89,64),(20,57),(97,34),(60,108),(24,80),(30,138),(71,19),(70,118),(85,4),(18,4),(77,75),(26,156),(51,73),(85,119),(24,178),(66,60),(58,114),(85,85),(66,199),(4,103),(11,151),(63,63),(90,98),(87,33),(85,137),(43,80),(6,67),(21,98),(13,40),(47,195),(86,131),(45,199),(10,34),(99,1),(79,161),(64,33),(2,34),(92,5),(47,162),(37,176),(57,71),(14,91),(77,168),(70,1),(78,177),(57,161),(53,25),(4,102),(99,18),(80,112),(31,61),(91,58),(51,5),(35,25),(97,35),(22,87),(38,63),(91,51),(90,24),(83,177),(62,122),(79,128),(75,74),(28,67),(72,9),(81,39),(71,144),(42,196),(6,190),(71,48),(99,155),(16,20),(65,7),(5,142),(90,197),(64,78),(13,134),(22,130),(98,167),(40,62),(100,152),(50,90),(40,123),(74,128),(71,89),(3,42),(59,103),(7,44),(96,131),(91,37),(59,12),(58,186),(98,140),(69,68),(65,31),(60,70),(31,66),(69,1),(50,158),(85,197),(91,44),(100,65),(68,190),(1,164),(65,117),(89,19),(64,106),(96,77),(69,131),(18,103),(28,7),(81,127),(70,94),(23,40),(5,142),(74,46),(58,103),(7,107),(80,102),(58,171),(59,110),(70,28),(66,133),(76,101),(62,29),(18,47),(23,21),(1,72),(93,176),(43,195),(61,152),(49,117),(95,103),(89,85),(25,143),(30,149),(56,21),(80,144),(13,159),(86,75),(17,172),(29,28),(86,133),(5,179),(59,51),(16,198),(91,74),(97,98),(46,154),(18,119),(8,39),(15,102),(40,42),(53,136),(92,160),(75,175),(16,138),(55,18),(42,169),(100,161),(84,1),(14,165),(60,141),(30,156),(3,109),(42,114),(75,108),(78,21),(3,1),(56,70),(64,193),(54,127),(29,185),(38,14),(13,55),(51,108),(83,120),(38,17),(70,12),(100,87),(49,156),(57,151),(22,142),(25,141),(34,178),(98,142),(37,176),(16,30),(25,155),(37,191),(77,51),(35,138),(39,199),(26,107),(64,146),(17,51),(8,136),(52,118),(84,126),(69,158),(14,41),(28,118),(67,54),(55,16),(84,47),(29,200),(100,171),(78,121),(51,153),(26,168),(56,6),(9,28),(46,82),(65,43),(85,36),(23,2),(77,29),(43,22),(14,46),(17,145),(80,65),(50,55),(32,28),(27,120),(53,29),(62,117),(94,62),(50,146),(42,7),(53,153),(97,23),(60,104),(31,99),(97,183),(3,161),(12,9),(52,131),(25,106),(25,165),(14,152),(53,155),(75,35),(87,72),(95,104),(99,39),(28,196),(60,18),(81,27),(57,175),(91,180),(3,47),(86,175),(18,155),(93,141),(65,114),(26,59),(20,154),(25,131),(44,116),(93,98),(21,43),(22,115),(26,179),(98,165),(67,141),(43,4),(89,23),(35,151),(60,175),(34,92),(5,69),(29,103),(7,145),(28,131),(41,197),(96,87),(20,110),(63,136),(88,128),(67,116),(14,134),(28,172),(38,41),(48,59),(25,27),(28,82),(30,86),(28,77),(23,21),(4,61),(12,149),(23,127),(51,187),(36,26),(74,148),(90,56),(83,137),(16,78),(91,19),(48,133),(46,27);
/*!40000 ALTER TABLE `pedido_itens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-22  1:04:54
