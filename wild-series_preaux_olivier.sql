-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 07 déc. 2020 à 11:34
-- Version du serveur :  10.4.16-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wild-series_preaux_olivier`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Horreur'),
(2, 'Aventure'),
(3, 'Thriller');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `synopsis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `episode`
--

INSERT INTO `episode` (`id`, `season_id`, `title`, `number`, `synopsis`) VALUES
(1, 1, 'Passé décomposé', 1, 'Dans le Kentucky, Rick Grimes, un policier, se réveille à l\'hôpital après plusieurs semaines de coma provoqué par une fusillade qui a mal tourné. Il découvre que le monde, ravagé par une épidémie, est envahi par les morts-vivants. Rick ne songe qu\'à une chose : retrouver sa femme Lori et son fils Carl. Il se rend chez lui mais constate qu\'ils ont disparu, puis rencontre Morgan et son fils Duane, qui se terrent dans leur maison. L\'homme lui explique que la seule façon de tuer les zombies est de les atteindre à la tête. Il lui indique aussi qu\'il existe un camp de réfugiés aux alentours d\'Atlanta...'),
(2, 1, 'Tripes', 2, 'Rick parvient à s\'extraire du char et rencontre un groupe de survivants avec le jeune Glenn, Andrea, Morales, T-Dog et Merle Dixon, un homme passablement raciste et énervé. Tous sont réfugiés dans un immeuble et se demandent comment en sortir. Les zombies tentent de prendre d\'assaut le bâtiment. Rick est obligé d\'attacher Dixon pour le calmer car son attitude envers T-Dog envenime la situation. Le petit groupe pense d\'abord à s\'échapper par les égouts. Dans le camp de réfugiés à l\'extérieur de la ville, Lori et Shane deviennent amants...'),
(3, 1, 'T’as qu’à discuter avec les grenouilles', 3, 'Rick, Glenn et le petit groupe de survivants parviennent à rejoindre le camp de réfugiés situé dans les montagnes aux alentours d\'Atlanta. Rick retrouve sa femme Lori et son fils Carl. Son ancien coéquipier, Shane, qui était devenu l\'amant de Lori, est forcément surpris du retour de Rick. Le cas de Merle Dixon fait débat : fallait-il le laisser attaché sur le toit sans défense ? La découverte d\'un mort-vivant aux abords du camp et le retour de Daryl Dixon, le frère de Merle, précipitent les choses : Rick décide de retourner à Atlanta pour délivrer Merle et récupérer des armes et des munitions...'),
(4, 1, ' Le gang', 4, 'A Atlanta, Rick, Glenn, T-Dog et Daryl cherchent Merle, qui a réussi à s\'enfuir malgré sa main coupée. En voulant récupérer le sac d\'armes, ils rencontrent un autre groupe de survivants, qui eux aussi veulent s\'emparer des munitions. Le gang capture Glenn et les deux parties vont devoir négocier. Au camp en dehors de la ville, alors qu\'Andrea s\'est rapprochée de sa soeur Amy, Jim montre des signes d\'inquiétude. L\'homme ne cesse de creuser des tombes et semble perdre toute notion de la réalité. Les autres habitants du camp décident de l\'attacher de manière préventive...'),
(5, 1, 'Feux de forêt', 5, 'Après l\'attaque du campement, tous les survivants sont résignés et abattus. Andrea pleure sa soeur Amy, Shane reproche à Rick d\'être parti à Atlanta et d\'avoir laissé le camp sans renfort, mais c\'est surtout l\'état de santé de Jim qui inquiète. Il a été mordu par un mort-vivant et sa santé se dégrade. Rick cherche du soutien chez Lori et propose au groupe de quitter les montagnes pour essayer de trouver le centre de soins et de prévention des maladies infectieuses. Il pense que l\'endroit est encore protégé par l\'armée. Tous prennent la route alors que Jim est de plus en plus fiévreux...'),
(6, 1, 'Sujet-test 19', 6, 'Rick et les survivants pénètrent dans le centre de soins et de recherche sur les maladies infectieuses. Là, le docteur Edwin Jenner les accueille. Il est le seul scientifique présent et vit seul depuis plusieurs mois. Après avoir profité d\'un repos auquel ils n\'avaient plus goûté depuis longtemps, Rick, Shane et le groupe se posent beaucoup de questions sur ce qui s\'est passé dans le centre. Le docteur Jenner leur explique l\'état le plus avancé de la recherche sur ce qui transforme les morts en zombies. Mais la situation n\'est pas aussi idéale qu\'il n\'y paraît...'),
(7, 2, 'Ce qui nous attend', 1, 'Les survivants se retrouvent bloqués sur une route envahie par des carcasses de voitures. Ils décident d\'en profiter pour siphonner les réservoirs. C\'est alors qu\'ils sont surpris par un groupe de zombies. Dale tente de superviser les opérations du haut du camion, tandis que Sophia, imprudente, est poursuivie par un groupe de zombies tenaces. Rick parvient à tuer les créatures qui menaçaient Sophia mais la jeune fille disparaît. Rick et les autres se lancent à sa poursuite...'),
(8, 2, 'Saignée', 2, 'Otis, le chasseur, a indiqué à Rick que les habitants de la ferme pourraient sauver Carl, blessé par balles. Le policier, qui porte son fils inconscient, tente désespérément de rejoindre la ferme. Le docteur Hershel Greene, propriétaire de l\'endroit, pense pouvoir sauver le garçon en pratiquant une transfusion sanguine. Rick, qui possède le même groupe sanguin que son fils, donne son sang. Mais le médecin a besoin de matériel médical pour pouvoir opérer correctement. Otis et Shane se portent volontaires pour aller en chercher dans le lycée voisin. Pendant ce temps, Andrea est attaquée par un zombie. Elle est sauvée in extremis par Maggie, la fille de Hershel...'),
(9, 2, 'Le tout pour le tout', 3, 'L\'angoisse règne toujours à la ferme. Le petit Carl est entre la vie et la mort. Les familles Greene et Grimes attendent des nouvelles de Shane et Otis, partis chercher du matériel médical au lycée. Mais ce qu\'ils ne savent pas, c\'est que Shane et Otis sont désormais prisonniers du lycée, qui est peu à peu envahi par une horde de zombies. De leur côté, Daryl et Andrea continuent à rechercher Sophia.'),
(10, 2, 'Rose Cherokee', 4, 'Tous les survivants se retrouvent à la ferme des Greene. Maggie et Glenn, profitant d\'une escapade au bourg voisin, se laissent aller à leur attirance mutuelle. Shane, depuis la mort d\'Otis, a du mal à dissimuler sa part sombre. Pendant ce temps, Daryl continue de chercher la jeune Sophia disparue...'),
(11, 2, 'Le Chupacabra', 5, 'Dans les bois aux alentours de la ferme de la famille Greene, Daryl s\'aventure à la recherche d\'indices sur la disparition de Sophia. Malencontreusement, il se blesse assez gravement. Pour ne rien arranger, il doit faire face à des zombies et malgré ses talents de chasseur, sa situation devient critique. Pendant ce temps, Rick devine qu\'il est en train de se passer quelque chose de grave. A la ferme d\'Herschel Greene, les relations entre Glenn et Maggie deviennent plus évidentes. Glenn a une appréciation positive sur l\'attitude de Maggie mais doute encore des sentiments naissants entre eux...'),
(12, 2, 'Secrets', 6, 'Pour les survivants emmenés par Rick Grimes, les temps deviennent difficiles : alors que l\'humanité des uns et des autres est mise à rude épreuve et que le danger est omniprésent à cause des zombies, les relations entre humains sont constamment sur la corde raide. Le jeune Glenn devient ainsi le dépositaire de deux lourds secrets. Va-t-il en supporter le poids ? De son côté, Rick doit révéler un élément de la vie d\'une personne proche de lui. Qu\'en sera-t-il des conséquences ? Andrea, quant à elle, développe de nouvelles aptitudes et doit s\'en servir lors d\'un affrontement sans merci...'),
(13, 2, 'Déjà plus ou moins mort', 7, 'Entre les survivants, emmenés par Rick, et les habitants de la ferme Greene, les discussions sont vives sur l\'attitude à adopter face au monde et ce qu\'il est devenu. Hershel refuse de voir une certaine réalité. Andrea, de son côté, affirme sa personnalité et sort peu à peu de sa coquille. Entre les secrets des uns et des autres, l\'ambiance devient pesante. Mais tous prennent de plus en plus conscience que dans ce monde devenu un enfer permanent, tout un chacun est considéré comme de la nourriture pour les autres...'),
(14, 2, 'Nebraska', 8, 'Les morts vivants retenus dans la grange ont tous été tués. La tension monte d\'un cran au sein du petit groupe de survivants. Hershel Greene veut que Rick et ses amis quittent immédiatement sa ferme. Shane s\'en prend à Rick et l\'accuse de ne pas être assez réaliste sur la situation, sachant que Sophia se trouvait dans la grange. Dale prévient Andrea et Lori de se méfier de Shane et de sa personnalité trouble, d\'autant plus qu\'il le soupçonne de ne pas avoir dit toute la vérité sur la mort d\'Otis...'),
(15, 2, 'Le Doigt sur la détente', 9, 'Pour les survivants, la situation ne s\'améliore pas. Après les multiples dissensions qui ont fait exploser le groupe, où l\'attitude de Shane a été un élément déterminant, chacun tente de suivre sa propre voie. Rick et Glenn ont suivi Hershel lorsqu\'il est parti en ville alors qu\'il s\'était fait une règle de ne jamais quitter sa ferme. Malencontreusement, les trois hommes se retrouvent pris au piège et doivent se battre contre des morts-vivants. De son côté, Shane découvre que Lori est en danger...'),
(16, 2, 'A dix-huit miles, au moins', 10, 'Rick, accompagné de Shane, emmène Randall au plus loin de la ferme des Greene pour le perdre afin qu\'il n\'en retrouve pas le chemin. Ils l\'abandonnent dans une ancienne école et se disputent quant à son sort. Shane veut l\'exécuter alors que Rick demande une nuit pour réfléchir à cette question. Mais les trois hommes sont attaqués par des rôdeurs. A la ferme, Beth, désespérée de vivre dans un monde aussi violent, veut mettre fin à ses jours. Lori et Andrea n\'ont pas la même opinion sur l\'attitude à adopter vis-à-vis d\'elle. Quant à Maggie, elle cherche surtout à protéger sa soeur...'),
(17, 2, 'Juge, Juré et Bourreau', 11, 'Alors que l\'hiver approche et que les survivants tentent de s\'organiser pour rester loin des ennuis et des morts-vivants qui rôdent aux alentours, l\'ambiance dans le groupe est toujours aussi pesante. Rick et Shane ne s\'entendent pas sur l\'attitude à adopter vis-à-vis de Randall. A la ferme, Dale s\'interroge sur la part d\'humanité qui subsiste encore dans le groupe. Les actions du jeune Carl portent à conséquences. Quant à Beth, Andrea et Lori continuent de la surveiller après sa tentative de suicide...'),
(18, 2, 'Les Meilleurs Anges de notre nature', 12, 'Dale a été attaqué par un rôdeur aux alentours de la ferme et il n\'a pas survécu à ses blessures. Tout le monde dans le groupe est choqué par sa disparition, car il représentait une part d\'humanité dans ce monde violent. Rick, Shane et les autres doivent maintenant redoubler d\'attention car les rôdeurs peuvent frapper à n\'importe quel moment. Leur priorité reste la sécurité du groupe. De plus, Randall pose problème. Rick voulait le tuer mais il n\'a pas pu l\'exécuter sous les yeux de son fils. Le jeune homme est-il fiable ?...'),
(19, 2, 'Près du feu mourant', 13, 'De retour des bois qui entourent la ferme, Rick et son fils Carl découvrent que l\'endroit où ils vivent depuis plusieurs semaines est devenu un véritable chaos. Le petit groupe de survivants est complètement séparé et les derniers semblants d\'unité ont volé en éclats. La ferme des Greene n\'est plus le havre de paix espéré par certains. De plus, le leadership de Rick sur le groupe est désormais remis en cause...');

