-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 11:03 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sciencenews`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `url`, `image`) VALUES
(1, 'Microplastics may enter freshwater and soil via compost', 'https://www.sciencenews.org/article/microplastics-may-enter-freshwater-and-soil-compost', 'https://www.sciencenews.org/sites/default/files/2018/04/main/articles/040418_RE_microplastics_feat.jpg'),
(2, 'Human brains make new nerve cells — and lots of them — well into old age', 'https://www.sciencenews.org/article/human-brains-make-new-nerve-cells-and-lots-them-well-old-age', 'https://www.sciencenews.org/sites/default/files/2018/04/main/articles/040518_LH_neurogenesis_feat.jpg'),
(3, 'This ancient lizard may have watched the world through four eyes', 'https://www.sciencenews.org/article/ancient-lizard-may-have-watched-world-through-four-eyes', 'https://www.sciencenews.org/sites/default/files/2018/04/main/articles/040418_CG_4-eyed-lizard_feat.jpg'),
(4, 'Flying insects tell tales of long-distance migrations', 'https://www.sciencenews.org/article/flying-insects-tell-tales-long-distance-migrations', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/041418_AW_insect_feat.jpg'),
(5, 'Toxic chemicals turn a new material from porous to protective', 'https://www.sciencenews.org/article/toxic-chemicals-turn-new-material-porous-protective', 'https://www.sciencenews.org/sites/default/files/2018/04/main/articles/040418_MT_chem-threat_feat.jpg'),
(6, 'Are we ready for the deadly heat waves of the future? ', 'https://www.sciencenews.org/article/are-we-ready-deadly-heat-waves-future', 'https://www.sciencenews.org/sites/default/files/2018/04/main/articles/041418_heat_feat.jpg'),
(7, 'Efforts to contain Mississippi floods may have made them worse', 'https://www.sciencenews.org/article/efforts-contain-mississippi-floods-may-have-made-them-worse', 'https://www.sciencenews.org/sites/default/files/2018/04/main/articles/040418_CG_mississippi-flooding_feat.jpg'),
(8, 'Opioids kill. Here’s how an overdose shuts down your body', 'https://www.sciencenews.org/article/opioid-crisis-overdose-death', ''),
(9, 'A dozen new black holes found in Milky Way’s center', 'https://www.sciencenews.org/article/dozen-new-black-holes-found-milky-way-center', 'https://www.sciencenews.org/sites/default/files/2018/04/main/articles/040318_LG_black-hole_feat.jpg'),
(10, 'Seafloor map shows why Greenland’s glaciers melt at different rates', 'https://www.sciencenews.org/article/seafloor-map-shows-why-greenland-glaciers-melt-different-rates', 'https://www.sciencenews.org/sites/default/files/2018/04/main/articles/040218_CG_glacier-melting_main.jpg'),
(11, 'Birds get their internal compass from this newly ID’d eye protein', 'https://www.sciencenews.org/article/birds-get-their-internal-compass-newly-id-eye-protein', 'https://www.sciencenews.org/sites/default/files/2018/04/main/articles/032718_DG_bird-compass_main.jpg'),
(12, 'Ardi walked the walk 4.4 million years ago', 'https://www.sciencenews.org/article/ardi-walked-walk-44-million-years-ago', 'https://www.sciencenews.org/sites/default/files/2018/04/main/articles/040218_bb_ardi-pelvis_feat.jpg'),
(13, 'Why the Nobel Prize might need a makeover', 'https://www.sciencenews.org/article/why-nobel-prize-might-need-makeover', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/041418_reviews_nobel_feat.jpg'),
(14, 'How honeybees’ royal jelly might be baby glue, too', 'https://www.sciencenews.org/article/how-honeybees-royal-jelly-might-be-baby-glue-too', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/032818_sm_royal-jelly_feat.jpg'),
(15, 'The truth about animals isn’t always pretty', 'https://www.sciencenews.org/article/truth-about-animals-isnt-always-pretty', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/041418_reviews_animals_main.jpg'),
(16, 'The science behind cancer warnings on coffee is murky at best', 'https://www.sciencenews.org/article/science-behind-cancer-warnings-coffee-murky-best', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/033018_EE_coffee_feat.jpg'),
(17, 'Eggshell nanostructure protects a chick and helps it hatch', 'https://www.sciencenews.org/article/eggshell-nanostructure-protects-chick-and-helps-it-hatch', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/032918_LH_eggshell_feat.jpg'),
(18, 'Toxins from the world’s longest animal can kill cockroaches', 'https://www.sciencenews.org/article/toxins-bootlace-worm-can-kill-cockroaches', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/032718_SM_bootlace-worm_feat.jpg'),
(19, 'Some frogs may be bouncing back after killer chytrid fungus ', 'https://www.sciencenews.org/article/some-frogs-may-be-bouncing-back-after-killer-chytrid-fungus', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/032918_SM_chytrid-frog_feat.jpg'),
(20, 'Live heart cells make this material shift color like a chameleon', 'https://www.sciencenews.org/article/live-heart-cells-make-material-shift-color-chameleon', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/032718_MT_color-shifting_main.gif'),
(21, 'Why cracking your knuckles can be so noisy', 'https://www.sciencenews.org/article/why-cracking-your-knuckles-can-be-so-noisy', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/032818_EC_knuckles_main.jpg'),
(22, 'Footprints put people on Canada’s west coast 13,000 years ago', 'https://www.sciencenews.org/article/footprints-put-people-canada-west-coast-13000-years-ago', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/032718_BB_coastal-footprints_feat.jpg'),
(23, 'Brain waves of concertgoers sync up at shows ', 'https://www.sciencenews.org/article/brain-waves-concertgoers-sync-shows', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/032818_RE_brain-wave_main.jpg'),
(24, 'Dark matter is MIA in this strange galaxy', 'https://www.sciencenews.org/article/dark-matter-mia-strange-galaxy', 'https://www.sciencenews.org/sites/default/files/2018/03/main/articles/032818_EC_no-dark-matter_feat.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
