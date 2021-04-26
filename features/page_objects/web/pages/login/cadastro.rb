module Web
  module Pages
    module Login
      class Cadastro < SitePrism::Page
        element :login_hover, ".not-logged-in"
        element :btn_cadastro, "#ui-id-2 > div > div.sign-in.link > a > span"
        element :click_pf, "#register-step-1 > fieldset.fieldset.create.info > div.radio-tags > fieldset > label:nth-child(3)"
        element :input_cpf, "#register-step-1 > fieldset.fieldset.create.info > div.field.taxvat.required > div"
        element :input_nome, "#register-step-1 > fieldset.fieldset.create.info > div.field.field-name-firstname.required > div"
        element :input_sobrenome, "#register-step-1 > fieldset.fieldset.create.info > div.field.field-name-lastname.required > div"
        element :input_tel, "#register-step-1 > fieldset.fieldset.create.info > div.field.telephone.required > div"
        element :input_email, "#register-step-1 > fieldset.fieldset.create.account > div:nth-child(2) > div"
        element :input_email2, "#register-step-1 > fieldset.fieldset.create.account > div:nth-child(3) > div"
        element :input_pass, "#register-step-1 > fieldset.fieldset.create.account > div.field.password.required > div"
        element :input_pass2, "#register-step-1 > fieldset.fieldset.create.account > div.field.confirmation.required > div"
        element :btn_next, "#register-next-step > div"
        # element :form_conta, "#register-step-1 > fieldset.fieldset.create.account"

        def entrar
          login_hover.hover
          btn_cadastro.gclick
        end

        def inserir_dados
          click_pf.gclick
          @cadastro = Factory::Dynamic.user
          input_cpf.gset @cadastro[:cpf]
          input_nome.gset @cadastro[:nome]
          input_sobrenome.gset @cadastro[:sobrenome]
          input_tel.gset @cadastro[:telefone]
          input_email.gset @cadastro[:email]
          input_email2.gset @cadastro[:email]
          input_pass.gset @cadastro[:senha]
          input_pass2.gset @cadastro[:senha]
          btn_next.gclick
        end
      end
    end
  end
end
