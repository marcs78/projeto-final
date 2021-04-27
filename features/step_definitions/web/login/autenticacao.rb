# You can implement step definitions for undefined steps with these snippets:

Dado("que acesse a pagina de login") do
  @autenticacao = $web_pages.autenticacao
  @autenticacao.entrar
end
Quando("inserir o usuario {string} e senha {string}") do |user, pass|
  @autenticacao.auth(user, pass)
end

Quando("entrar no site") do
  @autenticacao.login
end

Então("será exibido no header a mensagem {string}") do |msg|
  @autenticacao.recon
  expect(@autenticacao.msg_inicio).to have_content msg
end

Quando("inserir de forma incorreta o usuario {string} e senha {string}") do |user, pass|
  @autenticacao.error_user(user, pass)
end

Quando("realizar a tentativa entrar") do
  @autenticacao.login
end

Então("deverá exibir o alerta para a falta de usuario {string}") do |alerta_user|
  expect(@autenticacao.user_alerta).to have_content alerta_user
end

Quando("inserir o usuario {string} e senha de forma incorreta {string}") do |user, pass|
  @autenticacao.error_pass(user, pass)
end

Então("deverá exibir o alerta para a falta de senha {string}") do |alerta_pass|
  expect(@autenticacao.pass_alerta).to have_content alerta_pass
end

Quando("inserir de forma incorreta o usuario  {string} e senha {string}") do |user, pass|
  @autenticacao.error_auth(user, pass)
end

Então("deverá exibir o alerta para a falta de usuario {string} e senha {string}") do |alerta_user, alerta_pass|
  expect(@autenticacao.user_alerta).to have_content alerta_user
  expect(@autenticacao.pass_alerta).to have_content alerta_pass
end
