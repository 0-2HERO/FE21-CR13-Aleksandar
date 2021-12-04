-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 05:07 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fswd14_cr13_bigeventsaleksandar`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211203201059', '2021-12-03 21:11:19', 45);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `datetime`, `description`, `image`, `capacity`, `contact`, `phone`, `location`, `address`, `zip`, `city`, `url`) VALUES
(1, 'Van Gogh Alive', '2021-12-16 10:00:00', 'This is no ordinary art exhibition. Van Gogh’s works have been exhibited and admired\r\nfor over a century – but never like this. Created by Grande Experiences, \"Van Gogh Alive\" is a COVID-Safe digital art experience giving visitors the unique opportunity to immerse themselves into Van Gogh’s artistry and truly venture into his world.', 'https://images.unsplash.com/photo-1626243048879-51f8d9818566?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 400, 'goghexibit@mail.com', '+436603335538', 'METAStadt', 'Dr.-Otto-Neurath-Gasse 3', '1220', 'Wien', 'https://www.goghexibit.com'),
(2, 'Vienna 1900', '2021-12-05 11:00:00', 'The Leopold Museum is a unique treasury of Viennese Modernism and the Wiener Werkstätte. The new permanent exhibition “Vienna 1900. Birth of Modernism” offers insights into the enormous abundance and diversity of the artistic and intellectual achievements of this epoch. Art lovers will be enthralled by the 1,300 exhibits arranged over three floors.\r\nApart from the world’s largest and most significant Egon Schiele collection, masterpieces by Gustav Klimt, the graphics, sculptures, and photographs, there are also exhibits in glass, ceramic, metal, textiles, and leather. Jewelry and furniture are also on display, as are entire apartment furnishings. An exhibition for everyone wishing to experience Viennese Modernism in Vienna.', 'https://images.unsplash.com/photo-1579009420909-b837eefa4274?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1127&q=80', 200, 'modernexhib@mail.com', '+43 660 333 5639', 'Leopold Museum', 'Museumsplatz 1', '1170', 'Wien', 'https://www.modernexhib.com'),
(3, 'Christmas in Vienna 2021', '2021-12-24 12:00:00', 'Traditional Christmas Concert at Konzerthaus with well-known stars\r\n\r\nORF Radio-Symphonieorchester\r\nVienna Boys\' Choir\r\nWiener Akademie\r\n\r\nConductor: Claire Levacher\r\n\r\nBartolomeyBittmann:\r\nMatthias Bartolomey, violoncello\r\nKlemens Bittmann, violin, mandola\r\n\r\nKatharina Konradi, soprano\r\nMargareta Gritskova, mezzo-soprano\r\nLawrence Brownlee, tenor\r\nAdam Plachetka, bass-baritone', 'https://images.unsplash.com/photo-1610703486659-93b5c15e5cd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80', 200, 'chrsitevent@mail.com', '+43 660 938 7201', 'Vienna Konzerthaus', 'Lothringerstraße 20', '1030', 'Wien', 'https://www.christmasvienna.com'),
(4, 'Modigliani. The Primitivist Revolution', '2022-01-09 22:00:00', 'The ALBERTINA Museum will honor Amedeo Modigliani with a major retrospective to mark the one hundredth anniversary of his death. For the first time, Modigliani will not be regarded as a bohemian under the influence of alcohol and drugs, as a pleasing portraitist and pioneer of Art Déco, but as a leading artist of the avant-garde who carried the revolution of Primitivism far into the twentieth century.\r\n\r\nModigliani will premier in Austria with his celebrated nudes and outstanding portraits, as well as his sculptures, which are rarely to be found in museums throughout Europe. The exhibition will bring together works from major public museums and the most prominent private collection between America and Asia.\r\n\r\nA special focus will be placed on the artist’s lifelong exploration of the art of Primitivism. Modigliani’s oeuvre will thus be juxtaposed with characteristic key works by such artists as Pablo Picasso, Constantin Brâncuşi, and André Derain, as well as artifacts from so-called “primitive” — prehistoric, archaic, and non-European — civilizations.', 'https://images.unsplash.com/photo-1614247262098-76459e80e152?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1041&q=80', 100, 'infoalbertina@mail.com', '+43 660 197 1817', 'Albertina Museum', 'Albertinaplatz 1', '1010', 'Wien', 'https://www.modiglianivienna.com'),
(6, 'Tizian\'s Vision of Women', '2021-12-08 14:00:00', 'With the help of sixty paintings on loan from international collections, this Old Master exhibition examines how women aredepicted in the work of Titian (1488-1576) and his contemporaries Jacopo Tintoretto, Paolo Veronese, Paris Bordone and Lorenzo Lotto.\r\n\r\nThe exhibition traces the many facets of this fascinating subject and identifies, examines and interprets the various gestures, glances and attributes. Love and desire play a role in both real and idealized portraits inspired by poetic adaptations, in historical, mythological and allegorical depictions. We also analyze the function of contemporary fashion, coiffure and precious goldsmith work in these portraits. The period’s wealth of treatises and love poetry offer a solidbase for new readings of these unique portrayals of women.', 'https://images.unsplash.com/photo-1505909182942-e2f09aee3e89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1472&q=80', 500, 'tiziant@mail.com', '+436601971800', 'Kunsthistorisches Museum', 'Maria-Theresien-Platz', '1010', 'Wien', 'https://www.tiziant.com'),
(7, 'The Lipizzans\' Performances', '2021-12-14 13:00:00', 'The world-famous performances by the Lipizzans – the Ballet of the White Stallions – take place in the baroque Winter Riding School at Hofburg Palace, built under\r\nCharles VI. in 1729 to 1735 - the most beautiful riding hall in the world.\r\n\r\nThese performances are the result of years of training for the riders and their Lipizzans. From the young, boisterous stallions to the fully trained School Stallions, they enchant the audience with their performance in the School Quadrille, in the Schools on and above the ground and on the Long Rein.\r\n\r\nThis atmosphere and the accompanying classical Viennese music make the wonderful presentation by the rider and their Lipizzans even more enjoyable.', 'https://images.unsplash.com/photo-1623994903889-3be4a8c16b46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', 40, 'Lipizzan@mail.com', '+436609387000', 'Spanish Riding School', 'Michaelerplatz 1', '1010', 'Wien', 'https://www.spnridingschool.com'),
(8, 'Vienna Philharmonic', '2022-02-09 14:00:00', 't is one of the best orchestras in the world; many think it is the best: the Vienna Philharmonic. It acts as an ambassador of Viennese music around the globe - at concerts in Vienna, on tours and through broadcasts such as the New Year\'s Concert and the Summer Night Concert.\r\n\r\nFor decades, the Vienna Philharmonic has given its New Year\'s Concert in the Grand Hall of the Musikverein. Works by the Strauss dynasty and their contemporaries ensure a successful start to the year. Those who would like to be there \'live\' need to strike lucky in the annual ticket draw through the Philharmonic\'s website. The audience of millions glued to TV sets in 90 countries takes part for free.', 'https://images.unsplash.com/photo-1519683109079-d5f539e1542f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', 250, 'philharmonic@mail.com', '+436601971802', 'House of Music', 'Seilerstatte 30', '1010', 'Wien', 'https://www.philharmonicwein.com'),
(9, 'Wiener Symphoniker', '2022-02-09 14:00:00', 'The Wiener Symphoniker clearly provides the city\'s basic supply of symphonic music. It performs the most concerts and opera productions in any given year. With 128 members, the orchestra is amongst Europe\'s best and above all specializes in highly romantic concert literature.\r\n\r\nThe Wiener Symphoniker was founded in 1900 under the name Wiener Concertverein and performed the premieres of, for example, Anton Bruckner\'s \"Ninth Symphony\", Arnold Schönberg\'s \"Gurre-Lieder\" (Songs of Gurre) and Maurice Ravel\'s \"Piano Concerto for the Left Hand\".\r\n\r\nThe orchestra\'s typically Viennese sound was decisively shaped under such important lead directors as Herbert van Karajan and Wolfgang Sawallisch. The new lead director since the 2014/15 season is Philippe Jordan. The orchestra has already celebrated great success with famous guest conductors including Leonard Bernstein, Lorin Maazel, Zubin Mehta, Claudio Abbado and Carlos Kleiber.\r\n\r\nThe Musikverein and the Konzerthaus are the central performance venues of the Wiener Symphoniker. Joining the list a few years ago was the Theater an der Wien, where the orchestra can also be experienced as an opera orchestra. And since 1946, the Viennese orchestra has been \"Orchestra in Residence\" at the Bregenz Festival.', 'https://images.unsplash.com/photo-1587834423414-9545adae44ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', 400, 'armonic@mail.com', '+436601971100', 'Musikverein', 'Musikvereinsplatz 1', '1010', 'Wien', 'https://www.rmonicwein.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
