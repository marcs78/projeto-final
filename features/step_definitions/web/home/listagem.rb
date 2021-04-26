# You can implement step definitions for undefined steps with these snippets:

Dado("que selecione uma produto na listagem") do
  @listagem = $web_pages.listagem
  @listagem.acessar_lista
end

Então("ao entar na pagina do produto verificar a SKU {string}") do |sku|
  expect(@listagem.txt_produto).to have_content sku
end
