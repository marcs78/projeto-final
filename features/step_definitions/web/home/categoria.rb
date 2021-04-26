# You can implement step definitions for undefined steps with these snippets:

Dado("que selecione uma categoria") do
  @categoria = $web_pages.categoria
  @categoria.acessar_cat
end

Então("deverá ser exibido o nome da categoria {string}") do |categoria|
  expect(@categoria.txt_cat).to have_content categoria
end
