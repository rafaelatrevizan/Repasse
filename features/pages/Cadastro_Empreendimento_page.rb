
class CadastroEmpreendimentoPage < SitePrism::Page
    element :empreendimento, :xpath, '//a[text() = "Cadastro Empreendimento"]'
    element :novo_empreendimento, :xpath, '//input[@value = "Novo Emp"]'
    element :nome_emp, :xpath, '//input[contains(@id, "txtEmpreendimento")]'
    element :num_contrato, :xpath, '//input[contains(@id, "txtNumContrato")]'
    element :digito, :xpath, '//input[contains(@id, "txtContratoDigEmp")]'
    element :unidade, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtQtdUnidades'
    element :torres, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtQtdTorres'
    # element :laudo_avaliacao, :xpath, '//select[@id = "ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_ddlLaudoAvaliacao"]/option[1]'
    element :tipo_matricula, :xpath, '//select[@id = "ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_ddlTipoMatricula"]/option[2]'
    element :validade_laudo, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtDtLaudo'
    element :validade_VMD, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtValidadeVMD'

    element :bloco, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtBloco'
    
    def menu_empreendimento
        empreendimento.click
    end

    def button_novo_empreendimento
        novo_empreendimento.click
    end
    
    def button_gravar
        find(:xpath, '//input[@value = "Gravar"]').click               
    end

    def scroll_ate_elemento
        page.execute_script "window.scrollTo(0,1000000)" 
    end

    def dados_empreendimento1(digit, qtdUnidades, qtdTorres)
        nome_emp.click
        @nomeEmpreendimento = Faker::Name.name 
        nome_emp.set(@nomeEmpreendimento)

        nome_emp.click
        @numero_Contrato = Faker::Number.number(10) #=> "1968353479"
        num_contrato.set(@numero_Contrato)

        digito.set(digit)
        unidade.set(qtdUnidades)
        torres.set(qtdTorres)
    end 
   

    def dados_empreendimento2
         validade_laudo.click
         find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_calendar_dtRetBra_day_4_5').click       
    end

    def dados_empreendimento3
        tipo_matricula.click
    end

    def dados_empreendimento4
        validade_VMD.click
        find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_CalendarExtender1_day_4_5').click       
   end

   def dados_empreendimento5
        find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoImovel_0').click #Comercial
        # find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoImovel_1').click #Residencial
   end 

   def tipo_de_garagem
    find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoGaragem_0').click #Area comum
    # find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoGaragem_1').click #Individualizada
    end 

    def choose_cenim
        find('option[value="183"]').select_option
    end

    def choose_banco
        find('option[value="1"]').select_option
    end

    def choose_assessoria
        find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_gvAssessoria_ctl10_chkSelecione').click
    end

    def choose_construtora
        find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_gvConstrutora_ctl02_cbConstrutora').click
    end

    def fill_bloco
        find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtBloco').set('abc')
    end

    def click_button_voltar
        find(:xpath, '//input[@value = "Voltar"]').click 
    end

   end