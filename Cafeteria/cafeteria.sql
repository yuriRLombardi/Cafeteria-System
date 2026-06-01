-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/06/2026 às 23:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cafeteria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `ingredientes` varbinary(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` double NOT NULL,
  `taxaEntrega` double NOT NULL,
  `validade` date DEFAULT NULL,
  `usuario_login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id`, `descricao`, `ingredientes`, `nome`, `preco`, `taxaEntrega`, `validade`, `usuario_login`) VALUES
(1, 'Mais gostoso que um beijo e com sabor de infância', 0xaced0005757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b47020000787000000001740012446572697661646f73206465204c65697465, 'Pão de queijo', 18.9, 10, '2026-07-11', 'YRI'),
(2, 'Beba nosso café expresso para te oferecer energia para ter um dia produtivo', 0xaced0005757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b47020000787000000002740012446572697661646f73206465204c65697465740008c381c3a775636172, 'Café expresso', 15, 15, '2026-06-30', 'YRI'),
(3, 'Relaxe, deixe as preocupações e ansiedades com nosso chá mate. Mais alegria e paz', NULL, 'Chá mate', 13.8, 5, '2026-06-17', 'YRI'),
(11, 'Sinta os sabores das melhores marcas de chocolate no nosso bolo de chocolate', 0xaced0005757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b47020000787000000005740008416d656e646f696d740010476f7264757261205361747572616461740012446572697661646f73206465204c65697465740007476cc3ba74656e740008c381c3a775636172, 'Bolo de chocolate', 20, 20, '2026-07-11', 'YRI'),
(12, 'Um doce delicioso feito puramente de leite', 0xaced0005757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b47020000787000000003740010476f7264757261205361747572616461740012446572697661646f73206465204c65697465740008c381c3a775636172, 'Doce de Leite', 10, 12, '2026-06-30', 'YRI'),
(13, 'Se delicie com nosso brigadeiro', 0xaced0005757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b47020000787000000003740010476f7264757261205361747572616461740012446572697661646f73206465204c65697465740007476cc3ba74656e, 'Brigadeiro', 12.06, 11, '2026-06-30', 'YRI'),
(14, 'Experimente um dos nossos vários sabores de Milk Shake ', 0xaced0005757200135b4c6a6176612e6c616e672e537472696e673badd256e7e91d7b47020000787000000002740012446572697661646f73206465204c65697465740008c381c3a775636172, 'Milk Shake', 24.09, 10, '2026-07-11', 'YRI');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `ingredientes` varchar(500) DEFAULT NULL,
  `taxaDeEntrega` double DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `login_u` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `ingredientes`, `taxaDeEntrega`, `validade`, `login_u`) VALUES
(6, 'Chocolate quente', '...', 12, 'Derivados de Leite,Glúten,Áçucar', 10, '2025-08-28', 'Larissa'),
(7, 'Chocolate quente', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 12, NULL, 10, '2025-08-28', 'Larissa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `e_mail` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`login`, `senha`, `nome`, `cnpj`, `e_mail`, `telefone`, `email`) VALUES
('Larissa', '1234', 'Larissa', 'gjads', 'cxvzvxzv@fcvxz', 'kkkk', NULL),
('YRI', '1234', 'Yuri Rodrigues Lombardi', '35.453.453/4254-35', NULL, '(13) 43454-5454', 'empresaX@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrsyh4wekkd0x8k0lsp7xy1d8r` (`usuario_login`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_u` (`login_u`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`login`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `FKrsyh4wekkd0x8k0lsp7xy1d8r` FOREIGN KEY (`usuario_login`) REFERENCES `usuario` (`login`);

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `login_u` FOREIGN KEY (`login_u`) REFERENCES `usuario` (`login`) ON DELETE CASCADE,
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`login_u`) REFERENCES `usuario` (`login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
