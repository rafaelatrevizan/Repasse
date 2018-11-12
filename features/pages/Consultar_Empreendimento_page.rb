class ConsultaEmpreendimentoPage < SitePrism::Page
    element :consultar, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_btnConsultar'    
    
    def click_consultar
        consultar.click
    end
end