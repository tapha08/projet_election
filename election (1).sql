-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 23 oct. 2022 à 22:24
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `election`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidats`
--

CREATE TABLE `candidats` (
  `id` int(11) NOT NULL,
  `CNI` bigint(20) NOT NULL,
  `prenom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commune` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomparti` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `candidats`
--

INSERT INTO `candidats` (`id`, `CNI`, `prenom`, `nom`, `commune`, `nomparti`, `identification`) VALUES
(1, 1864132510, 'Macky ', 'Sall', 'Fatick', 'Benno Bokk yakkar', 'macky.jpg'),
(2, 1653218076, 'Mimi', 'Toure', 'Grand Dakar', 'Les Serviteurs', 'mimi.jpg'),
(3, 1900125410, 'Ousmane', 'Sonko', 'Ziguinchor', 'Yewwi Askan Wi', 'sonko.jpeg'),
(4, 1001213591, 'Thierno Alassane', 'Sall', 'Thies Nord', 'Republique Des Valeurs', 'thierno.jpg'),
(5, 1953120010, 'Bougane', 'Gueye', 'Saint Louis', 'Bokk Guiss Guiss', 'bougane.jpeg'),
(6, 1453116531, 'Idrissa', 'Seck', 'Thies Est', 'Rewmi', 'idrissa.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE `communes` (
  `nomcommune` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_electeur` int(11) NOT NULL,
  `nomregion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomdepartement` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `communes`
--

INSERT INTO `communes` (`nomcommune`, `nombre_electeur`, `nomregion`, `nomdepartement`) VALUES
('Fatick', 21378, 'Fatick', 'Fatick'),
('Grand Dakar', 29730, 'Dakar', 'Dakar'),
('Ouakam', 38414, 'Dakar', 'Dakar'),
('Plateau', 33301, 'Dakar', 'Dakar'),
('Pout', 13959, 'Thies', 'Thies'),
('Saint Louis', 118981, 'Saint Louis', 'Saint Louis'),
('Thies Est', 78468, 'Thies', 'Thies'),
('Thies Nord', 59441, 'Thies', 'Thies'),
('Thies Ouest', 51249, 'Thies', 'Thies'),
('Ziguinchor', 98446, 'Ziguinchor', 'Ziguinchor');

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE `departements` (
  `nomdepartement` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_electeur` int(11) NOT NULL,
  `nomregion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`nomdepartement`, `nombre_electeur`, `nomregion`) VALUES
('Dakar', 663020, 'Dakar'),
('Fatick', 160733, 'Fatick'),
('Saint Louis', 162702, 'Saint Louis'),
('Thies', 363482, 'Thies'),
('Ziguinchor', 125154, 'Ziguinchor');

-- --------------------------------------------------------

--
-- Structure de la table `electeurs`
--

CREATE TABLE `electeurs` (
  `id` bigint(20) NOT NULL,
  `prenom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datenaissance` date NOT NULL,
  `commune` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `electeurs`
--

INSERT INTO `electeurs` (`id`, `prenom`, `nom`, `email`, `datenaissance`, `commune`, `password`) VALUES
(22541987, 'Abdourahmane', 'Gueye', 'abdou@gmail.com', '2001-02-16', 'Ouakam', '$2y$10$/P62pTi0941n/.k0O3vLTOisED3sJupi/5QEDEmCgLpcdBpzj4Va.'),
(1001213591, 'Thierno Alassane', 'Sall', 'thierno@gmail.com', '1963-11-30', 'Thies Nord', '$2y$10$upsW7bzTszzlRz//R8dKAugPHPmt51sOr5v4TF9pRMcIIKpebRVeq'),
(1453116531, 'Idrissa', 'Seck', 'idrissa@gmail.com', '1959-08-09', 'Thies Est', '$2y$10$SeVd9auyGIK68JCwHYx89eGHW81QlnKqJOf1nZapzMAMIrVHcG55W'),
(1653218076, 'Mimi', 'Toure', 'mimi@gmail.com', '1962-10-12', 'Grand Dakar', '$2y$10$kj4R4zrzszpToq4f65aY3.r5alNlnDZae015Jjt1FkZXOLebB.X5a'),
(1864132510, 'Macky', 'Sall', 'macky@gmail.com', '1961-12-11', 'Fatick', '$2y$10$83nCHrge3RLHE81bBOTgduQNHVNI555bsoWLnNl1YgRpCr5zpXAZ2'),
(1900125410, 'Ousmane', 'Sonko', 'ousmane@gmail.com', '1974-07-15', 'Ziguinchor', '$2y$10$JmCb89H6MAF43yZ2kcriceVIRIuEJSpc0WpX3WV6/Lwa8jg4nieMq'),
(1953120010, 'Bougane', 'Gueye', 'bougane@gmail.com', '1971-02-18', 'Saint Louis', '$2y$10$maHcReO5hxEUSsDW9.NMoebuPvg0Hb.58rcHpfPqULMIN9YHoTcDy'),
(2254136580, 'Ndeye Marieme', 'Ndiaye', 'mareme@gmail.com', '2002-11-10', 'Thies Est', '$2y$10$0GpDdi82HVpQaA0MngcMHOHtx0oVp9ObnEVniTBQldqPQrL248vdC'),
(4152698751, 'Salimata', 'Ndiaye', 'sali@gmail.com', '2001-02-15', 'Thies Nord', '$2y$10$.WMRpXogPLaV33ikPh.CO.6AgDW8gmEh1zUN7HQncLfqfPx9dqtMO'),
(5412589630, 'Maman', 'Diouf', 'maman@gmail.com', '2000-02-12', 'Plateau', '$2y$10$gDrwFzTe1Y4UOCssHix3rOoz2alH3o4CrikuqqVABESuAojKAGgoa'),
(5541235987, 'Saliou', 'Gueye', 'saliou@gmail.com', '2002-02-21', 'Plateau', '$2y$10$KFHqNOs.Klp8gbKYkDkQke5xq2B7B1vhw8y37rtuhTiexG.XcPK/y'),
(7669865879, 'Cheikh', 'Diagana', 'diagana@gmail.com', '2000-01-31', 'Plateau', '$2y$10$7307GVZydaL.4S.guT46GO.TxitLcHnXtUvb8BoNXdVp61Af0Cp.q'),
(9567123050, 'Maguette', 'Gueye', 'maguette@gmail.com', '1998-08-08', 'Thies Ouest', '$2y$10$7NxLS/fEAWny49Xvk50E..p/ztqopRRmU80xySKVY1e0nRI6vWpK2');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2022_10_12_025830_create_regions_table', 1),
(26, '2022_10_12_030904_create_departements_table', 1),
(27, '2022_10_12_031045_create_communes_table', 1),
(28, '2022_10_12_032402_create_electeurs_table', 1),
(29, '2022_10_12_032501_create_candidats_table', 1),
(30, '2022_10_12_032602_create_votes_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Electeur', 1001213591, 'auth_token', 'a546359e4976a5ce3c25a90e25c9937856597c7770b36991051ec912e0a24eb7', '[\"*\"]', NULL, NULL, '2022-10-15 21:50:33', '2022-10-15 21:50:33'),
(2, 'App\\Models\\Electeur', 1864132510, 'auth_token', '661fca38ce69a02200fc4edaf4b97ed1e534966c85fbdd9a78635815c3ab8876', '[\"*\"]', NULL, NULL, '2022-10-15 23:15:58', '2022-10-15 23:15:58'),
(3, 'App\\Models\\Electeur', 1900125410, 'auth_token', '1fa0ff6f49c62c242056d85a655c97116cea2ff44f3fa9ce8c678d137110a351', '[\"*\"]', NULL, NULL, '2022-10-15 23:23:29', '2022-10-15 23:23:29'),
(4, 'App\\Models\\Electeur', 22541987, 'auth_token', '8dd1b5c6acfb7045c74cffc1f289bba375fcb87496168a79962b52b0f61caa69', '[\"*\"]', NULL, NULL, '2022-10-17 02:00:30', '2022-10-17 02:00:30'),
(5, 'App\\Models\\Electeur', 1953120010, 'auth_token', 'ebd0562388468b5578fe89dc8810e479d092d0700478019dc3c653d2be5b447c', '[\"*\"]', NULL, NULL, '2022-10-17 17:28:27', '2022-10-17 17:28:27'),
(6, 'App\\Models\\Electeur', 1453116531, 'auth_token', 'd80d92ae6db03fa482d74863e0dc42b1a0b4e9b8aebe09d0999dfe634e072731', '[\"*\"]', NULL, NULL, '2022-10-17 17:30:09', '2022-10-17 17:30:09'),
(7, 'App\\Models\\Electeur', 9567123050, 'auth_token', 'e55c17bdb2b722666f19f317a8019cef84493d65864e738c24e04771f09c3553', '[\"*\"]', NULL, NULL, '2022-10-17 21:45:53', '2022-10-17 21:45:53'),
(8, 'App\\Models\\Electeur', 9567123050, 'auth_token', '4600d6538494eee0a24f9fb17a765842d5fcf8f20891c1fd745f45366ea0ae55', '[\"*\"]', NULL, NULL, '2022-10-17 22:52:02', '2022-10-17 22:52:02'),
(9, 'App\\Models\\Electeur', 7669865879, 'auth_token', '3c8ebef0ef9ee6a77c6f752ea047b0b91a3fa20b0993408eee2e323fac04777c', '[\"*\"]', NULL, NULL, '2022-10-17 22:59:07', '2022-10-17 22:59:07'),
(10, 'App\\Models\\Electeur', 5412589630, 'auth_token', '6c16af1bec08342f4c9c03f19b081f2f920201c9dc0132b77420cbb0f0b662c6', '[\"*\"]', NULL, NULL, '2022-10-20 12:46:58', '2022-10-20 12:46:58'),
(11, 'App\\Models\\Electeur', 5412589630, 'auth_token', 'bdd52c16654f8e470e6645ff1cce911ab77c83163ea287f7e6d6668884f134a3', '[\"*\"]', NULL, NULL, '2022-10-20 12:53:57', '2022-10-20 12:53:57'),
(12, 'App\\Models\\Electeur', 5412589630, 'auth_token', 'ba3975574956fba3af110f6dbd8edc377292bc449285c7f50dcbd78d5034f516', '[\"*\"]', NULL, NULL, '2022-10-20 13:05:33', '2022-10-20 13:05:33'),
(13, 'App\\Models\\Electeur', 2254136580, 'auth_token', 'ccb3ff628732ddad6261861e49ca175b98c6dec612b0894a619a06389d6ced3f', '[\"*\"]', NULL, NULL, '2022-10-23 13:22:09', '2022-10-23 13:22:09'),
(14, 'App\\Models\\Electeur', 5541235987, 'auth_token', '56d953e1e276272dcd7a9c96b6e68ae8bfcc9fa3c22d44fd7a2ec4c104a29166', '[\"*\"]', NULL, NULL, '2022-10-23 14:40:42', '2022-10-23 14:40:42'),
(15, 'App\\Models\\Electeur', 4152698751, 'auth_token', '5fd0de456698d78c21c3b8ad100fa069dca210458d4de7f1a20a03306c06ef8a', '[\"*\"]', NULL, NULL, '2022-10-23 16:28:53', '2022-10-23 16:28:53'),
(16, 'App\\Models\\Electeur', 5412589630, 'auth_token', '4dd363c66368181ca7eb5bda1ece2b0147b1b6ea43c85a313e63d98f21ed90d0', '[\"*\"]', NULL, NULL, '2022-10-23 17:22:12', '2022-10-23 17:22:12');

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

CREATE TABLE `regions` (
  `nomregion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_electeur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `regions`
--

INSERT INTO `regions` (`nomregion`, `nombre_electeur`) VALUES
('Dakar', 1687826),
('Fatick', 322290),
('Saint Louis', 504867),
('Thies', 901216),
('Ziguinchor', 283395);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `numvote` int(10) UNSIGNED NOT NULL,
  `id` bigint(20) NOT NULL,
  `id_candidat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `votes`
--

INSERT INTO `votes` (`numvote`, `id`, `id_candidat`) VALUES
(1, 1001213591, 3),
(2, 1864132510, 1),
(3, 1900125410, 3),
(5, 22541987, 3),
(6, 1653218076, 3),
(7, 1953120010, 5),
(8, 1453116531, 5),
(10, 9567123050, 4),
(11, 7669865879, 2),
(16, 2254136580, 6),
(17, 5541235987, 4),
(18, 4152698751, 2),
(19, 5412589630, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `candidats`
--
ALTER TABLE `candidats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `candidats_cni_unique` (`CNI`),
  ADD KEY `candidats_commune_foreign` (`commune`);

--
-- Index pour la table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`nomcommune`),
  ADD KEY `communes_nomregion_foreign` (`nomregion`),
  ADD KEY `communes_nomdepartement_foreign` (`nomdepartement`);

