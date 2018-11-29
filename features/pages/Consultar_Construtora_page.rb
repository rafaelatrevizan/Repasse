class ConsultaConstrutoraPage < SitePrism::Page
    element :consultar_const, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_btnBusca'    
    element :nome_const, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtConstrutora'
    element :email_const, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtEmail'
    element :cnpj_const, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtCNPJ'
    element :centralizadora_const, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_ddlCentralizadora'
    element :banco_const, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_ddlBanco'

    
    def click_consultar_const
        consultar_const.click
    end
end