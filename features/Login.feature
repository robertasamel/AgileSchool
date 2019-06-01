# language: pt

Funcionalidade:  login

Contexto: 
    Dado Que estou na tela de login

#abaixo uma tag ou apelido do cenario
@login_campo_nulo
Cenario: Login Invalido com campos nulos
    Quando realizo o login
    Então recebo mensagem de erro

@login_sucesso
Cenario: Login com sucesso
    E preencho os campos com dados validos
    Quando realizo o login
    Entao Login realizado com sucesso

@login_senha_incorreta
Cenario: Login com senha incorreta
    E digito usuario correto e senha incorreta 
    Quando realizo o login
    Entao sistema exibe mensagem de erro senha inválida

@Login_Logado_Expirado
Cenario: testar url logada sem estar logado
    Dado que acesso a URL da area logada
    Então recebo mensagem de erro
    E sou redirecionado para a tela de login