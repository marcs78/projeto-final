module Web
  module Pages
    module Produtos
      class Produto < SitePrism::Page
        element :txt_disp, "#maincontent > div.columns > div > div.product-info-main > div.product-info-stock-sku > div.stock.available > span"
        element :input_qtd, "#qty"
        element :input_frete, "#estimate_postcode.input-text.validate-zip-international"
        element :btn_frete, "#estimate_product_shipping"
        element :env_frete, "#freight-results > thead > tr > th:nth-child(1)"
        # element :view_product, "#maincontent > div.columns > div > div.product.media > div.gallery-placeholder > div.fotorama-item.fotorama.fotorama1619467812512 > div.fotorama__wrap.fotorama__wrap--css3.fotorama__wrap--slide.fotorama__wrap--toggle-arrows.fotorama__wrap--no-controls > div.fotorama__stage > div.fotorama__stage__shaft.fotorama__grab"
        element :btn_comprar, "#product-addtocart-button"

        def quantidade(qtd)
          input_qtd.gset qtd
        end

        def frete
          @produto = Factory::Dynamic.address
          input_frete.gset @produto[:cep]
          @produto
          btn_frete.gclick
        end

        # def view
        #   view_product.gclick
        # end

        def comprar
          btn_comprar.gclick
        end
      end
    end
  end
end
