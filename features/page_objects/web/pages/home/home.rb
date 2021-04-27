module Web
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url "/"
        element :dp_hover, "#department"
        element :cat_dp, "#nav1 > li.category-menu.department > ul > li:nth-child(2) > p"
        element :link_dp, "#nav1 > li.category-menu.department > ul > li:nth-child(2) > div > div.subcategory-wrapper > div.menu-all-link > a"
        element :txt_dp, "#maincontent > div.columns > div.column.main > div:nth-child(5) > div.category-title"

        def acessar_dp
          dp_hover.hover
          cat_dp.hover
          link_dp.gclick
        end
      end
    end
  end
end
