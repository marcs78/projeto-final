#language: pt
#enconding: utf-8

@acesso_conta
Funcionalidade: Minha Conta

  Contexto: Carregar página inicial
    Dado que esteja na home


  @auth @conta
  Esquema do Cenário: Acessar Minha Conta
    # E logado com usuario "<usuario>" e senha "<senha>"
    Quando acessar minha conta
    Então será exibido um menu lateral da minha conta "MINHA CONTA"
      # Exemplos:
      # | usuario                | senha       |
      # | mcordeiro23p@gmail.com | Projeto@123 |

