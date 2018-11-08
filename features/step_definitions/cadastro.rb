Quando("clicar no menu Cadastro empreendimento") do
    $novo_emp = CadastroPage.new
    $novo_emp.menu_empreendimento
  end
  
  Quando("clico no botão Novo Emp") do
    $novo_emp.button_novo_empreendimento
  end
  
  #Campos que devem ser exibidos no cadastro
  Então("é exibido os campos") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    table.hashes.each do |variavel|
        @campos = variavel['NOME']
        assert_text(@campos)
    end
  end

  #Campos obrigatórios
  # Quando("clicar no botão Gravar") do
  #   $novo_emp.scroll_ate_elemento
  #   $novo_emp.button_gravar
  # end
  
  # Então("deverá ser exibido mensagem informativa") do    
  #   page.find(:xpath, '//span[contains(@id, "Mensagem")]')
  # end

  #Cadastrar empreendimento com sucesso
  Quando("preencher {string}, {int} e {int} sobre o empreendimento") do |valor1, valor2, valor3|
    $novo_emp.dados_empreendiemento(valor1, valor2, valor3)

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
    $novo_emp.scroll_ate_elemento
    $novo_emp.fill_bloco
    
  end
  
  Então("as informações deverão ser salvas com sucesso") do
  end