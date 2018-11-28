
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
    element :financiamento, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtPorcentagemFinanciamento'
    element :renda, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtComprometimentoRenda'
    element :prazo_amortização, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtPrazoMaxAmor'
    element :validade_condicao_especial, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtDtCondicaoEspecial'
    element :validade_certidao_unificada, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtDtValidadeCertUnificada'
    element :validade_crf, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtDtValidadeCRF'
    element :deposito_area_comum, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkDeposito_0'
    element :deposito_individual, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkDeposito_1'
    element :operacao_crim, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoOperacao_0'
    element :operacao_piloto, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoOperacao_1'
    element :operacao_repasse, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoOperacao_2'
    element :button_gravar, :xpath,  '//input[@value = "Gravar"]'


    element :bloco, :id, 'ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtBloco'
    
    def menu_empreendimento
        empreendimento.click
    end

    def button_novo_empreendimento
        novo_empreendimento.click
    end
    
    def button_gravar_metodo
        button_gravar.click               
    end

    def scroll
        page.execute_script "window.scrollTo(0,1000)" 
    end

    def nome_empreendimento_fake
        nome_emp.click
        @nomeEmpreendimento = Faker::Name.name 
        nome_emp.set(@nomeEmpreendimento)
    end

    def dados_empreendimento1(digit, qtdUnidades, qtdTorres)
        num_contrato.click
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

    def tipo_imovel
        find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoImovel_0').click #Comercial
        # find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoImovel_1').click #Residencial
        sleep 1
    end 

    def choose_cenim
        find('option[value="183"]').select_option
        sleep 1
    end

    def choose_banco
        find(:xpath, '//option[text() ="Bradesco"]').select_option
        sleep 1
    end

    def tipo_de_garagem
        find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoGaragem_0').click #Area comum
        # find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_chkTipoGaragem_1').click #Individualizada
        sleep 1
    end 

    def dados_empreendimento6(campo_financiamento, campo_renda, campo_prazo)
        financiamento.click
        financiamento.set(campo_financiamento)
        renda.click
        renda.set(campo_renda)
        prazo_amortização.click
        prazo_amortização.set(campo_prazo)
    end 

    def preenchimento_validades
        validade_condicao_especial.click
        find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_CalendarExtender2_day_4_5').click       

        validade_certidao_unificada.click
        find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_CalendarExtender3_day_4_5').click       

        validade_crf.click
        find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_CalendarExtender4_day_4_5').click 
    end 

    def choose_deposito
        deposito_area_comum.click 
        deposito_individual.click
        sleep 1
    end

    def forma_contratacao
        find(:xpath, '//option[text() ="Construída"]').select_option
        sleep 1
    end

    def tipo_de_operacao_convenio
        operacao_crim.click
        # operacao_piloto.click
        # operacao_repasse.click
        sleep 1

        find(:xpath, '//select[@id ="ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_ddlTipoConvenio"]/option[3]').select_option
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