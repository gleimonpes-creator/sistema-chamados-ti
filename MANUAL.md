# 📘 Manual de Utilização — Sistema de Chamados de T.I.

Este manual explica como acessar, operar e administrar o **Sistema de Chamados de T.I.** no dia a dia, de acordo com o perfil de cada usuário.

---

## 1. Acesso e Autenticação

1. Abra o sistema no navegador (via servidor local/XAMPP, hospedagem web ou atalho PWA no Android).
2. Na tela inicial de **Login**, informe o **usuário** e a **senha** cadastrados.
3. Clique em **Entrar** (ou pressione `Enter`).
4. Para encerrar a sessão com segurança ao sair do computador ou celular, utilize o botão **Sair** no topo da tela.

> **Importante:** A abertura e a gestão de chamados exigem autenticação. Caso sua sessão expire ou você saia do sistema, será necessário entrar novamente.

---

## 2. Como Usar por Perfil de Acesso

### 👤 Solicitante (Colaborador)
Indicado para usuários que precisam abrir solicitações de suporte e acompanhar o andamento dos próprios chamados.

1. **Abrir um novo chamado:**
   - Acesse a aba/tela **Abrir Chamado**.
   - Preencha o **nome** (ou confira o usuário logado), selecione o **departamento** e a **prioridade** (**Normal**, **Alta** ou **Crítico**).
   - Descreva o problema com clareza no campo de descrição.
   - Se quiser, clique em **Anexar Imagem / Print** para enviar uma foto ou captura de tela do erro (você verá a pré-visualização antes de enviar).
   - Clique em **Enviar Solicitação**.
2. **Acompanhar chamados:**
   - Consulte a listagem dos seus chamados para verificar se estão **Abertos**, **Em Andamento** ou **Concluídos**.

---

### 🛠️ Técnico de T.I.
Indicado para a equipe técnica responsável por atender e resolver os chamados.

1. **Monitorar a fila:**
   - No painel de chamados, visualize as solicitações ordenadas e filtradas por período (**Hoje**, **7 Dias**, **30 Dias**, **Todos**) ou busca textual.
   - Chamados marcados como **Crítico** em aberto recebem destaque visual para priorização imediata.
2. **Inspecionar anexos:**
   - Clique na miniatura da imagem anexada para visualizar o erro em tamanho ampliado e facilitar o diagnóstico.
3. **Atender e atualizar status:**
   - Assuma ou avance o atendimento alterando o status para **Em Andamento** e, após a resolução, para **Concluído** (conforme as permissões habilitadas para o seu usuário).

---

### 🛡️ Administrador Master
Responsável pela visão analítica, gestão operacional dos chamados e administração de usuários e permissões.

1. **Acompanhar indicadores (Dashboard):**
   - Utilize os gráficos e filtros de período para avaliar o volume de chamados por **status** e por **departamento**, além de gerar impressão/relatório quando necessário.
2. **Gerenciar usuários e permissões (RBAC):**
   - Acesse a área de **Usuários & Permissões**.
   - **Cadastrar** novos solicitantes, técnicos ou administradores.
   - **Editar / Renomear** usuários ou ajustar seus perfis.
   - **Conceder ou revogar permissões** específicas (como cadastrar usuários/técnicos/admins, atender/editar/excluir chamados, gerenciar permissões e visualizar auditoria).
   - **Excluir** contas que não devem mais acessar o sistema.
3. **Consultar auditoria:**
   - Revise o registro de ações administrativas e alterações de permissões sempre que precisar rastrear mudanças no sistema.

---

## 3. Boas Práticas para Agilizar o Atendimento

- **Seja específico na descrição:** informe o sistema/programa afetado, mensagem de erro exibida e o que você estava fazendo quando o problema ocorreu.
- **Use "Crítico" apenas em urgências reais:** reserve a prioridade crítica para paradas de setor, sistemas essenciais fora do ar ou bloqueios graves que impeçam o trabalho.
- **Anexe prints legíveis:** capturas de tela completas (sem cortar códigos de erro ou mensagens) reduzem o tempo de diagnóstico da T.I.

---

## 4. Solução de Problemas Comuns

- **Não consigo acessar o painel administrativo:** verifique se o seu usuário possui perfil de Técnico/Administrador e as permissões correspondentes ativas.
- **A imagem não aparece no chamado:** confira se o arquivo é uma imagem válida (`JPG`, `PNG`, `WEBP`, etc.) e se a pasta `uploads/` existe e tem permissão de escrita no servidor (no modo XAMPP/PHP).
- **Novos chamados não atualizam na tela:** clique para atualizar/filtrar novamente ou verifique se o navegador está bloqueando som/notificações.
