
class CadastroPage < SitePrism::Page
    element :empreendimento, :xpath, '//a[text() = "Cadastro Empreendimento"]'
    element :novo_empreendimento, :xpath, '//input[@value = "Novo Emp"]'
    # element :button_gravar, :xpath, '//input[@value = "Gravar"]'
    element :nome_emp, :xpath, '//input[contains(@id, "txtEmpreendimento")]'
    element :num_contrato, :xpath, '//input[contains(@id, "txtNumContrato")]'
    element :digito, :xpath, '//input[contains(@id, "txtContratoDigEmp")]'
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

    def dados_empreendiemento(nomeemp, numcontrato, digit)
        nome_emp.set(nomeemp)
        num_contrato.set(numcontrato)
        digito.set(digit)
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


   end