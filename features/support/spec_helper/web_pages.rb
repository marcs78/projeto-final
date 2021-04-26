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
      end
    end
  end
end
