# You can implement step definitions for undefined steps with these snippets:

# Dado("logado com usuario {string} e senha {string}") do |user, pass|
#   @autenticacao = $web_pages.autenticacao
#   @autenticacao.entrar
#   @autenticacao.auth(user, pass)
#   @autenticacao.login
# end

Quando("acessar minha conta") do
  @minha_conta = $web_pages.conta
  @minha_conta.conta
end

Então("será exibido um menu lateral da minha conta {string}") do |menu|
  expect(@minha_conta.menu_lat).to have_content menu
end
