module Web
  module Pages
    module Home
      class Listagem < SitePrism::Page
        element :list_produto, "#maincontent > div.columns > div > div.home-section.slider-bar.lancamentos-imperdiveis-slider > div > div > div > div > ol > div > div > li.item.product.um-product-item.slick-slide.slick-current.slick-active > div > div > div.um-product-item-inner > div > div > a"
        element :txt_produto, "#maincontent > div.columns > div > div.product-info-main > div.product-info-stock-sku > div.product.attribute.sku > div"

        def acessar_lista
          list_produto.gclick
        end
      end
    end
  end
end
