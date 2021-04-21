#language: pt

@autenticacao
Funcionalidade: Autenticação

  @login
  Cenário: Realizar login
    Dado que esteja na home
    Quando acessar login
    E realizar login
    Então deverá ser exibido o nome do usuário no header

  @cadastro
  Cenário: Realizar cadastro
    Dado que esteja na home
    Quando acessar cadastro
    E realizar cadastro
    Então deverá ser exibido o nome do usuário no header
