module Web
  module Pages
    module Departamento
      class Filtro < SitePrism::Page
        element :box_marca, "#li-dropdown-1"
        element :opcao_marca, "#li-dropdown-1 > div.dropdown-element > div > ul > li:nth-child(8)"
        element :box_serie, "#li-dropdown-2"
        element :opcao_serie, "#li-dropdown-2 > div.dropdown-element > div > ul > li:nth-child(6)"
        element :box_modelo, "#li-dropdown-3"
        element :opcao_modelo, "#li-dropdown-3 > div.dropdown-element > div > ul > li:nth-child(2)"
        element :btn_pesquisar, "#form-part-finder-container > ul > li.last > div.bringitfinder-buttons > button"
        element :txt_sku, "#maincontent > div.columns > div > div.product-info-main > div.product-info-stock-sku > div.product.attribute.sku > strong"

        def marca
          box_marca.gclick
          opcao_marca.gclick
        end

        def serie
          box_serie.gclick
          box_serie.gclick
          opcao_serie.gclick
        end

        def modelo
          box_modelo.gclick
          opcao_modelo.gclick
        end

        def pesquisar
          btn_pesquisar.gclick
        end
      end
    end
  end
end
