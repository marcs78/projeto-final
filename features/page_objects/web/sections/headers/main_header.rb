module Web
  module Sections
    module Headers
      class MainHeader < SitePrism::Section
        element :btn_entrar, '#loginAutoUser'
        element :btn_cadastrar, '#registerUserModal'
        element :a_nome_usuario, '.top_menu_ul li:nth-child(1) a'

        def acessar_login
          btn_entrar.gclick
        end

        def acessar_cadastro
          btn_cadastrar.gclick
        end
      end
    end
  end
end
