# UniEmpresa

> 🚧 **Projeto em desenvolvimento** — o sistema já está no ar para testes, mas ainda passa por ajustes, correções e novas funcionalidades. Não é uma versão final.

Plataforma SaaS **multiempresa** de gestão comercial, construída em **PHP puro + MySQL + JavaScript Vanilla**, sem frameworks. Um único Login Mestre administra várias empresas independentes, cada uma com seus próprios administradores, funcionários, produtos, estoque, vendas, financeiro e configurações — com isolamento de dados garantido no backend, não apenas na interface.

🔗 Demo (em desenvolvimento): [uniempresa.gt.tc](https://uniempresa.gt.tc)

---

## 🧭 Sobre o projeto

O UniEmpresa nasceu como um sistema de gestão comercial (PDV, estoque, financeiro, equipe) pensado para atender **vários segmentos de comércio** — mercados, lojas de roupas, autopeças, materiais de construção e outros — dentro de uma única plataforma multi-tenant, hospedada em um plano de hospedagem compartilhada comum.

O projeto está sendo desenvolvido do zero: modelagem do banco de dados, arquitetura de permissões, autenticação, PDV transacional, controle de estoque, financeiro, jornada de trabalho, chat interno, notificações, relatórios, personalização visual por empresa e backups — com atenção especial a segurança (isolamento entre empresas, proteção contra CSRF/XSS/SQL Injection) e a um código legível e comentado.

As funcionalidades principais já estão implementadas e funcionando na demo, mas o projeto segue em evolução: ajustes de usabilidade, melhorias visuais e novas funcionalidades (como anexos no chat) estão sendo adicionados continuamente.

## ✨ Funcionalidades

**Multiempresa**
- Três níveis de acesso: Mestre (global), Administrador e Funcionário (por empresa)
- Isolamento total de dados entre empresas, validado sempre no servidor
- Congelamento/reativação de empresas pelo Mestre, com mensagem personalizada

**Vendas e estoque**
- PDV com busca de produto por código ou nome, carrinho dinâmico e pagamento combinado (dinheiro + Pix + cartão na mesma venda)
- Controle de estoque com entrada/saída transacional e histórico completo de movimentações
- Cancelamento e devolução de vendas com estorno automático de estoque

**Gestão**
- Financeiro com fluxo de caixa, lançamentos manuais e indicadores de balanço
- Controle de jornada (bater ponto) com meta de horas e alertas
- Relatórios com filtros de período, gráficos e exportação em CSV
- Ranking de desempenho por funcionário

**Comunicação**
- Chat interno em tempo quase real (polling), com regras de permissão por tipo de usuário
- Status online / "visto por último"
- Notificações por prioridade e lembretes entre administradores e funcionários

**Personalização**
- Cada empresa personaliza logo, cores, slogan e textos do próprio painel, com prévia ao vivo
- Backup individual (SQL da própria empresa) para administradores e backup completo do sistema para o Mestre

## 🛠️ Tecnologias

- **Backend:** PHP 8 (orientado a objetos, sem framework), PDO com prepared statements
- **Banco de dados:** MySQL
- **Frontend:** HTML5, CSS3 e JavaScript Vanilla (sem bibliotecas pesadas)
- **Infraestrutura:** hospedagem compartilhada (sem Docker, sem processos em segundo plano, sem WebSocket)

## 🔒 Segurança

- Toda consulta ao banco é filtrada pelo `empresa_id` da sessão do usuário — nunca por um valor vindo da URL ou de um formulário
- Senhas sempre com `password_hash()`/`password_verify()`, nunca em texto puro
- Proteção CSRF em todo formulário e requisição que altera dados
- Saída sempre escapada contra XSS; toda consulta usa parâmetros amarrados contra SQL Injection
- Upload de arquivos validado por MIME real, com nomes aleatórios e bloqueio de execução de script na pasta de uploads

## 📁 Estrutura do projeto

```
├── app/
│   ├── models/        → acesso a dados (uma classe por entidade)
│   ├── middleware/     → autenticação, permissões e isolamento por empresa
│   ├── helpers/        → sessão, CSRF, segurança, upload, backup, exportação
│   └── views/          → layout compartilhado e componentes reaproveitados
├── mestre/              → telas do Login Mestre
├── admin/               → telas do Administrador
├── funcionario/          → telas do Funcionário
├── api/                  → endpoints AJAX (PDV, chat, notificações)
├── database/schema.sql   → estrutura completa do banco de dados
└── public/               → CSS, JavaScript e uploads
```

## 🚀 Rodando localmente

1. Crie um banco MySQL e importe `database/schema.sql`
2. Configure as credenciais em `config/database.php`
3. Ajuste a URL base em `config/app.php`
4. Suba os arquivos em um servidor com PHP 8+ e extensão PDO MySQL
5. Acesse `/install/instalar.php` uma única vez para criar o primeiro Login Mestre, depois remova essa pasta

## 📌 Status

Projeto ativo e em desenvolvimento contínuo. Issues, sugestões e feedback são bem-vindos.

## 👤 Autor

**Gabriel Obrelli**
Estudante de Informática para Internet (ETEC) — [github.com/gabrielobrelli](https://github.com/gabrielobrelli)
