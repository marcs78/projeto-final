module Web
  module Pages
    module Login
      class Autenticacao < SitePrism::Page
        element :login_hover, ".not-logged-in"
        element :btn_entrar, "#ui-id-2 > div > div.login-bar > a > span"
        element :input_user, "#email"
        element :input_pass, "#pass"
        element :btn_login, "#send2"
        element :click_logo, "body > div.page-wrapper > header > div > div.logo-wrapper > a"
        element :msg_inicio, "#auth-icon > button > span"
        element :user_alerta, "#email-error"
        element :pass_alerta, "#pass-error"

        def entrar
          login_hover.hover
          btn_entrar.gclick
        end

        def auth(user, pass)
          input_user.gset user
          input_pass.gset pass
        end

        def login
          btn_login.gclick
        end

        def recon
          click_logo.gclick
        end

        def error_user(user, pass)
          input_user.gset user
          input_pass.gset pass
        end

        def error_pass(user, pass)
          input_user.gset user
          input_pass.gset pass
        end

        def erro_auth(user, pass)
          input_user.gset user
          input_pass.gset pass
        end
      end
    end
  end
end
