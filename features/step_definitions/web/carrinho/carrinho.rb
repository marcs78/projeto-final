Dado("comprar o produto") do
  @produto = $web_pages.produto
  @produto.comprar
end

Dado("que esteja na pagina do carrinho {string}") do |cart|
  @carrinho = $web_pages.carrinho
  expect(@carrinho.txt_cart).to have_content cart
end

Quando("inserir o frete do carrinho") do
  @carrinho.frete
end

Quando("escolher o metodo de envio") do
  @carrinho.frete
end

Então("deverá continuar para o pagamento") do
  @carrinho.next
end
