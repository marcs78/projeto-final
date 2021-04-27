module Web
  module Pages
    module Departamento
      class Produto < SitePrism::Page
        element :img_produto, "#maincontent > div.columns > div > div.products.wrapper.grid.products-grid > ol > li:nth-child(1)"
        element :btn_comprar, "#maincontent > div.columns > div > div.products.wrapper.grid.products-grid > ol > li:nth-child(2) > div > div > div.product-item-inner > div.product.actions.product-item-actions > div > a > span"

        def produto
          img_produto.gclick
        end

        def opcao_compra
          btn_comprar.gclick
        end
      end
    end
  end
end
