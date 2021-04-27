#language: pt
#enconding: utf-8

@produto
Funcionalidade: Conferir Produto

  Contexto: Carregar Steps
    Dado que esteja na home
    E que insira uma informação "SSD KINGSTON A400 480GB"
    E selecionar o primeiro produto

  Esquema do Cenário: Pagina do Produto
    E estiver disponivel em estoque: "Em estoque"
    Quando inserir as informações de quantidade "1"
    E inserir o frete
    E calcular deverá mostrar os métodos de envio "Métodos de envio"
    # Então visualizar o produto
    Então deverá comprar o produto
