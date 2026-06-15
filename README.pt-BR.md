# Componentes Front-End (Engines) Rails da Vindi

[Read in English (README.md)](./README.md)

Uma gem de extensão para a biblioteca base [vindi-rails](https://github.com/wesleyskap/vindi-rails), fornecendo telas de checkout, views HTML prontas e componentes do Stimulus JS configurados para criptografia e tokenização de cartões de crédito utilizando a chave pública da Vindi diretamente no navegador.

## Instalação

Adicione esta linha ao Gemfile da sua aplicação:

```ruby
gem 'vindi-rails-engines'
```

## Recursos e Utilização

### 1. Configuração do Checkout
Copie o Stimulus JS e os formulários de checkout para a sua aplicação Rails:
```bash
bundle exec rails generate vindi:checkout
```
Isso gera:
- A partial de formulário de pagamento (`app/views/vindi/checkout/_form.html.erb`)
- O controlador Stimulus JS (`app/javascript/controllers/vindi_checkout_controller.js`)

### 2. Painel Administrativo (Dashboard)
Monte o painel de controle e monitoramento diretamente no arquivo de rotas da aplicação hospedeira:
```ruby
# config/routes.rb
Rails.application.routes.draw do
  mount Vindi::Engine => "/admin/vindi"
end
```
Isso disponibiliza um painel administrativo completo contendo o status de mapeamento das credenciais, ferramentas de teste de conectividade com a API Vindi em tempo real e listagem dos planos ativos.

### 3. Configuração de Variável de Ambiente
Configure sua chave pública no arquivo de ambiente correspondente:
```bash
ENV["VINDI_PUBLIC_KEY"] = "SUA_CHAVE_PUBLICA"
```

## Executando os Testes

Para rodar a suíte de testes Minitest:
```bash
bundle exec rake test
```
