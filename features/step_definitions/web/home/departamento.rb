Dado("que selecione um departamento") do
  @home = $web_pages.home
  @home.acessar_dp
end

Então("deverá ser exibido o nome do departamento {string}") do |tipo|
  expect(@home.txt_dp).to have_content tipo
end
