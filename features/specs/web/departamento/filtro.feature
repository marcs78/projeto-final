#language: pt
#enconding: utf-8


@filtro
Funcionalidade: Filtro

  Contexto: Carregar página inicial
    Dado que esteja na home

  Esquema do Cenário: Utilizar Filtro de Busca
    Dado que esteja na pagina do departamento
    Quando utilizar o filtro
    Então a pagina do produto será exibida
