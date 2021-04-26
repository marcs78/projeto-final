# You can implement step definitions for undefined steps with these snippets:

Dado("que acesse a pagina de cadastro") do
  @cadastro = $web_pages.cadastro
  @cadastro.entrar
end

Quando("selecionar a opção pessoa física") do
  @cadastro = $web_pages.cadastro
  @cadastro.inserir_dados
end

Quando("inserir os dados") do
  @cadastro = $web_pages.cadastro
  @cadastro.inserir_dados
end

Então("o usuario estará cadastro") do
  pending # Write code here that turns the phrase above into concrete actions
end
