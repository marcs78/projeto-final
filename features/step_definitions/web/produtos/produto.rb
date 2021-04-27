Dado("estiver disponivel em estoque: {string}") do |estoque|
  @produto = $web_pages.produto
  expect(@produto.txt_disp).to have_content estoque
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
