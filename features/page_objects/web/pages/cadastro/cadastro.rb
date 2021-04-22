module Web
  module Pages
    module Cadastro
      class Cadastro < SitePrism::Page

        def realizar_cadastro
          @user = Factory::Dynamic.user
          # input_cpf.gset @user[:cpf]
          @user
        end
      end
    end
  end
end
