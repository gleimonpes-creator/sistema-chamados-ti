# sistema-chamados-ti
Sistema web de chamados de T.I. com autenticação obrigatória, controle de acesso e permissões granulares (RBAC), dashboard analítico com Chart.js, alertas em tempo real, upload de anexos e suporte a XAMPP (PHP/MySQL) ou execução local/PWA. Topics sugeridas no GitHub: it-ticketing-system helpdesk php mysql javascript chartjs rbac pwa xampp
# 🖥️ Sistema de Chamados de T.I.

Sistema web completo para abertura, triagem, acompanhamento e análise de chamados de suporte técnico, desenvolvido para ambientes corporativos locais (**XAMPP / PHP / MySQL**) e também utilizável como aplicação web interativa (**PWA-ready**) com **HTML5, CSS3, JavaScript e Chart.js**.

---

## 📸 Capturas de Tela

> Dica: crie uma pasta `screenshots/` na raiz do projeto, salve as imagens da tela e substitua os nomes dos arquivos abaixo.

| Tela de Login & Acesso | Portal do Solicitante |
| :---: | :---: |
| ![Tela de Login](screenshots/login.png) | ![Abertura de Chamado](screenshots/abrir-chamado.png) |

| Dashboard Analítico & Gestão | Gestão de Usuários e Permissões (RBAC) |
| :---: | :---: |
| ![Dashboard T.I.](screenshots/dashboard-ti.png) | ![Usuários e Permissões](screenshots/usuarios-rbac.png) |

---

## ✨ Principais Funcionalidades

- **Autenticação Obrigatória & Controle de Acesso (RBAC):**
  - Login obrigatório para abrir ou gerenciar chamados.
  - Perfis de **Administrador Master**, **Técnico de T.I.** e **Solicitante**.
  - Gestão completa de usuários (cadastrar, renomear, alterar perfil e excluir) e permissões granulares concedidas exclusivamente pelo Administrador Master, com registro de auditoria.
- **Abertura de Chamados com Prioridade e Anexo:**
  - Seleção de departamento, prioridade (**Normal**, **Alta** e **Crítico**), descrição detalhada e upload de imagem com pré-visualização.
  - Acompanhamento dos chamados pelo próprio usuário solicitante.
- **Dashboard Analítico e Operacional:**
  - Gráficos interativos com **Chart.js** (*Status dos Chamados* e *Demandas por Departamento*).
  - Filtros de período (*Hoje*, *7 Dias*, *30 Dias*, *Todos*), busca rápida e impressão de relatórios.
  - Destaque visual pulsante para chamados **Críticos** em aberto, atribuição/assunção por técnico e alertas sonoros/visuais em tempo real.
- **Modo PWA / Android:**
  - Compatível com `manifest.json` e Service Worker (`sw.js`) para instalar na tela inicial de smartphones Android.

---

## 🛠️ Tecnologias Utilizadas

- **Front-end:** HTML5, CSS3 (Grid/Flexbox), JavaScript (ES6+), [Chart.js](https://www.chartjs.org/)
- **Back-end (modo servidor):** PHP 8+ e MySQL / MariaDB
- **PWA:** Web App Manifest + Service Worker

---

## 🚀 Como Executar o Projeto

### 1. Modo Local com XAMPP (PHP + MySQL)
1. Inicie os módulos **Apache** e **MySQL** no painel do **XAMPP**.
2. Acesse `http://localhost/phpmyadmin`, abra a aba **SQL** e execute o script `database.sql`.
3. Copie os arquivos do projeto para `C:\xampp\htdocs\suporte\`.
4. Garanta permissão de escrita para a pasta `uploads/` (criada automaticamente no primeiro envio com anexo).
5. Acesse no navegador:
   - **Aplicação Web Integrada:** `http://localhost/suporte/sistema_chamados_ti.html`
   - **Arquivos Individuais (XAMPP):** `index.html`, `login.html` e `admin.html`

> **Acessar pelo celular na mesma rede Wi-Fi:** substitua `localhost` pelo IPv4 do seu computador (ex.: `http://192.168.1.50/suporte/sistema_chamados_ti.html`).

---

### 2. Hospedagem Online (Produção / Nuvem)
Se quiser disponibilizar o sistema fora da rede local:
1. Contrate uma hospedagem com suporte a **PHP** e **MySQL** (ex.: Hostinger, KingHost, Umbler, Render/Railway ou VPS Linux com Apache/Nginx + PHP + MySQL).
2. Crie o banco de dados no painel da hospedagem e importe o arquivo `database.sql`.
3. Envie os arquivos do projeto via **FTP/SFTP** ou Gerenciador de Arquivos para a pasta pública (`public_html/` ou `www/`).
4. Atualize as credenciais de conexão com o banco (`host`, `usuário`, `senha`, `banco`) no `api.php` (e configure a URL da API na interface caso utilize modo servidor).
5. Ative **HTTPS (SSL)** no domínio para maior segurança e melhor compatibilidade com PWA.

---

### 3. Instalando no Android (PWA)
1. Abra o endereço do sistema no **Google Chrome** no Android.
2. Toque no menu (**⋮**) no canto superior direito.
3. Toque em **Adicionar à tela inicial** ou **Instalar aplicativo**.

---

## 🔐 Segurança e Boas Práticas

- Altere as credenciais padrão antes de colocar em uso real.
- Em produção, centralize a autenticação e a verificação de permissões no back-end PHP com `password_hash()` / `password_verify()` e sessões no servidor.
- Evite expor credenciais de banco ou dados sensíveis no repositório público.

---

## 📦 Publicando no GitHub

Substitua `SEU_USUARIO` pelo seu nome de usuário no GitHub:

```bash
git init
git add .
git commit -m "feat: versão inicial do sistema de chamados de T.I."
git branch -M main
git remote add origin [https://github.com/SEU_USUARIO/sistema-chamados-ti.git](https://github.com/SEU_USUARIO/sistema-chamados-ti.git)
git push -u origin main
