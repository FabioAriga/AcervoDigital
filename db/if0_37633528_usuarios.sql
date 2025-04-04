-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql300.infinityfree.com
-- Tempo de geração: 04/04/2025 às 17:48
-- Versão do servidor: 10.6.19-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_37633528_usuarios`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `assunto` varchar(150) NOT NULL,
  `mensagem` text NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `assunto`, `mensagem`, `data_envio`) VALUES
(0, 'Joao', 'teste@gmail.com', '123', 'teste', '2024-11-22 16:38:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `id_livro` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `nome_autor` varchar(255) NOT NULL,
  `genero` varchar(255) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `capa` varchar(255) NOT NULL,
  `acesso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`id_livro`, `titulo`, `nome_autor`, `genero`, `capa`, `acesso`) VALUES
(1, '1984', 'George Orwell', 'Distopia, FicÃ§Ã£o cientifica, PolÃ­tica, Sociologia', 'https://m.media-amazon.com/images/I/61t0bwt1s3L._AC_UF1000,1000_QL80_.jpg', 3),
(2, 'Assassinato no Expresso do Oriente', 'Agatha Christie', 'MistÃ©rio, Policial, Romance', 'https://m.media-amazon.com/images/I/81Zp6MFxIDL._AC_UF1000,1000_QL80_.jpg', 0),
(3, 'Duna', 'Frank Herbert', 'Aventura, Fantasia, FicÃ§Ã£o cientifica, Romance, Suspense', 'https://m.media-amazon.com/images/I/81zN7udGRUL.jpg', 0),
(4, 'Mensagem', 'Fernando Pessoa', 'Poesia', 'https://www.lpm.com.br/livros/imagens/mensagem_pocket_9788525415158_hd.jpg', 0),
(5, 'O Pequeno PrÃ­ncipe', 'Antoine de Saint-ExupÃ©ry', 'FÃ¡bula, Infantil', 'https://m.media-amazon.com/images/I/71LJ4k-k9hL._AC_UF1000,1000_QL80_.jpg', 0),
(6, 'O Sol Ã© para Todos', 'Harper Lee', 'DomÃ©stica, JurÃ­dica, Romance, Suspense', 'https://m.media-amazon.com/images/I/81B84oHIFmL._UF894,1000_QL80_.jpg', 0),
(7, 'Orgulho e Preconceito', 'Jane Austen', 'Romance, SÃ¡tira', 'https://m.media-amazon.com/images/I/71Xta4Nf7uL._AC_UF1000,1000_QL80_.jpg', 0),
(8, 'Sapiens - Uma Breve HistÃ³ria da Humanidade', 'Yuval Noah Harari', 'Biografia', 'https://m.media-amazon.com/images/I/81BTkpMrLYL.jpg', 0),
(9, 'O Senhor dos AnÃ©is', 'John Ronald Reuel Tolkien', 'Aventura, Fantasia, Romance', 'https://harpercollins.com.br/cdn/shop/products/9786555114355.jpg?v=1691738135', 1),
(10, 'Steve Jobs', 'Walter Isaacson', 'Biografia', 'https://m.media-amazon.com/images/I/81wbmWlRNEL._AC_UF894,1000_QL80_.jpg', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dataNascimento` date NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `email`, `dataNascimento`, `senha`) VALUES
(36, 'Teste', 'teste@gmail.com', '1111-11-11', '$2y$10$eE0kL6u0GPTzZFi48kaf/O0Jw7s9CXFjD.Ia/WxBxQ8aDoAvQXA4y'),
(37, 'Duarte', 'caua.duarte011@gmail.com', '2005-08-12', '$2y$10$jmSo.pbC3j9GiK0Z2THheOgsZ7h0OW90cghRH9E8OJtYLumOe9l4.'),
(43, 'ab', 'ab@gmail.com', '1111-11-11', '$2y$10$s9yiQjdxMHkPIfNZefqfueQgevNo1kCgdBKcK80yVkpwqDhZcmhne'),
(44, 'jvmd', 'joao250705@gmail.com', '2005-07-25', '$2y$10$h7SgmECUXo4m03fw9KfsOOUHEkBlxs8xmfCaZbTiy.yzzj7ovXsUu'),
(45, 'f', 'f.a@gmail.com', '2005-10-28', '$2y$10$ry2Aq.htteFiz/SyRR7WAeanfUQm4fVDmsTgWKbZ7DTEGRPWfF5YC'),
(46, 'Joao', 'joao@gmail.com', '1111-11-11', '$2y$10$41/QEA17Ul/qCBiROg5HPeOx/VR2ljbjfJP/mr6aiv3L3NJa9eeUm'),
(47, 'j', 'j.a@gmail.com', '2005-10-28', '$2y$10$KFKIUlNYoLl0RlZu90URYO/C1qaxYaGVl9jLzMdwXyJv/zln7mmc.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios_livros`
--

CREATE TABLE `usuarios_livros` (
  `id_status` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `status` enum('lendo','finalizado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuarios_livros`
--

INSERT INTO `usuarios_livros` (`id_status`, `id_usuario`, `id_livro`, `status`) VALUES
(4, 45, 1, 'lendo'),
(7, 45, 9, 'finalizado'),
(8, 44, 1, 'lendo');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id_livro`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios_livros`
--
ALTER TABLE `usuarios_livros`
  ADD PRIMARY KEY (`id_status`),
  ADD KEY `id_livro` (`id_livro`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `usuarios_livros`
--
ALTER TABLE `usuarios_livros`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `usuarios_livros`
--
ALTER TABLE `usuarios_livros`
  ADD CONSTRAINT `usuarios_livros_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usuarios_livros_ibfk_2` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
