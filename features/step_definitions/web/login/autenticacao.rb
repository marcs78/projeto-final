# You can implement step definitions for undefined steps with these snippets:

Dado("que acesse a pagina de login") do
  @autenticacao = $web_pages.autenticacao
  @autenticacao.entrar
end
Quando("inserir o usuario {string} e senha {string}") do |user, pass|
  @autenticacao = $web_pages.autenticacao
  @autenticacao.auth(user, pass)
end

Quando("entrar no site") do
  @autenticacao = $web_pages.autenticacao
  @autenticacao.login
end

Então("será exibido no header a mensagem {string}") do |msg|
  @autenticacao = $web_pages.autenticacao
  @autenticacao.recon
  expect(@autenticacao.msg_inicio).to have_content msg
end
