#language: pt
#enconding: utf-8

@listagem
Funcionalidade: Acessar Categoria de Listagem

  Contexto: Carregar página inicial
    Dado que esteja na home

  Esquema do Cenário: Carregar Listagem
    E que selecione uma produto na listagem
    Então ao entar na pagina do produto verificar a SKU "TC329-MLP-12"
