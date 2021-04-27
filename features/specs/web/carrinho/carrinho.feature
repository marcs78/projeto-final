#language: pt
#enconding: utf-8

@carrinho
Funcionalidade: Carrinho

  Contexto: Carregar Steps
    Dado que esteja na home
    E que insira uma informação "SSD KINGSTON A400 480GB"
    E selecionar o primeiro produto
    E comprar o produto

   Esquema do Cenário: Utilizar Carrinho
    Dado que esteja na pagina do carrinho "MEU CARRINHO"
    Quando inserir o frete do carrinho
    E escolher o metodo de envio
    Então deverá continuar para o pagamento
