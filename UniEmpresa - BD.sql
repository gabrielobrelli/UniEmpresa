-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql306.infinityfree.com
-- Tempo de geração: 23/10/2026 às 20:38
-- Versão do servidor: 11.4.13-MariaDB
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
-- Banco de dados: `if0_42757432_uniempresa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `auditoria`
--

CREATE TABLE `auditoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `acao` varchar(100) NOT NULL,
  `tabela_afetada` varchar(60) DEFAULT NULL,
  `registro_id` int(10) UNSIGNED DEFAULT NULL,
  `dados_anteriores` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

--
-- Despejando dados para a tabela `auditoria`
--

INSERT INTO `auditoria` (`id`, `empresa_id`, `usuario_id`, `acao`, `tabela_afetada`, `registro_id`, `dados_anteriores`, `dados_novos`, `ip`, `created_at`) VALUES
(1, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '189.40.88.250', '2026-09-08 05:01:02'),
(2, NULL, 1, 'empresa_criada', 'empresas', 1, NULL, '{\"razao_social\":\"Pra d\\u00e1 uma casa pra senhora no Guaruj\\u00e1\",\"nome_fantasia\":\"Auto mec\\u00e2nica Miguel\",\"cpf_cnpj\":\"123.456.789.10\",\"segmento\":\"Auto Mec\\u00e2nica\",\"telefone\":\"(14) 33423062\",\"whatsapp\":\"14981276780\",\"email\":\"gabrielhenriquedesouzaobrelli@gmail.com\",\"endereco\":\"Rua Ant\\u00f4nio Gon\\u00e7ales Fernandes, 40\",\"cidade\":\"Chavantes\",\"estado\":\"SP\",\"cep\":\"18970218\",\"observacoes\":\"\"}', '189.40.88.175', '2026-09-08 06:01:59'),
(3, NULL, 1, 'administrador_criado', 'usuarios', 2, NULL, '{\"empresa_id\":1,\"email\":\"gabrielhenrique\"}', '189.40.88.175', '2026-09-08 06:03:05'),
(4, NULL, 1, 'logout', 'usuarios', 1, NULL, NULL, '189.40.88.175', '2026-09-08 06:03:20'),
(5, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '189.40.88.175', '2026-09-08 06:03:44'),
(6, NULL, 1, 'logout', 'usuarios', 1, NULL, NULL, '189.40.88.175', '2026-09-08 06:04:33'),
(7, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '189.40.88.175', '2026-09-08 06:05:14'),
(8, NULL, 1, 'empresa_atualizada', 'empresas', 1, NULL, '{\"razao_social\":\"Pra d\\u00e1 uma casa pra senhora no Guaruj\\u00e1\",\"nome_fantasia\":\"Auto mec\\u00e2nica Miguel\",\"cpf_cnpj\":\"123.456.789.10\",\"segmento\":\"Auto Mec\\u00e2nica\",\"telefone\":\"(14) 33423062\",\"whatsapp\":\"14981276780\",\"email\":\"gabrielhenriquedesouzaobrelli@gmail.com\",\"endereco\":\"Rua Ant\\u00f4nio Gon\\u00e7ales Fernandes, 40\",\"cidade\":\"Chavantes\",\"estado\":\"SP\",\"cep\":\"18970218\",\"observacoes\":\"\"}', '189.40.88.175', '2026-09-08 06:06:35'),
(9, NULL, 1, 'logout', 'usuarios', 1, NULL, NULL, '189.40.88.175', '2026-09-08 06:06:52'),
(10, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '189.40.88.175', '2026-09-08 06:07:59'),
(11, NULL, 1, 'empresa_atualizada', 'empresas', 1, NULL, '{\"razao_social\":\"Pra d\\u00e1 uma casa pra senhora no Guaruj\\u00e1\",\"nome_fantasia\":\"Auto mec\\u00e2nica Miguel\",\"cpf_cnpj\":\"123.456.789.10\",\"segmento\":\"Auto Mec\\u00e2nica\",\"telefone\":\"(14) 33423062\",\"whatsapp\":\"14981276780\",\"email\":\"gabrielhenriquedesouzaobrelli@gmail.com\",\"endereco\":\"Rua Ant\\u00f4nio Gon\\u00e7ales Fernandes, 40\",\"cidade\":\"Chavantes\",\"estado\":\"SP\",\"cep\":\"18970218\",\"observacoes\":\"\"}', '189.40.88.175', '2026-09-08 06:08:48'),
(12, NULL, 1, 'administrador_criado', 'usuarios', 3, NULL, '{\"empresa_id\":1,\"email\":\"gabrielhenriquesouza\"}', '189.40.88.175', '2026-09-08 06:09:27'),
(13, NULL, 1, 'logout', 'usuarios', 1, NULL, NULL, '189.40.88.175', '2026-09-08 06:09:31'),
(14, 1, 3, 'login', 'usuarios', 3, NULL, NULL, '189.40.88.175', '2026-09-08 06:09:47'),
(15, 1, 3, 'funcionario_criado', 'usuarios', 4, NULL, '{\"email\":\"miguelobrelli\"}', '189.40.88.175', '2026-09-08 06:13:26'),
(16, 1, 3, 'logout', 'usuarios', 3, NULL, NULL, '189.40.88.175', '2026-09-08 06:13:29'),
(17, 1, 4, 'login', 'usuarios', 4, NULL, NULL, '189.40.88.175', '2026-09-08 06:13:39'),
(18, 1, 4, 'perfil_completado', 'usuarios', 4, NULL, NULL, '189.40.88.175', '2026-09-08 06:14:18'),
(19, 1, 4, 'jornada_iniciada', 'jornadas', 4, NULL, NULL, '189.40.88.175', '2026-09-08 06:16:27'),
(20, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '177.55.53.71', '2026-09-08 06:19:49'),
(21, NULL, 1, 'empresa_atualizada', 'empresas', 1, NULL, '{\"razao_social\":\"Pra d\\u00e1 uma casa pra senhora no Guaruj\\u00e1\",\"nome_fantasia\":\"Auto mec\\u00e2nica Miguel\",\"cpf_cnpj\":\"123.456.789.10\",\"segmento\":\"Auto Mec\\u00e2nica\",\"telefone\":\"(14) 33423062\",\"whatsapp\":\"14981276780\",\"email\":\"gabrielhenriquedesouzaobrelli@gmail.com\",\"endereco\":\"Rua Ant\\u00f4nio Gon\\u00e7ales Fernandes, 40\",\"cidade\":\"Chavantes\",\"estado\":\"SP\",\"cep\":\"18970218\",\"observacoes\":\"\"}', '177.55.53.71', '2026-09-08 06:20:10'),
(22, NULL, 1, 'logout', 'usuarios', 1, NULL, NULL, '177.55.53.71', '2026-09-08 06:21:27'),
(23, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '177.55.53.71', '2026-09-08 06:22:09'),
(24, NULL, 1, 'logout', 'usuarios', 1, NULL, NULL, '177.55.53.71', '2026-09-08 06:22:26'),
(25, 1, 3, 'login', 'usuarios', 3, NULL, NULL, '177.55.53.71', '2026-09-08 06:22:39'),
(26, 1, 3, 'categoria_criada', 'categorias', 1, NULL, '{\"nome\":\"roupa\"}', '177.55.53.71', '2026-09-08 06:23:31'),
(27, 1, 3, 'financeiro_lancamento', 'movimentacoes_financeiras', 1, NULL, '{\"tipo\":\"saida\",\"categoria\":\"aluguel\",\"descricao\":\"pagamento do aluguel\",\"valor\":500,\"forma_pagamento\":\"dinheiro\",\"observacao\":\"\",\"data_movimentacao\":\"2026-09-08\"}', '177.55.53.71', '2026-09-08 06:24:23'),
(28, 1, 3, 'financeiro_lancamento', 'movimentacoes_financeiras', 2, NULL, '{\"tipo\":\"entrada\",\"categoria\":\"venda\",\"descricao\":\"trafico humano\",\"valor\":23500,\"forma_pagamento\":\"dinheiro\",\"observacao\":\"\",\"data_movimentacao\":\"2026-09-08\"}', '177.55.53.71', '2026-09-08 06:24:53'),
(29, 1, 3, 'logout', 'usuarios', 3, NULL, NULL, '177.55.53.71', '2026-09-08 06:29:07'),
(30, 1, 4, 'login', 'usuarios', 4, NULL, NULL, '177.55.53.71', '2026-09-08 06:29:18'),
(31, 1, 3, 'login', 'usuarios', 3, NULL, NULL, '177.55.53.71', '2026-09-08 06:33:50'),
(32, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '187.73.203.104', '2026-09-08 15:13:57'),
(33, NULL, 1, 'empresa_congelada', 'empresas', 1, NULL, '{\"motivo\":\"atraso no pagamentp\",\"mensagem\":\"Seu login foi congelado por atraso na mensalidade. Atualize o pagamento junto ao juros para liberamento da conta\"}', '187.73.203.104', '2026-09-08 15:15:18'),
(34, NULL, 1, 'backup_global_gerado', NULL, NULL, NULL, '{\"arquivo\":\"backup_global_2026-09-08_191605.zip\"}', '187.73.203.104', '2026-09-08 15:16:05'),
(35, NULL, 1, 'backup_global_baixado', NULL, NULL, NULL, '{\"arquivo\":\"backup_global_2026-09-08_191605.zip\"}', '187.73.203.104', '2026-09-08 15:16:07'),
(36, NULL, 1, 'backup_global_gerado', NULL, NULL, NULL, '{\"arquivo\":\"backup_global_2026-09-08_191643.zip\"}', '187.73.203.104', '2026-09-08 15:16:43'),
(37, NULL, 1, 'backup_global_gerado', NULL, NULL, NULL, '{\"arquivo\":\"backup_global_2026-09-08_191648.zip\"}', '187.73.203.104', '2026-09-08 15:16:49'),
(38, NULL, 1, 'logout', 'usuarios', 1, NULL, NULL, '187.73.203.104', '2026-09-08 15:19:37'),
(39, 1, 3, 'login', 'usuarios', 3, NULL, NULL, '187.73.203.104', '2026-09-08 15:19:49'),
(40, 1, 4, 'login', 'usuarios', 4, NULL, NULL, '187.73.203.104', '2026-09-08 15:20:08'),
(41, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '187.73.203.104', '2026-09-10 17:17:44'),
(42, NULL, 1, 'empresa_reativada', 'empresas', 1, NULL, NULL, '187.73.203.104', '2026-09-10 17:21:38'),
(43, NULL, 1, 'backup_global_gerado', NULL, NULL, NULL, '{\"arquivo\":\"backup_global_2026-09-10_212212.zip\"}', '187.73.203.104', '2026-09-10 17:22:12'),
(44, NULL, 1, 'backup_global_baixado', NULL, NULL, NULL, '{\"arquivo\":\"backup_global_2026-09-10_212212.zip\"}', '187.73.203.104', '2026-09-10 17:22:14'),
(45, NULL, 1, 'logout', 'usuarios', 1, NULL, NULL, '187.73.203.104', '2026-09-10 17:31:23'),
(46, 1, 3, 'login', 'usuarios', 3, NULL, NULL, '187.73.203.104', '2026-09-10 17:32:00'),
(47, 1, 3, 'produto_criado', 'produtos', 1, NULL, '{\"categoria_id\":1,\"unidade_id\":1,\"fornecedor_id\":null,\"codigo\":\"01010\",\"codigo_barras\":\"11001\",\"nome\":\"item teste\",\"descricao\":\"\",\"preco_custo\":30,\"preco_venda\":50,\"estoque_minimo\":10,\"estoque_maximo\":null,\"permite_estoque_negativo\":false,\"status\":\"ativo\"}', '187.73.203.104', '2026-09-10 17:34:35'),
(48, 1, 3, 'produto_atualizado', 'produtos', 1, NULL, '{\"categoria_id\":1,\"unidade_id\":1,\"fornecedor_id\":null,\"codigo\":\"01010\",\"codigo_barras\":\"11001\",\"nome\":\"item teste\",\"descricao\":\"\",\"preco_custo\":30,\"preco_venda\":50,\"estoque_minimo\":10,\"estoque_maximo\":10,\"permite_estoque_negativo\":false,\"status\":\"ativo\"}', '187.73.203.104', '2026-09-10 17:35:00'),
(49, 1, 3, 'estoque_entrada', 'produtos', 1, NULL, '{\"quantidade\":10,\"valor_unitario\":null}', '187.73.203.104', '2026-09-10 17:35:20'),
(50, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '187.73.203.104', '2026-09-10 17:58:09'),
(51, NULL, 1, 'empresa_criada', 'empresas', 2, NULL, '{\"razao_social\":\"Pedreiro\",\"nome_fantasia\":\"pedreiraria\",\"cpf_cnpj\":\"\",\"segmento\":\"material de contru\\u00e7\\u00e3o\",\"telefone\":\"\",\"whatsapp\":\"\",\"email\":\"\",\"endereco\":\"\",\"cidade\":\"\",\"estado\":\"\",\"cep\":\"\",\"observacoes\":\"\"}', '187.73.203.104', '2026-09-10 17:59:04'),
(52, NULL, 1, 'administrador_criado', 'usuarios', 5, NULL, '{\"empresa_id\":2,\"email\":\"gabrielobrelli\"}', '187.73.203.104', '2026-09-10 17:59:39'),
(53, NULL, 1, 'logout', 'usuarios', 1, NULL, NULL, '187.73.203.104', '2026-09-10 17:59:55'),
(54, 2, 5, 'login', 'usuarios', 5, NULL, NULL, '187.73.203.104', '2026-09-10 18:00:07'),
(55, 2, 5, 'funcionario_criado', 'usuarios', 6, NULL, '{\"email\":\"miguelneto\"}', '187.73.203.104', '2026-09-10 18:00:36'),
(56, 2, 5, 'logout', 'usuarios', 5, NULL, NULL, '187.73.203.104', '2026-09-10 18:00:43'),
(57, 2, 6, 'login', 'usuarios', 6, NULL, NULL, '187.73.203.104', '2026-09-10 18:00:54'),
(58, 2, 6, 'perfil_completado', 'usuarios', 6, NULL, NULL, '187.73.203.104', '2026-09-10 18:01:15'),
(59, 2, 6, 'logout', 'usuarios', 6, NULL, NULL, '187.73.203.104', '2026-09-10 18:02:03'),
(60, 2, 5, 'login', 'usuarios', 5, NULL, NULL, '187.73.203.104', '2026-09-10 18:02:15'),
(61, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '187.73.203.104', '2026-09-12 13:58:23'),
(62, NULL, 1, 'backup_global_gerado', NULL, NULL, NULL, '{\"nome_base\":\"backup_global_2026-09-12_175856\"}', '187.73.203.104', '2026-09-12 13:58:56'),
(63, NULL, 1, 'backup_global_baixado', NULL, NULL, NULL, '{\"arquivo\":\"backup_global_2026-09-12_175856.zip\"}', '187.73.203.104', '2026-09-12 13:58:58'),
(64, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '187.73.203.104', '2026-09-12 14:10:47'),
(65, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '187.73.203.104', '2026-09-12 14:12:48'),
(66, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '177.55.53.71', '2026-09-15 03:22:45'),
(67, NULL, 1, 'login', 'usuarios', 1, NULL, NULL, '177.55.53.71', '2026-09-15 03:45:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `categoria_pai_id` int(10) UNSIGNED DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `status` enum('ativa','inativa') NOT NULL DEFAULT 'ativa',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `empresa_id`, `categoria_pai_id`, `nome`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'roupa', 'ativa', '2026-09-08 06:23:31', '2026-09-08 06:23:31', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cpf_cnpj` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `configuracoes_empresa`
--

CREATE TABLE `configuracoes_empresa` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `chave` varchar(100) NOT NULL,
  `valor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conversas`
--

CREATE TABLE `conversas` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario1_id` int(10) UNSIGNED NOT NULL,
  `usuario2_id` int(10) UNSIGNED NOT NULL,
  `ultima_mensagem_em` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `conversas`
--

INSERT INTO `conversas` (`id`, `usuario1_id`, `usuario2_id`, `ultima_mensagem_em`, `created_at`) VALUES
(1, 1, 5, NULL, '2026-09-15 03:45:26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `razao_social` varchar(150) NOT NULL,
  `nome_fantasia` varchar(150) NOT NULL,
  `cpf_cnpj` varchar(20) DEFAULT NULL,
  `segmento` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `status` enum('ativa','congelada','inativa') NOT NULL DEFAULT 'ativa',
  `motivo_congelamento` varchar(150) DEFAULT NULL,
  `mensagem_congelamento` text DEFAULT NULL,
  `congelada_por` int(10) UNSIGNED DEFAULT NULL,
  `congelada_em` datetime DEFAULT NULL,
  `cor_primaria` varchar(7) NOT NULL DEFAULT '#2563eb',
  `cor_secundaria` varchar(7) NOT NULL DEFAULT '#1e293b',
  `cor_destaque` varchar(7) NOT NULL DEFAULT '#f59e0b',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `empresas`
--

INSERT INTO `empresas` (`id`, `razao_social`, `nome_fantasia`, `cpf_cnpj`, `segmento`, `telefone`, `whatsapp`, `email`, `endereco`, `cidade`, `estado`, `cep`, `logo`, `observacoes`, `status`, `motivo_congelamento`, `mensagem_congelamento`, `congelada_por`, `congelada_em`, `cor_primaria`, `cor_secundaria`, `cor_destaque`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pra dá uma casa pra senhora no Guarujá', 'Auto mecânica Miguel', '123.456.789.10', 'Auto Mecânica', '(14) 33423062', '14981276780', 'gabrielhenriquedesouzaobrelli@gmail.com', 'Rua Antônio Gonçales Fernandes, 40', 'Chavantes', 'SP', '18970218', NULL, '', 'ativa', NULL, NULL, NULL, NULL, '#4400ff', '#007e9e', '#000000', '2026-09-08 06:01:59', '2026-09-10 17:37:24', NULL),
(2, 'Pedreiro', 'pedreiraria', '', 'material de contrução', '', '', '', '', '', '', '', NULL, '', 'ativa', NULL, NULL, NULL, NULL, '#b89900', '#000000', '#ff0000', '2026-09-10 17:59:04', '2026-09-10 18:02:51', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `funcionario_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `tipo` enum('positivo','atencao','observacao') NOT NULL,
  `descricao` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(150) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `status` enum('ativo','inativo') NOT NULL DEFAULT 'ativo',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jornadas`
--

CREATE TABLE `jornadas` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `entrada` datetime NOT NULL,
  `saida` datetime DEFAULT NULL,
  `duracao_minutos` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jornadas`
--

INSERT INTO `jornadas` (`id`, `empresa_id`, `usuario_id`, `entrada`, `saida`, `duracao_minutos`, `created_at`) VALUES
(1, 1, 4, '2026-09-08 06:16:27', NULL, NULL, '2026-09-08 06:16:27'),
(2, 1, 3, '2026-09-08 06:25:09', '2026-09-10 17:35:40', 3550, '2026-09-08 06:25:09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lembretes`
--

CREATE TABLE `lembretes` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `criador_id` int(10) UNSIGNED NOT NULL,
  `destinatario_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descricao` text DEFAULT NULL,
  `prioridade` enum('verde','amarelo','vermelho') NOT NULL DEFAULT 'verde',
  `status` enum('pendente','concluido') NOT NULL DEFAULT 'pendente',
  `data_conclusao` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lembretes`
--

INSERT INTO `lembretes` (`id`, `empresa_id`, `criador_id`, `destinatario_id`, `titulo`, `descricao`, `prioridade`, `status`, `data_conclusao`, `created_at`) VALUES
(1, 1, 3, 4, 'incopentente', 'ce éw burro', 'vermelho', 'concluido', '2026-09-08 06:37:41', '2026-09-08 06:37:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(10) UNSIGNED NOT NULL,
  `conversa_id` int(10) UNSIGNED NOT NULL,
  `remetente_id` int(10) UNSIGNED NOT NULL,
  `texto` text NOT NULL,
  `lida_em` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `movimentacoes_estoque`
--

CREATE TABLE `movimentacoes_estoque` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `produto_id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `venda_id` int(10) UNSIGNED DEFAULT NULL,
  `tipo` enum('entrada','saida') NOT NULL,
  `motivo` enum('compra','venda','ajuste','perda','avaria','uso_interno','devolucao','outro') NOT NULL,
  `quantidade_anterior` decimal(12,3) NOT NULL,
  `quantidade_movimentada` decimal(12,3) NOT NULL,
  `quantidade_posterior` decimal(12,3) NOT NULL,
  `valor_unitario` decimal(12,2) DEFAULT NULL,
  `valor_total` decimal(12,2) DEFAULT NULL,
  `fornecedor_id` int(10) UNSIGNED DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `movimentacoes_estoque`
--

INSERT INTO `movimentacoes_estoque` (`id`, `empresa_id`, `produto_id`, `usuario_id`, `venda_id`, `tipo`, `motivo`, `quantidade_anterior`, `quantidade_movimentada`, `quantidade_posterior`, `valor_unitario`, `valor_total`, `fornecedor_id`, `observacao`, `created_at`) VALUES
(1, 1, 1, 3, NULL, 'entrada', 'compra', '0.000', '10.000', '10.000', NULL, NULL, NULL, '', '2026-09-10 17:35:20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `movimentacoes_financeiras`
--

CREATE TABLE `movimentacoes_financeiras` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `tipo` enum('entrada','saida') NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `forma_pagamento` enum('dinheiro','pix','debito','credito','transferencia','outro') DEFAULT NULL,
  `responsavel_id` int(10) UNSIGNED NOT NULL,
  `venda_id` int(10) UNSIGNED DEFAULT NULL,
  `movimentacao_estoque_id` int(10) UNSIGNED DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `data_movimentacao` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `movimentacoes_financeiras`
--

INSERT INTO `movimentacoes_financeiras` (`id`, `empresa_id`, `tipo`, `categoria`, `descricao`, `valor`, `forma_pagamento`, `responsavel_id`, `venda_id`, `movimentacao_estoque_id`, `observacao`, `data_movimentacao`, `created_at`) VALUES
(1, 1, 'saida', 'aluguel', 'pagamento do aluguel', '500.00', 'dinheiro', 3, NULL, NULL, NULL, '2026-09-08', '2026-09-08 06:24:23'),
(2, 1, 'entrada', 'venda', 'trafico humano', '23500.00', 'dinheiro', 3, NULL, NULL, NULL, '2026-09-08', '2026-09-08 06:24:53');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `tipo` enum('informativa','alerta','aviso','sistema','estoque','financeiro','jornada','conta_congelada','mensagem') NOT NULL,
  `prioridade` enum('verde','amarelo','vermelho') NOT NULL DEFAULT 'verde',
  `titulo` varchar(150) NOT NULL,
  `mensagem` text NOT NULL,
  `lida_em` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `notificacoes`
--

INSERT INTO `notificacoes` (`id`, `empresa_id`, `usuario_id`, `tipo`, `prioridade`, `titulo`, `mensagem`, `lida_em`, `created_at`) VALUES
(1, 1, 4, 'sistema', 'vermelho', 'Novo lembrete: incopentente', 'ce éw burro', '2026-09-08 06:38:04', '2026-09-08 06:37:32'),
(2, 1, 2, 'conta_congelada', 'vermelho', 'Conta congelada', 'Seu login foi congelado por atraso na mensalidade. Atualize o pagamento junto ao juros para liberamento da conta', NULL, '2026-09-08 15:15:18'),
(3, 1, 3, 'conta_congelada', 'vermelho', 'Conta congelada', 'Seu login foi congelado por atraso na mensalidade. Atualize o pagamento junto ao juros para liberamento da conta', '2026-09-10 17:32:07', '2026-09-08 15:15:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(10) UNSIGNED DEFAULT NULL,
  `unidade_id` int(10) UNSIGNED DEFAULT NULL,
  `fornecedor_id` int(10) UNSIGNED DEFAULT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `codigo_barras` varchar(50) DEFAULT NULL,
  `nome` varchar(150) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco_custo` decimal(12,2) NOT NULL DEFAULT 0.00,
  `preco_venda` decimal(12,2) NOT NULL DEFAULT 0.00,
  `estoque_atual` decimal(12,3) NOT NULL DEFAULT 0.000,
  `estoque_minimo` decimal(12,3) NOT NULL DEFAULT 0.000,
  `estoque_maximo` decimal(12,3) DEFAULT NULL,
  `permite_estoque_negativo` tinyint(1) NOT NULL DEFAULT 0,
  `foto` varchar(255) DEFAULT NULL,
  `status` enum('ativo','inativo') NOT NULL DEFAULT 'ativo',
  `observacoes` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `empresa_id`, `categoria_id`, `unidade_id`, `fornecedor_id`, `codigo`, `codigo_barras`, `nome`, `descricao`, `preco_custo`, `preco_venda`, `estoque_atual`, `estoque_minimo`, `estoque_maximo`, `permite_estoque_negativo`, `foto`, `status`, `observacoes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, NULL, '01010', '11001', 'item teste', NULL, '30.00', '50.00', '10.000', '10.000', '10.000', 0, '/public/uploads/produtos/1/5b112401afdb1e35ba85cc4d62b35848.png', 'ativo', NULL, '2026-09-10 17:34:35', '2026-09-10 17:35:20', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tokens_recuperacao`
--

CREATE TABLE `tokens_recuperacao` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `token_hash` varchar(255) NOT NULL,
  `expira_em` datetime NOT NULL,
  `usado_em` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `unidades_medida`
--

CREATE TABLE `unidades_medida` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sigla` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `unidades_medida`
--

INSERT INTO `unidades_medida` (`id`, `empresa_id`, `nome`, `sigla`, `created_at`) VALUES
(1, 1, 'Unidade', 'UN', '2026-09-08 06:23:12'),
(2, 1, 'Caixa', 'CX', '2026-09-08 06:23:12'),
(3, 1, 'Quilograma', 'KG', '2026-09-08 06:23:12'),
(4, 1, 'Litro', 'L', '2026-09-08 06:23:12'),
(5, 1, 'Metro', 'M', '2026-09-08 06:23:12'),
(6, 1, 'Pacote', 'PCT', '2026-09-08 06:23:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `tipo` enum('mestre','admin','funcionario') NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha_hash` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `cargo` varchar(80) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `meta_minutos_diarios` int(10) UNSIGNED DEFAULT 480,
  `perfil_completo` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('ativo','inativo') NOT NULL DEFAULT 'ativo',
  `observacoes` text DEFAULT NULL,
  `ultima_atividade` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `empresa_id`, `tipo`, `nome`, `email`, `senha_hash`, `foto`, `telefone`, `whatsapp`, `cpf`, `cargo`, `data_admissao`, `meta_minutos_diarios`, `perfil_completo`, `status`, `observacoes`, `ultima_atividade`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'mestre', 'Administrador da Plataforma', 'gabrielobrelli@gmail.com', '$2y$10$wPMwWyAqDQfNaRe4KeVNueqpEv.2BubrAYd0J6IBxt4jaeoncJwBy', NULL, NULL, NULL, NULL, NULL, NULL, 480, 1, 'ativo', NULL, '2026-09-15 04:46:52', '2026-09-08 04:44:42', '2026-09-15 04:46:52', NULL),
(2, 1, 'admin', 'Gabriel Henrique de Souza Obrelli', 'gabrielhenrique', '$2y$10$J4dMWlS2Dl3lPPP801A7Nesu5Wc9pz/klI6IyWj1MXQsz/OHRjfoe', NULL, '(14) 98127-6780', NULL, NULL, 'Gerente', NULL, 480, 1, 'ativo', NULL, NULL, '2026-09-08 06:03:05', '2026-09-08 06:03:05', NULL),
(3, 1, 'admin', 'Henrique de Souza', 'gabrielhenriquesouza', '$2y$10$jBqrU9Pca0Cvm4bqLU3AHeYRQ3GECqcTrb3YLEnLIoLcjG3BN.fQK', NULL, '', NULL, NULL, '', NULL, 480, 1, 'ativo', NULL, '2026-09-10 17:41:46', '2026-09-08 06:09:27', '2026-09-10 17:41:46', NULL),
(4, 1, 'funcionario', 'Miguel Obrelli', 'miguelobrelli', '$2y$10$1pJgTyx3WvBVkHjEUiaOIOHz9iUA4x4Ow2tKfyrmlRaRZ0Usv.rNK', '/public/uploads/usuarios/4/16a63f23a1776722b10cb9e109f2c21e.jpg', '(14) 98127-6780', NULL, NULL, 'Repositor', NULL, 60, 1, 'ativo', NULL, '2026-09-08 07:21:03', '2026-09-08 06:13:26', '2026-09-08 07:21:03', NULL),
(5, 2, 'admin', 'Cristiane de Souza Obrelli', 'gabrielobrelli', '$2y$10$pvkv188.tZywcBTLTyLtdeAvVf1qMbKAQQk1V8Yd4CkYLKglt2mGu', NULL, '', NULL, NULL, 'Dirigente', NULL, 480, 1, 'ativo', NULL, '2026-09-10 18:02:52', '2026-09-10 17:59:39', '2026-09-10 18:02:52', NULL),
(6, 2, 'funcionario', 'miguel', 'miguelneto', '$2y$10$jlQ3v6AiTXxApRRoluqlk.EErZk.9vKIKxHaVTL9rF/gb93I9rx2S', '/public/uploads/usuarios/6/7cd0a38dcf99ba6d19556c0e2a35fc1f.png', '198983497290', NULL, NULL, 'vendendor', NULL, 480, 1, 'ativo', NULL, '2026-09-10 18:01:41', '2026-09-10 18:00:36', '2026-09-10 18:01:41', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `numero_venda` varchar(30) NOT NULL,
  `funcionario_id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('aberta','finalizada','cancelada','devolvida','parcial_devolvida') NOT NULL DEFAULT 'aberta',
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `desconto` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `observacoes` text DEFAULT NULL,
  `motivo_cancelamento` varchar(255) DEFAULT NULL,
  `cancelada_por` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `finalizada_em` datetime DEFAULT NULL,
  `cancelada_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda_devolucoes`
--

CREATE TABLE `venda_devolucoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `venda_id` int(10) UNSIGNED NOT NULL,
  `venda_item_id` int(10) UNSIGNED NOT NULL,
  `quantidade` decimal(12,3) NOT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda_itens`
--

CREATE TABLE `venda_itens` (
  `id` int(10) UNSIGNED NOT NULL,
  `venda_id` int(10) UNSIGNED NOT NULL,
  `produto_id` int(10) UNSIGNED NOT NULL,
  `quantidade` decimal(12,3) NOT NULL,
  `preco_unitario` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `quantidade_devolvida` decimal(12,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda_pagamentos`
--

CREATE TABLE `venda_pagamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `venda_id` int(10) UNSIGNED NOT NULL,
  `forma` enum('dinheiro','pix','debito','credito','outro') NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `parcelas` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_categorias_empresa` (`empresa_id`),
  ADD KEY `idx_categorias_pai` (`categoria_pai_id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_clientes_empresa` (`empresa_id`);
ALTER TABLE `clientes` ADD FULLTEXT KEY `ft_clientes_nome` (`nome`);

--
-- Índices de tabela `configuracoes_empresa`
--
ALTER TABLE `configuracoes_empresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_config_empresa_chave` (`empresa_id`,`chave`);

--
-- Índices de tabela `conversas`
--
ALTER TABLE `conversas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_conversas_par` (`usuario1_id`,`usuario2_id`),
  ADD KEY `idx_conversas_u1` (`usuario1_id`),
  ADD KEY `idx_conversas_u2` (`usuario2_id`);

--
-- Índices de tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_empresas_status` (`status`),
  ADD KEY `idx_empresas_segmento` (`segmento`),
  ADD KEY `fk_empresas_congelada_por` (`congelada_por`);

--
-- Índices de tabela `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_feedbacks_funcionario` (`funcionario_id`),
  ADD KEY `fk_feedbacks_empresa` (`empresa_id`),
  ADD KEY `fk_feedbacks_admin` (`admin_id`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fornecedores_empresa` (`empresa_id`);

--
-- Índices de tabela `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jornadas_empresa` (`empresa_id`),
  ADD KEY `idx_jornadas_usuario` (`usuario_id`),
  ADD KEY `idx_jornadas_entrada` (`entrada`);

--
-- Índices de tabela `lembretes`
--
ALTER TABLE `lembretes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lembretes_empresa` (`empresa_id`),
  ADD KEY `idx_lembretes_destinatario` (`destinatario_id`),
  ADD KEY `fk_lembretes_criador` (`criador_id`);

--
-- Índices de tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mensagens_conversa` (`conversa_id`),
  ADD KEY `idx_mensagens_data` (`created_at`),
  ADD KEY `fk_mensagens_remetente` (`remetente_id`);

--
-- Índices de tabela `movimentacoes_estoque`
--
ALTER TABLE `movimentacoes_estoque`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mov_estoque_empresa` (`empresa_id`),
  ADD KEY `idx_mov_estoque_produto` (`produto_id`),
  ADD KEY `idx_mov_estoque_data` (`created_at`),
  ADD KEY `fk_mov_estoque_usuario` (`usuario_id`),
  ADD KEY `fk_mov_estoque_fornecedor` (`fornecedor_id`),
  ADD KEY `fk_mov_estoque_venda` (`venda_id`);

--
-- Índices de tabela `movimentacoes_financeiras`
--
ALTER TABLE `movimentacoes_financeiras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fin_empresa` (`empresa_id`),
  ADD KEY `idx_fin_tipo` (`tipo`),
  ADD KEY `idx_fin_data` (`data_movimentacao`),
  ADD KEY `fk_fin_responsavel` (`responsavel_id`),
  ADD KEY `fk_fin_venda` (`venda_id`),
  ADD KEY `fk_fin_mov_estoque` (`movimentacao_estoque_id`);

--
-- Índices de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_notif_usuario` (`usuario_id`),
  ADD KEY `idx_notif_lida` (`lida_em`),
  ADD KEY `fk_notif_empresa` (`empresa_id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_produtos_empresa` (`empresa_id`),
  ADD KEY `idx_produtos_categoria` (`categoria_id`),
  ADD KEY `idx_produtos_codigo` (`empresa_id`,`codigo`),
  ADD KEY `idx_produtos_codigo_barras` (`empresa_id`,`codigo_barras`),
  ADD KEY `idx_produtos_status` (`status`),
  ADD KEY `fk_produtos_unidade` (`unidade_id`),
  ADD KEY `fk_produtos_fornecedor` (`fornecedor_id`);
ALTER TABLE `produtos` ADD FULLTEXT KEY `ft_produtos_nome` (`nome`);

--
-- Índices de tabela `tokens_recuperacao`
--
ALTER TABLE `tokens_recuperacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tokens_usuario` (`usuario_id`);

--
-- Índices de tabela `unidades_medida`
--
ALTER TABLE `unidades_medida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_unidades_empresa` (`empresa_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_usuarios_email` (`email`),
  ADD KEY `idx_usuarios_empresa` (`empresa_id`),
  ADD KEY `idx_usuarios_tipo` (`tipo`),
  ADD KEY `idx_usuarios_status` (`status`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vendas_numero` (`empresa_id`,`numero_venda`),
  ADD KEY `idx_vendas_empresa` (`empresa_id`),
  ADD KEY `idx_vendas_funcionario` (`funcionario_id`),
  ADD KEY `idx_vendas_status` (`status`),
  ADD KEY `idx_vendas_data` (`created_at`),
  ADD KEY `fk_vendas_cliente` (`cliente_id`),
  ADD KEY `fk_vendas_cancelada_por` (`cancelada_por`);

--
-- Índices de tabela `venda_devolucoes`
--
ALTER TABLE `venda_devolucoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_devolucoes_venda` (`venda_id`),
  ADD KEY `fk_devolucoes_item` (`venda_item_id`),
  ADD KEY `fk_devolucoes_usuario` (`usuario_id`);

--
-- Índices de tabela `venda_itens`
--
ALTER TABLE `venda_itens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_venda_itens_venda` (`venda_id`),
  ADD KEY `idx_venda_itens_produto` (`produto_id`);

--
-- Índices de tabela `venda_pagamentos`
--
ALTER TABLE `venda_pagamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_venda_pagamentos_venda` (`venda_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `configuracoes_empresa`
--
ALTER TABLE `configuracoes_empresa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conversas`
--
ALTER TABLE `conversas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jornadas`
--
ALTER TABLE `jornadas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `lembretes`
--
ALTER TABLE `lembretes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `movimentacoes_estoque`
--
ALTER TABLE `movimentacoes_estoque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `movimentacoes_financeiras`
--
ALTER TABLE `movimentacoes_financeiras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tokens_recuperacao`
--
ALTER TABLE `tokens_recuperacao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `unidades_medida`
--
ALTER TABLE `unidades_medida`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `venda_devolucoes`
--
ALTER TABLE `venda_devolucoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `venda_itens`
--
ALTER TABLE `venda_itens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `venda_pagamentos`
--
ALTER TABLE `venda_pagamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `fk_categorias_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `fk_categorias_pai` FOREIGN KEY (`categoria_pai_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_clientes_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Restrições para tabelas `configuracoes_empresa`
--
ALTER TABLE `configuracoes_empresa`
  ADD CONSTRAINT `fk_config_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `conversas`
--
ALTER TABLE `conversas`
  ADD CONSTRAINT `fk_conversas_u1` FOREIGN KEY (`usuario1_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_conversas_u2` FOREIGN KEY (`usuario2_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `fk_empresas_congelada_por` FOREIGN KEY (`congelada_por`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `fk_feedbacks_admin` FOREIGN KEY (`admin_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_feedbacks_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `fk_feedbacks_funcionario` FOREIGN KEY (`funcionario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD CONSTRAINT `fk_fornecedores_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Restrições para tabelas `jornadas`
--
ALTER TABLE `jornadas`
  ADD CONSTRAINT `fk_jornadas_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `fk_jornadas_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Restrições para tabelas `lembretes`
--
ALTER TABLE `lembretes`
  ADD CONSTRAINT `fk_lembretes_criador` FOREIGN KEY (`criador_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lembretes_destinatario` FOREIGN KEY (`destinatario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lembretes_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Restrições para tabelas `mensagens`
--
ALTER TABLE `mensagens`
  ADD CONSTRAINT `fk_mensagens_conversa` FOREIGN KEY (`conversa_id`) REFERENCES `conversas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mensagens_remetente` FOREIGN KEY (`remetente_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `movimentacoes_estoque`
--
ALTER TABLE `movimentacoes_estoque`
  ADD CONSTRAINT `fk_mov_estoque_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `fk_mov_estoque_fornecedor` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_mov_estoque_produto` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  ADD CONSTRAINT `fk_mov_estoque_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `fk_mov_estoque_venda` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `movimentacoes_financeiras`
--
ALTER TABLE `movimentacoes_financeiras`
  ADD CONSTRAINT `fk_fin_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `fk_fin_mov_estoque` FOREIGN KEY (`movimentacao_estoque_id`) REFERENCES `movimentacoes_estoque` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_fin_responsavel` FOREIGN KEY (`responsavel_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `fk_fin_venda` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD CONSTRAINT `fk_notif_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_notif_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_produtos_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_produtos_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `fk_produtos_fornecedor` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_produtos_unidade` FOREIGN KEY (`unidade_id`) REFERENCES `unidades_medida` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `tokens_recuperacao`
--
ALTER TABLE `tokens_recuperacao`
  ADD CONSTRAINT `fk_tokens_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `unidades_medida`
--
ALTER TABLE `unidades_medida`
  ADD CONSTRAINT `fk_unidades_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Restrições para tabelas `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_cancelada_por` FOREIGN KEY (`cancelada_por`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vendas_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vendas_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `fk_vendas_funcionario` FOREIGN KEY (`funcionario_id`) REFERENCES `usuarios` (`id`);

--
-- Restrições para tabelas `venda_devolucoes`
--
ALTER TABLE `venda_devolucoes`
  ADD CONSTRAINT `fk_devolucoes_item` FOREIGN KEY (`venda_item_id`) REFERENCES `venda_itens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_devolucoes_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `fk_devolucoes_venda` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `venda_itens`
--
ALTER TABLE `venda_itens`
  ADD CONSTRAINT `fk_venda_itens_produto` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  ADD CONSTRAINT `fk_venda_itens_venda` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `venda_pagamentos`
--
ALTER TABLE `venda_pagamentos`
  ADD CONSTRAINT `fk_venda_pagamentos_venda` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
