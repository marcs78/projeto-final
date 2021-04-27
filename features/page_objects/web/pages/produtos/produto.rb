module Web
  module Pages
    module Produtos
      class Produto < SitePrism::Page
        element :box_buscador, "#search"
        element :click_produto, "#search_autocomplete > div > div.amsearch-products.-columns > div.amsearch-wrapper-content > div:nth-child(1) > div.amsearch-autocomplete-information > div > div"
        element :txt_estoque, "#maincontent > div.columns > div > div.product-info-main > div.product-info-stock-sku > div.stock.available > span"
        element :input_qtd, "#qty"
        element :input_frete, "#estimate_postcode.input-text.validate-zip-international"
        element :btn_frete, "#estimate_product_shipping"
        element :env_frete, "#freight-results > thead > tr > th:nth-child(1)"
        # element :view_product, "#maincontent > div.columns > div > div.product.media > div.gallery-placeholder > div.fotorama-item.fotorama.fotorama1619467812512 > div.fotorama__wrap.fotorama__wrap--css3.fotorama__wrap--slide.fotorama__wrap--toggle-arrows.fotorama__wrap--no-controls > div.fotorama__stage > div.fotorama__stage__shaft.fotorama__grab"
        element :btn_comprar, "#product-addtocart-button"
        element :caixa_buscador, "#search"
        element :click_busca, "#search_autocomplete > div > div.amsearch-products.-columns > div.amsearch-wrapper-content > div:nth-child(1) > div.amsearch-autocomplete-information > div > div"
        element :txt_sem, "#maincontent > div.columns > div > div.product-info-main > div.product-info-stock-sku > div.stock.unavailable > span"

        def produto_info(produto_info)
          box_buscador.gset produto_info
        end

        def busca_produto
          click_produto.gclick
        end

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

        def fora_estoque(fora_estoque)
          caixa_buscador.gset fora_estoque
        end

        def busca_foraestoque
          click_busca.gclick
        end
      end
    end
  end
end
