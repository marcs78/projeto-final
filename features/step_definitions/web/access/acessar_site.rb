# # Dado("que esteja na home") do
# @home = $web_pages.home
# @home.loading
# end

# You can implement step definitions for undefined steps with these snippets:

Dado("que esteja na pagina inicial") do
  @home = $web_pages.home
  @home.load
end
