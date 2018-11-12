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
    $novo_emp.scroll_ate_elemento
    sleep 2
    $novo_emp.button_gravar
  end
  
  Então("deverá ser exibido mensagem informativa") do    
    texto1 = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_lblMensagem')
    expect(texto1.text).to eql  'Digite o nome do Empreendimento, número do contrato e o digito'
  end

  #Cenário 15: Validar mensagem de cadastro com sucesso
  Quando("preencher {string}, {int} e {int} sobre o empreendimento") do |valor1, valor2, valor3|
    $novo_emp.dados_empreendiemento(valor1, valor2, valor3)
    sleep 1
  end
  
  Quando("escolher  as opções de Ceninm e Banco") do
    $novo_emp.choose_cenim
    $novo_emp.choose_banco
  end
  
  Quando("escolher uma assessoria e contrutora") do
    $novo_emp.choose_assessoria
    $novo_emp.choose_construtora
  end
  
  Quando("clicar no botão gravar") do
    $novo_emp.scroll_ate_elemento
    sleep 2
    $novo_emp.button_gravar   
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
    $novo_emp.scroll_ate_elemento
    $novo_emp.click_button_voltar
  end
  
  Então("deverá retornar para a interface de consulta o empreendimento") do
    expect(page).to have_current_path('https://ksbrad-homolo.interservicer.com.br/webforms/addCenimListaEmpreendimento.aspx', url: true)
  end