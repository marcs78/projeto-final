#language: pt
#enconding: utf-8


@cadastro
Funcionalidade: Cadastro

  Contexto: Carregar página inicial
    Dado que esteja na home

  @cad_pf
  Esquema do Cenário: Cadastrar Pessoa Fisica
    Dado que acesse a pagina de cadastro
    E selecione a opção "Pessoa Física"
    Quando inserir os dados
    Então o usuario estará cadastro

  @cad_pj
  Esquema do Cenário: Cadastrar Pessoa Juridica
    Dado que acesse a pagina de cadastro
    E selecione a opção "Pessoa Jurídica"
    Quando inserir os dados
    Então o usuario estará cadastro
