#language: pt
#enconding: utf-8

@auth
Funcionalidade: Acesso por Login

  Contexto: Carregar página inicial
    Dado que esteja na home

  Esquema do Cenário: Login
    E que acesse a pagina de login
    Quando inserir o usuario "<usuario>" e senha "<senha>"
    E entrar no site
    # Então será exibido no header a mensagem "Olá!  Marcelo!"

      Exemplos:
        | usuario                | senha       |
        | mcordeiro23p@gmail.com | Projeto@123 |
        # | 09009609901            | Projeto@123 |


