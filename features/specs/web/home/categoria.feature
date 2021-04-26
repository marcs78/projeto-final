#language: pt
#enconding: utf-8

@cat
Funcionalidade: Acessar Categoria do Header

  Contexto: Carregar página inicial
    Dado que esteja na home

  Esquema do Cenário: Carregar Categoria
    Dado que selecione uma categoria
    Então deverá ser exibido o nome da categoria "Baterias"
