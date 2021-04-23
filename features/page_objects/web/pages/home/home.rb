# require_relative "../../sections/headers/main_header.rb"
# require_relative '../../sections/produto/produto_card.rb'

module Web
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url "/"

        # section :main_header, Web::Sections::Headers::MainHeader, ".navbar_fixed_top"
        # sections :produtos, Web::Sections::Produto::ProdutoCard, ".product_grid"

        # def first_buyable_index
        #   produtos.index { |produto| produto.buyable? }
        # end
      end
    end
  end
end
