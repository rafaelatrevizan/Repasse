Quando("clicar no menu Cadastro empreendimento") do
    $novo_emp = CadastroEmpreendimentoPage.new
    $novo_emp.menu_empreendimento
  end
  
  Quando("clico no botão Novo Emp") do
    $novo_emp.button_novo_empreendimento
    sleep 2
    #Cenário 3
    #Valida se o parâmetro value do objeto achado na variável nome está em branco
    nome = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtEmpreendimento')    
    expect(nome.value).to eql '' 
  
  end

  #Cenário 6: Validar nome dos títulos dos formulários
  Então("deverá ser exibidos o nome correto para os blocos de informações") do
    nomeHeader = find('#__tab_ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1')
    expect(nomeHeader.text).to eql  'Cadastro Empreendimento'
  end
  
  #Cenário 1: Validar no KS a exibição das informações sobre Dados do empreendimento e Condições do empreendimento
  Então("é exibido os campos") do |table|
    table.hashes.each do |variavel|
        @campos = variavel['NOME']
        assert_text(@campos)
    end
  end

  #Cenário 5: Campos obrigatórios
  Quando("clicar no botão Gravar") do
    $novo_emp.scroll
    sleep 2
    $novo_emp.button_gravar_metodo
  end
  
  Então("deverá ser exibido mensagem informativa") do    
    texto1 = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_lblMensagem')
    expect(texto1.text).to eql  'Dados obrigatórios não informados.'
    page.execute_script "window.scrollTo(0,0)" 
    sleep 1
  end

  #Cenário 15: Validar mensagem de cadastro com sucesso
  Quando("preencher nome do empreendimento, contrato e {string}, {string} e {string}") do |valor1, valor2, valor3|
    $novo_emp.nome_empreendimento_fake
    $novo_emp.contrato_empreendimento_fake
    $novo_emp.dados_empreendimento1(valor1, valor2, valor3)
  end
  
  Quando("preencher os campos Laudo de avaliação e Validade") do
    $novo_emp.dados_empreendimento2
  end
  
  Quando("preencher Tipo de matricula e estudo de Viabilidade") do
    $novo_emp.dados_empreendimento3
  end
  
  Quando("preencher planilha VMD  e Validade") do
    $novo_emp.dados_empreendimento4
  end
  
  Quando("preencher Tipo de imovel") do
   $novo_emp.tipo_imovel
  end
  
  Quando("escolher  as opções de Ceninm e Banco") do
    $novo_emp.choose_cenim
    $novo_emp.choose_banco
  end
  
  Quando("preencher o campo tipo de Garagem") do
    $novo_emp.tipo_de_garagem
 end
  
  Quando("preencher os campos {string}, {string} e {string}") do |string, string2, string3|
    $novo_emp.dados_empreendimento6(string, string2, string3)
  end
  
  Quando("preencher validade de condição especial, certidão unificada e CRF") do
    $novo_emp.preenchimento_validades
  end
  
  Quando("escolhar o deposito") do
    $novo_emp.choose_deposito
    sleep 2
  end
  
  Quando("preencher a forma de contratação e  se possui minuta  padrão") do
    $novo_emp.forma_contratacao
  end
  
  Quando("preencher o tipo de operação e convênio") do
    $novo_emp.tipo_de_operacao_convenio
  end   
  
  
  Quando("escolher uma assessoria e contrutora") do
    $novo_emp.choose_assessoria
    $novo_emp.choose_construtora
  end
  
  Quando("clicar no botão gravar") do
    sleep 1
    $novo_emp.scroll
    # $novo_emp.button_gravar
    $novo_emp.button_gravar_metodo    
  end

  Quando("preencher o campo bloco") do
    $novo_emp.fill_bloco    
  end
  
  Então("as informações deverão ser salvas com sucesso") do
    texto = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_lblMensagem')
    expect(texto.text).to eql  'Empreendimento inserido com sucesso.'
  end

  #Cenário 16: Validar a ação do botão Voltar
  Quando("clicar no botão Voltar") do
    $novo_emp.scroll
    $novo_emp.click_button_voltar
  end
  
  Então("deverá retornar para a interface de consulta o empreendimento") do
    expect(page).to have_current_path('https://ksbrad-homolo.interservicer.com.br/webforms/addCenimListaEmpreendimento.aspx', url: true)
  end

  #Cenário 7: Validar ao cadastrar um empreendimento com nome já existente
  Quando("preencher {string}, contrato e {string}, {string} e {string}") do |string, string2, string3, string4|
    $novo_emp.nome_emp.set(string)
    $novo_emp.contrato_empreendimento_fake
    $novo_emp.dados_empreendimento1(string2, string3, string4)
  end

  Então("deverá ser exibido  mensagem “Nome já existente”.") do
    sleep 1
    page.execute_script "window.scrollTo(0,0)" 
    texto_existente = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_lblMensagem')
    expect(texto_existente.text).to eql  'Nome de Empreendimento já cadastrado.'
  end

  #Cenário: Validar ao cadastrar um empreendimento com contrato já existente
  Quando("preencher o campo Contrato com um já existente") do
    $novo_emp.nome_empreendimento_fake
    $novo_emp.contrato_empreendimento_existente
  end
  
  Quando("preencher {string}, {string} e {string}") do |string, string1, string2|
    $novo_emp.dados_empreendimento1(string, string1, string2)  
  end
  
  Então("deverá ser exibido  mensagem “Contrato de Empreendimento já cadastrado.”.") do
    sleep 1
    page.execute_script "window.scrollTo(0,0)" 
    texto_existente = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_lblMensagem')
    expect(texto_existente.text).to eql  'Contrato de Empreendimento já cadastrado.'
  end