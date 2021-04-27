#language: pt
#enconding: utf-8

@buscador
Funcionalidade: Busca

  Contexto: Carregar página inicial
    Dado que esteja na home

  @busca
  Esquema do Cenário: Usar Buscador
    E que insira um produto "<informacao>"
    Quando selecionar o primeiro produto
    Então deverá ser exibido a pagina do produto e a SKU "SKU"

      Exemplos:
        | informacao              |
        | Bateria                 |
        | SSD KINGSTON A400 480GB |
        | TE038-MLP-81            |
        | 14 N4020                |
        | Positivo                |
        | Zenbook                 |
        | L09S6Y11                |

  @busca_exception
  Esquema do Cenário: Usar Buscador sem resultados
    E que insira um produto que não existe "<informacao>"
    Então deverá exibir a mensagem '<resultado>'

      Exemplos:
      | informacao       | resultado                        |
      | Abacaxi          | A busca não retornou resultados. |
      | Gasolina         | A busca não retornou resultados. |


