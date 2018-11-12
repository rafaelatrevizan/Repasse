class LoginPage < SitePrism::Page
    element :usuario, :id, 'txtLogin'
    element :senha, :id, 'txtSenha'
    element :button_OK, :xpath, '//input[@type = "submit"]'
    element :pre_analise, :xpath, '//input[@value = "OTM="]'

    element :usuario, :id, 'Usuario'
    element :senha, :id, 'Senha'
    element :button_entrar, :xpath, '//input[@value="Entrar"]'

    iframe :clicar_campo, PaginaIframe, '//iframe[@name="a-mlq8gicucgqt"]'

def Login_parte1
    usuario.set('paula.kis') 
    senha.set('p@ul@90')          
end

def click_button_ok
    button_OK.click 
 end

 def opcao_empresa
    pre_analise.click
 end

 def login_credimob
    usuario.set('developer')
    senha.set('IntDev$2017')
    sleep 1
    @pagina_iframe = 

    sleep 1
    button_entrar.click
 end
 
end

class PaginaIframe < SitePrism::Page
    element :robo, :id, 'recaptcha-anchor'
end