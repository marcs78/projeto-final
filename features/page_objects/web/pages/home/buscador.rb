module Web
  module Pages
    module Home
      class Buscador < SitePrism::Page
        element :box_buscador, "#search"
        element :click_produto, "#search_autocomplete > div > div.amsearch-products.-columns > div.amsearch-wrapper-content > div:nth-child(1) > div.amsearch-autocomplete-information > div > div"
        element :txt_sku, "#maincontent > div.columns > div > div.product-info-main > div.product-info-stock-sku > div.product.attribute.sku > strong"

        def inserir_info(info_produto)
          box_buscador.gset info_produto
        end

        def buscar
          click_produto.gclick
        end
      end
    end
  end
end
