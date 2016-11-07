-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07-Nov-2016 às 19:06
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nossa jureg`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `nota` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_produto`, `comentario`, `nota`) VALUES
(3, 3, 'Nossa! Esse produto é muito top!\r\nsahsbaufa', 7),
(4, 1, 'parece ser mt loko\r\ntop dos top ', 8),
(5, 9, 'Bem loko! Impolgante! bem zika esse baguiete ai', 9),
(6, 6, 'asdbasubfyasbdvfygiv parece ser muito divertido esse produto!', 8),
(7, 7, 'asjhasuasuah Nossa! Mas que produto divertido! Amei elel!', 6),
(8, 9, 'dcasbndufvgavf8savh deve ser bem loko! farei um teste com ele !', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` int(6) DEFAULT NULL,
  `qnt` int(3) NOT NULL,
  `descricao` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `valor`, `qnt`, `descricao`) VALUES
(1, 'abacate', 500, 10, 'deliciosa fruta do verão'),
(2, 'mouse sem fio', NULL, 2, NULL),
(3, 'jabá', 10000, 5, NULL),
(4, 'whatsapp', 10000, 5, NULL),
(5, 'gORDOx', 10000, 5, NULL),
(6, 'facebook', 10000, 1, NULL),
(7, 'chiclete', 10000, 1, NULL),
(8, 'stream', 10000, 2, NULL),
(9, 'cadeira DXracer', 10000, 2, NULL),
(10, 'PC gamer', 10000, 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `copmentsd` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
