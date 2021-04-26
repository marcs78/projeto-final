#language: pt
#enconding: utf-8


@produto
Funcionalidade: Selecionar Produto

  Contexto: Carregar Feature
    Dado que esteja na home
    E que acesse a pagina do departamento

  Esquema do Cenário: Selecionar Produto
    Quando selecionar o produto
    Então a pagina do produto será exibida

  Esquema do Cenário: Selecionar Produto Pela Compra
    Quando selecionar o produto pela opção compra
    Então a pagina do produto será exibida

