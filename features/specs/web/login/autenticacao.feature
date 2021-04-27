#language: pt
#enconding: utf-8

@auth
Funcionalidade: Acesso por Login

  Contexto: Carregar página inicial
    Dado que esteja na home
    E que acesse a pagina de login

  @auth_funciona
  Esquema do Cenário: Login
    Quando inserir o usuario "<usuario>" e senha "<senha>"
    E entrar no site
    # Então será exibido no header a mensagem "Olá!  Marcelo!"

      Exemplos:
        | usuario                | senha       |
        | mcordeiro23p@gmail.com | Projeto@123 |
        | 09009609901            | Projeto@123 |


  @auth_exception_user
  Esquema do Cenário: Login sem sucesso
    Quando inserir de forma incorreta o usuario "<usuario>" e senha "<senha>"
    E realizar a tentativa entrar
    Então deverá exibir o alerta para a falta de usuario "<alerta_user>"

    Exemplos:
      | usuario                | senha       | alerta_user                  |
      |                        | Projeto@123 | Este é um campo obrigatório. |

  @auth_exception_pass
  Esquema do Cenário: Login sem sucesso
    Quando inserir o usuario "<usuario>" e senha de forma incorreta "<senha>"
    E realizar a tentativa entrar
    Então deverá exibir o alerta para a falta de senha "<alerta_pass>"

    Exemplos:
        | usuario                | senha                        | alerta_pass                  |
        | mcordeiro23p@gmail.com |                              | Este é um campo obrigatório. |
        | 09009609901            |                              | Este é um campo obrigatório. |

  @auth_exception_userpass
  Esquema do Cenário: Login sem sucesso
    Quando inserir de forma incorreta o usuario  "<usuario>" e senha "<senha>"
    E realizar a tentativa entrar
    Então deverá exibir o alerta para a falta de usuario "<alerta_user>" e senha "<alerta_pass>"

    Exemplos:
        | usuario | senha       | alerta_user                  | alerta_pass                 |
        |         |             | Este é um campo obrigatório. | Este é um campo obrigatório.|
