
class CadastroConstrutoraPage < SitePrism::Page
    element :construtora, :xpath, '//a[text() = "Cadastro Construtora"]'
    element :link_construtora, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_btnNovo'
    element :nome_contrutora, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtConstrutora'
    element :button_voltar, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_btnVoltar'
    
    def menu_construtora
        construtora.click
    end

    def link_nova_construtora
        link_construtora.click
    end

    def dados_construtora(nome)
        nome_contrutora.set(nome)
    end
end
