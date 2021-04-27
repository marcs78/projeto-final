#language: pt
#enconding: utf-8


@seleciona_produto
Funcionalidade: Selecionar Produto

  Contexto: Carregar Feature
    Dado que esteja na home
    E que selecione um departamento

  Esquema do Cenário: Selecionar Produto
    Quando selecionar o produto
    # Então o produto será exibido com sua SKU "BC328-LN-0002"

  Esquema do Cenário: Selecionar Produto Pela Compra
    Quando selecionar o produto pela opção compra
    # Então o produto será exibido com sua SKU "SKU"