--
-- Index pour la table `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`nomdepartement`),
  ADD KEY `departements_nomregion_foreign` (`nomregion`);

--
-- Index pour la table `electeurs`
--
ALTER TABLE `electeurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `electeurs_email_unique` (`email`),
  ADD KEY `electeurs_commune_foreign` (`commune`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`nomregion`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`numvote`),
  ADD UNIQUE KEY `votes_id_unique` (`id`),
  ADD KEY `votes_id_candidat_foreign` (`id_candidat`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `votes`
--
ALTER TABLE `votes`
  MODIFY `numvote` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidats`
--
ALTER TABLE `candidats`
  ADD CONSTRAINT `candidats_cni_foreign` FOREIGN KEY (`CNI`) REFERENCES `electeurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidats_commune_foreign` FOREIGN KEY (`commune`) REFERENCES `communes` (`nomcommune`) ON DELETE CASCADE;

--
-- Contraintes pour la table `communes`
--
ALTER TABLE `communes`
  ADD CONSTRAINT `communes_nomdepartement_foreign` FOREIGN KEY (`nomdepartement`) REFERENCES `departements` (`nomdepartement`) ON DELETE CASCADE,
  ADD CONSTRAINT `communes_nomregion_foreign` FOREIGN KEY (`nomregion`) REFERENCES `regions` (`nomregion`) ON DELETE CASCADE;

--
-- Contraintes pour la table `departements`
--
ALTER TABLE `departements`
  ADD CONSTRAINT `departements_nomregion_foreign` FOREIGN KEY (`nomregion`) REFERENCES `regions` (`nomregion`) ON DELETE CASCADE;

--
-- Contraintes pour la table `electeurs`
--
ALTER TABLE `electeurs`
  ADD CONSTRAINT `electeurs_commune_foreign` FOREIGN KEY (`commune`) REFERENCES `communes` (`nomcommune`) ON DELETE CASCADE;

--
-- Contraintes pour la table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_id_candidat_foreign` FOREIGN KEY (`id_candidat`) REFERENCES `candidats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_id_foreign` FOREIGN KEY (`id`) REFERENCES `electeurs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
