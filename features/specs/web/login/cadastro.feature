#language: pt
#enconding: utf-8


@cadastro
Funcionalidade: Cadastro

  Contexto: Carregar página inicial
    Dado que esteja na home

  @cad_pf
  Esquema do Cenário: Cadastrar Pessoa Fisica
    E que acesse a pagina de cadastro
    Quando selecionar a opção pessoa física
    E inserir os dados
    Então o usuario estará cadastro

  # @cad_pj
  # Esquema do Cenário: Cadastrar Pessoa Juridica
  #   E que acesse a pagina de cadastro
  #   Quando selecionar a opção "Pessoa Jurídica"
  #   E informar o CNPJ
  #   E inserir os dados
  #   Então o usuario estará cadastro
