module Web
  module Pages
    module Carrinho
      class Carrinho < SitePrism::Page
        element :txt_cart, "#page-title-heading > span"
        element :calc_frete, "#estimate_postcode"
        element :btn_calc, "#estimate-button"
        element :box_choice, "#shipping-estimate-result > div"
        element :opcao_envio, "#freight-results > option:nth-child(2)"
        element :btn_next, "#page-title-heading > a"

        def frete
          @produto = Factory::Dynamic.address
          calc_frete.gset @produto[:cep]
          @produto
          btn_calc.gclick
          box_choice.gclick
          opcao_envio.gclick
        end

        def next
          btn_next.gclick
        end
      end
    end
  end
end
