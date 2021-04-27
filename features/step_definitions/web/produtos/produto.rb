Dado("que insira uma produto {string}") do |produto_info|
  @produto = $web_pages.produto
  @produto.produto_info(produto_info)
end

Dado("selecione o produto") do
  @produto.busca_produto
end

Quando("estiver disponivel em estoque: {string}") do |estoque|
  expect(@produto.txt_estoque).to have_content estoque
end

Quando("inserir as informações de quantidade {string}") do |qtd|
  @produto.quantidade(qtd)
end

Quando("inserir o frete") do
  @produto.frete
end

Quando("calcular deverá mostrar os métodos de envio {string}") do |envio|
  expect(@produto.env_frete).to have_content envio
end

# Então("visualizar o produto") do
#   @produto.view
# end

Então("deverá comprar o produto") do
  @produto.comprar
end

Dado("que insira um produto fora do estoque {string}") do |fora_estoque|
  @produto = $web_pages.produto
  @produto.fora_estoque(fora_estoque)
end

Dado("selecione um produto fora do estoque") do
  @produto.busca_foraestoque
end

Então("não poderá comprar o produto {string}") do |sem_produto|
  expect(@produto.txt_sem).to have_content sem_produto
end
