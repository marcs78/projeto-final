module Web
  module Pages
    module Home
      class Categoria < SitePrism::Page
        element :link_cat, "#nav1 > li:nth-child(2) > a"
        element :txt_cat, ".filter-subtitle"

        def acessar_cat
          link_cat.gclick
        end
      end
    end
  end
end
