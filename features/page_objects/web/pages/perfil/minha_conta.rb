module Web
  module Pages
    module Perfil
      class MinhaConta < SitePrism::Page
        element :login_hover, ".not-logged-in"
        element :link_conta, "#ui-id-2 > div > div:nth-child(2) > a > span"
        element :menu_lat, "#account-nav > ul > li.nav.item.current > strong"

        def conta
          login_hover.hover
          link_conta.gclick
        end
      end
    end
  end
end