-- --------------------------------------------------------

--
-- Structure de la table `program`
--

CREATE TABLE `program` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `program`
--

INSERT INTO `program` (`id`, `title`, `summary`, `poster`, `category_id`) VALUES
(1, 'Walking Dead', 'Le policier Rick Grimes se r?veille apr?s un long coma. Il d?couvre avec effarement que le monde, ravag? par une ?pid?mie, est envahi par les morts-vivants.', 'https://m.media-amazon.com/images/M/MV5BZmFlMTA0MmUtNWVmOC00ZmE1LWFmMDYtZTJhYjJhNGVjYTU5XkEyXkFqcGdeQXVyMTAzMDM4MjM0._V1_.jpg', 1),
(2, 'The Haunting Of Hill House', 'Plusieurs fr?res et sours qui, enfants, ont grandi dans la demeure qui allait devenir la maison hant?e la plus c?l?bre des ?tats-Unis, sont contraints de se r?unir pour finalement affronter les fant?mes de leur pass?.', 'https://m.media-amazon.com/images/M/MV5BMTU4NzA4MDEwNF5BMl5BanBnXkFtZTgwMTQxODYzNjM@._V1_SY1000_CR0,0,674,1000_AL_.jpg', 1),
(3, 'American Horror Story', 'A chaque saison, son histoire. American Horror Story nous embarque dans des r?cits ? la fois poignants et cauchemardesques, m?lant la peur, le gore et le politiquement correct.', 'https://m.media-amazon.com/images/M/MV5BODZlYzc2ODYtYmQyZS00ZTM4LTk4ZDQtMTMyZDdhMDgzZTU0XkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 1),
(4, 'Love Death And Robots', 'Un yaourt susceptible, des soldats lycanthropes, des robots d?cha?n?s, des monstres-poubelles, des chasseurs de primes cyborgs, des araign?es extraterrestres et des d?mons assoiff?s de sang : tout ce beau monde est r?uni dans 18 courts m?trages anim?s d?conseill?s aux ?mes sensibles.', 'https://m.media-amazon.com/images/M/MV5BMTc1MjIyNDI3Nl5BMl5BanBnXkFtZTgwMjQ1OTI0NzM@._V1_SY1000_CR0,0,674,1000_AL_.jpg', 1),
(5, 'Penny Dreadful', 'Dans le Londres ancien, Vanessa Ives, une jeune femme puissante aux pouvoirs hypnotiques, allie ses forces ? celles d Ethan, un gar?on rebelle et violent aux allures de cowboy, et de Sir Malcolm, un vieil homme riche aux ressources in?puisables.  Ensemble, ils combattent un ennemi inconnu, presque invisible, qui ne semble pas humain et qui massacre la population.', 'https://m.media-amazon.com/images/M/MV5BNmE5MDE0ZmMtY2I5Mi00Y2RjLWJlYjMtODkxODQ5OWY1ODdkXkEyXkFqcGdeQXVyNjU2NjA5NjM@._V1_SY1000_CR0,0,695,1000_AL_.jpg', 1),
(6, 'Fear The Walking Dead', 'La s?rie se d?roule au tout d?but de l ?pid?mie relat?e dans la s?rie-m?re The Walking Dead et se passe dans la ville de Los Angeles, et non ? Atlanta. Madison est conseill?re dans un lyc?e de Los Angeles. Depuis la mort de son mari, elle ?l?ve seule ses deux enfants : Alicia, excellente ?l?ve qui d?couvre les premiers ?mois amoureux, et son grand fr?re Nick qui a quitt? la fac et a sombr? dans la drogue.', 'https://m.media-amazon.com/images/M/MV5BYWNmY2Y1NTgtYTExMS00NGUxLWIxYWQtMjU4MjNkZjZlZjQ3XkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `season`
--

CREATE TABLE `season` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `season`
--

INSERT INTO `season` (`id`, `program_id`, `number`, `year`, `description`) VALUES
(1, 1, 1, 2010, 'The Walking Dead Saison 1\r\nAprès avoir été blessé dans l’exercice de ses fonctions, le shérif Rick Grimes se réveille d’un coma de plusieurs semaines et découvre un monde post-apocalyptique où la quasi-totalité de ...'),
(2, 1, 2, 2011, 'The Walking Dead Saison 2\r\nA la suite de l’explosion du CDC, Rick et son groupe fuient Atlanta alors que la ville est infestée de zombies. Confrontés à une nouvelle menace, ces derniers trouvent refuge dans la ferme ...'),
(3, 1, 3, 2012, 'The Walking Dead Saison 3\r\nQuelques mois après avoir abandonné la ferme d’Hershel, Rick et sa communauté de survivants découvrent une prison abandonnée dans laquelle s’installer. Mais la sécurité du groupe se trouve ...'),
(4, 1, 4, 2013, 'The Walking Dead Saison 4 \r\nPlusieurs mois se sont écoulés depuis l’attaque du Gouverneur et la vie reprend peu à peu son cours à la prison. Lorsqu’un événement tragique oblige les survivants à se séparer et à ...'),
(5, 1, 5, 2014, 'The Walking Dead Saison 5\r\nCaptifs de la communauté du Terminus, Rick et les siens parviennent à prendre la fuite. Après un long périple et de nombreux sacrifices, le groupe trouve refuge à Alexandria, une petite ville ...'),
(6, 1, 6, 2015, 'The Walking Dead Saison 6\r\nLorsque de nouvelles menaces mettent en danger la sécurité d’Alexandria, l’utopie prend fin, et la communauté va vite s’apercevoir que le monde qui l’entoure est bien plus vaste et complexe ...'),
(7, 1, 7, 2016, 'The Walking Dead Saison 7\r\nÉbranlé par les événements tragiques qui se sont produits lors de sa confrontation avec Negan, Rick est contraint de se soumettre aux exigences des Sauveurs. Tandis que la communauté ...'),
(8, 1, 8, 2017, 'The Walking Dead Saison 8\r\nAprès avoir subi la violence de Negan, Rick et les habitants d’Alexandria déclarent la guerre aux Sauveurs. Désormais alliés aux communautés d’Hilltop et du Royaume, ils ne reculeront devant ...'),
(9, 1, 9, 2018, 'The Walking Dead Saison 9\r\nUn an et demi après la défaite de Negan, les différentes communautés de survivants se sont unifiées et vivent désormais en harmonie. Mais un mystérieux groupe, connu sous le nom des ...'),
(10, 1, 10, 2019, 'The Walking Dead Saison 10');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
