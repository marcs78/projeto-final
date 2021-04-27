# You can implement step definitions for undefined steps with these snippets:

Quando("selecionar o produto") do
  @seleciona_produto = $web_pages.seleciona_produto
  @seleciona_produto.produto
end

Quando("selecionar o produto pela opção compra") do
  @seleciona_produto.opcao_compra
end

# Então("o produto será exibido com sua SKU {string}") do |sku|
#   expect(@seleciona_produto.num_sku).to have_content sku
# end
