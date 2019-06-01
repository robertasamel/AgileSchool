class LoginPage
    include Capybara::DSL

        def acessar_url
            visit 'http://the-internet.herokuapp.com/login'
        end

        def clicar_login
            click_button  'Login'
        end

        def erro?
            page.has_content?('Your username is invalid!')
        end

        def informar_campos 
            fill_in id="username", :with => "tomsmith"
            fill_in id="password", :with =>"SuperSecretPassword!"
        end

        def acessar_site
            page.has_content?('You logged into a secure area!')
        end

        def informar_campos_errados
            fill_in id="username", :with => "tomsmith"
            fill_in id="password", :with =>"SenhaErrada"
        end

        def mensagem_erro_senha 
            page.has_content?('Your password is invalid!')
        end

        def informar_url_logada
        visit 'http://the-internet.herokuapp.com/secure'
        end

        def retorna_pagina_login
            page.has_content?('You must login to view the secure area!') 
        end
end