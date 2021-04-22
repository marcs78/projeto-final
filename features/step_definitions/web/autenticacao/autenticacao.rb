# Quando("acessar login") do
#   @main_header = @home.main_header
#   @main_header.acessar_login
# end

# Quando('realizar login') do
#   @login = $web_pages.login
#   @usuario = @login.realizar_login
# end

# Então('deverá ser exibido o nome do usuário no header') do
#   expect(@main_header.a_nome_usuario.text).to have_content @usuario[:nome]
# end

# Quando('acessar cadastro') do
#   @main_header = @home.main_header
#   @main_header.acessar_cadastro
# end

# Quando('realizar cadastro') do
#   @cadastro = $web_pages.cadastro
#   @usuario = @cadastro.realizar_cadastro
# end
