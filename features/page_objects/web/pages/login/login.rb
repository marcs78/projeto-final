module Web
  module Pages
    module Login
      class Login < SitePrism::Page
        element :input_usuario, '#user'
        element :input_senha, 'input[name=pass]'
        element :btn_logar, '#loginSubmit'

        def realizar_login
          @user = Factory::Static.static_file('login')
          input_usuario.gset @user[:user]
          input_senha.gset @user[:pass]
          btn_logar.gclick
          @user
        end
      end
    end
  end
end
