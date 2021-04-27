#language: pt
#enconding: utf-8


@filtro
Funcionalidade: Filtro

  Contexto: Carregar Steps
    Dado que esteja na home
    E que selecione um departamento

  Esquema do Cenário: Utilizar Filtro de Busca
    Quando utilizar o filtro
    Então o produto será exibido com sua SKU "SKU"
