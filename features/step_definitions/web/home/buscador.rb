# You can implement step definitions for undefined steps with these snippets:

Dado("que insira um produto {string}") do |info_produto|
  @buscador = $web_pages.buscador
  @buscador.inserir_info(info_produto)
end

Quando("selecionar o primeiro produto") do
  @buscador = $web_pages.buscador
  @buscador.buscar
end

Então("deverá ser exibido a pagina do produto e a SKU {string}") do |sku|
  expect(@buscador.txt_sku).to have_content sku
end

Dado("que insira um produto que não existe {string}") do |sem_resultado|
  @buscador = $web_pages.buscador
  @buscador.sem_resultado(sem_resultado)
end

Então("deverá exibir a mensagem {string}") do |resultado|
  expect(@buscador.txt_rest).to have_content resultado
end
