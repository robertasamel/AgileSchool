  Dado(/^Que estou na tela de login$/) do
    @login = LoginPage.new #instaciar classe login_page
    @login.acessar_url
  end
  
  Quando(/^realizo o login$/) do
    @login.clicar_login
  end
  
  Então(/^recebo mensagem de erro$/) do
    @login.erro? # boas praticas pra identificar algo booleano
  end
  
  Dado(/^preencho os campos com dados validos$/) do
    @login.informar_campos
  end
  
  Então(/^Login realizado com sucesso$/) do
    @login.acessar_site
  end
  
  Dado(/^digito usuario correto e senha incorreta$/) do
    @login.informar_campos_errados
  end
  
  Então(/^sistema exibe mensagem de erro senha inválida$/) do
    @login.mensagem_erro_senha
  end
  
  Dado(/^que acesso a URL da area logada$/) do
    @login.informar_url_logada
  end
    
  Então(/^sou redirecionado para a tela de login$/) do
    @login.retorna_pagina_login
  end
  