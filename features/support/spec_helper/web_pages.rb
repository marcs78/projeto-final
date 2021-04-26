Dir[File.join(File.dirname(__FILE__), "page_objects/web/pages/*.rb")]
  .sort.each { |file| require file }

module Web
  module Pages
    class WebPages
      class << self
        def home
          Web::Pages::Home::Home.new
        end

        def categoria
          Web::Pages::Home::Categoria.new
        end

        def listagem
          Web::Pages::Home::Listagem.new
        end

        def buscador
          Web::Pages::Home::Buscador.new
        end

        def autenticacao
          Web::Pages::Login::Autenticacao.new
        end

        def cadastro
          Web::Pages::Login::Cadastro.new
        end

        def conta
          Web::Pages::Perfil::MinhaConta.new
        end
      end
    end
  end
end
