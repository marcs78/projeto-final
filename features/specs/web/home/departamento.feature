#language: pt
#enconding: utf-8

@dp
Funcionalidade: Acessar Departamento

  Contexto: Carregar página inicial
    Dado que esteja na home

  Esquema do Cenário: Carregar a pagina do departamento
    E que selecione um departamento
    Então deverá ser exibido o nome do departamento "Acessórios"
