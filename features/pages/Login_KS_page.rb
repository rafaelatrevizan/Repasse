class LoginPageKS < SitePrism::Page
    element :usuario_ks, :id, 'txtLogin'
    element :senha_ks, :id, 'txtSenha'
    element :button_OK, :xpath, '//input[@type = "submit"]'
    element :pre_analise, :xpath, '//input[@value = "OTM="]'

    element :usuario, :id, 'Usuario'
    element :senha, :id, 'Senha'
    element :button_entrar, :xpath, '//input[@value="Entrar"]'
    element :robo, :id, 'recaptcha-anchor'


def Login_parte1
    usuario_ks.set('paula.kis') 
    senha_ks.set('p@ul@90')          
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

    # @pagina_iframe = PaginaPadrao.new
    # @pagina_iframe.clicar_botao do |iframe|
    #     iframe.robo.click
    # end
    changeIframe
    robo.click
    button_entrar.click
 end

def changeIframe
    page.driver.browser.switch_to.frame 0
end
 
end
