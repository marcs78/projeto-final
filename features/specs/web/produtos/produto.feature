#language: pt
#enconding: utf-8

@produto
Funcionalidade: Conferir Produto

  Contexto: Carregar Steps
    Dado que esteja na home

  @estoque
  Esquema do Cenário: Produto em estoque
    Dado que insira uma produto "<produto_info>"
    E selecione o produto
    Quando estiver disponivel em estoque: "Em estoque"
    E inserir as informações de quantidade "1"
    E inserir o frete
    E calcular deverá mostrar os métodos de envio "Métodos de envio"
    # Então visualizar o produto
    Então deverá comprar o produto

      Exemplos:
        | produto_info            |
        | SSD KINGSTON A400 480GB |
        | TE038-MLP-81            |

  @fora_estoque
  Esquema do Cenário: Produto fora do estoque
    Dado que insira um produto fora do estoque "<fora_estoque>"
    E selecione um produto fora do estoque
    Então não poderá comprar o produto "Fora de estoque"

      Exemplos:
      | fora_estoque                                                      |
      | DITI RGB SWITCH                                                   |
      | NU041-0001                                                        |
