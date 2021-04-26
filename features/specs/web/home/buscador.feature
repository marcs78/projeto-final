#language: pt
#enconding: utf-8

@busca
Funcionalidade: Busca

  Contexto: Carregar página inicial
    Dado que esteja na home

  Esquema do Cenário: Usar Buscador
    Dado que insira uma informação "<informacao>"
    E selecionar o primeiro produto
    Então deverá ser exibido a pagina do produto e a SKU "SKU"

      Exemplos:
        | informacao              |
        | SSD KINGSTON A400 480GB |
        | TE038-MLP-81            |
        | 14 N4020                |
        | Positivo                |
        | Zenbook                 |
        | L09S6Y11                |
