# You can implement step definitions for undefined steps with these snippets:

Quando("utilizar o filtro") do
  @filtro = $web_pages.filtro
  @filtro.marca
  @filtro.serie
  @filtro.modelo
  @filtro.pesquisar
end

Então("o produto será exibido com sua SKU {string}") do |sku|
  expect(@filtro.txt_sku).to have_content sku
end
