class LoginPage < SitePrism::Page
    element :usuario, :id, 'txtLogin'
    element :senha, :id, 'txtSenha'
    element :button_OK, :xpath, '//input[@type = "submit"]'
    element :pre_analise, :xpath, '//input[@value = "OTM="]'


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
end