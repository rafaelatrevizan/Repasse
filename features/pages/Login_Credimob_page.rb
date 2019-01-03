class LoginPagePortal < SitePrism::Page
    element :usuario_Portal, :id, 'Usuario'
    element :senha_Portal, :id, 'Senha'
    element :button_entrar, :xpath, '//input[@value="Entrar"]'
   

    def login_Portal
        usuario_Portal.set('developer')
        senha_Portal.set('IntDev$2017')   
        button_entrar.click
    end

end