
class CadastroConstrutoraPage < SitePrism::Page
    element :construtora, :xpath, '//a[text() = "Cadastro Construtora"]'
    element :link_construtora, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_btnNovo'
    element :button_voltar, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_btnVoltar'

    element :nome_contrutora, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtConstrutora'
    element :nome_endereco, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtEndereco'
    element :nome_numero, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtNumero'
    element :nome_complemento, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtComplemento'
    element :nome_bairro, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtBairro'
    element :nome_cep, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtCep'
    element :nome_cidade, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtCidade'
    element :nome_telefone, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtTel'
    element :nome_email, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtEmail'
    element :nome_cnpj, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtCNPJ'
    element :nome_uf, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_ddlUF'
    element :nome_centralizadora, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_ddlCentralizadora'
    element :nome_banco, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_ddlBanco'
    element :nome_bradesco, :xpath, '//select[@id = "ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_ddlBanco"]/option[2]'
    
    def menu_construtora
        construtora.click
    end

    def link_nova_construtora
        link_construtora.click
    end

    def cnpj_fake
        nome_cnpj.click
        @numeroCNPJ = Faker::CNPJ.numeric 
        nome_cnpj.set(@numeroCNPJ)
    end
    
    def cnpj_existente
        nome_cnpj.click
        nome_cnpj.set('99999999999999')
    end

    def dados_construtora(endereco, numero, complemento, bairro, cep, cidade, telefone, email)   
        nome_contrutora.click
        @nomeConstrutora = Faker::Name.name 
        nome_contrutora.set(@nomeConstrutora)     
        
        nome_endereco.set(endereco)
        nome_numero.set(numero)
        nome_complemento.set(complemento)
        nome_bairro.set(bairro)
        
        nome_cep.click
        sleep 1
        nome_cep.set(cep)

        nome_cidade.set(cidade)

        nome_uf.click
        find('option[value="3"]').select_option

        nome_telefone.set(telefone)
        nome_email.set(email)      
        
        nome_centralizadora.click       
        find('option[value="181"]').select_option

        nome_banco.click
        nome_bradesco.click    
    end
end
