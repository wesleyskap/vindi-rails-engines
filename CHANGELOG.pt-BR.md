# Registro de Alterações - vindi-rails-engines

Todas as alterações notáveis neste projeto serão documentadas neste arquivo.

## [0.2.0] - 15-06-2026

### Adicionado
- **Dashboard de Integração**: Painel administrativo embarcado montável (`Vindi::Engine`) para verificar status de integração, exibir configurações de credenciais (mascaradas) e testar a conectividade em tempo real via AJAX/Javascript. Possui tema escuro premium e listagem dinâmica de planos ativos.

## [0.1.0] - 2026-06-10

### Adicionado
- Lançamento inicial de componentes visuais front-end (Engines) para o SDK Vindi Rails.
- **Gerador de Checkout**: `rails generate vindi:checkout` copiando templates de view partial `_form.html.erb` e o controlador Stimulus JS `vindi_checkout_controller.js`.
- **Tokenizador de Cartão**: Integração JavaScript nativa para comunicação com a API de criptografia pública da Vindi.
- **Suíte de Testes**: Suíte Minitest integrada validando estrutura de arquivos gerados e cópia correta de recursos.
