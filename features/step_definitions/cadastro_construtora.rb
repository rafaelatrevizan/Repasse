Quando("clicar no menu Cadastro Construtora") do
  @nova_const = CadastroConstrutoraPage.new
  @nova_const.menu_construtora
  end
  
  Quando("clico no link Nova Construtora") do
  sleep 1
  @nova_const.link_nova_construtora
  end

#Cenário 21: Validar no KS a exibição das informações sobre Cadastro de Construtora
Então("é exibido os campos da tela construtora") do |table|
    table.hashes.each do |variavel|
      @campos = variavel['NOME']
      assert_text(@campos)
    end  
end

#Cenário 22: Validar os campos obrigatórios
Quando("clicar no botão Gravar na tela de construtora") do
  find(:xpath, '//input[@value = "Gravar"]').click 
  sleep 2
end

Então("deverá ser exibido mensagem de alerta informativa") do    
  texto1 = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_lblMensagem')
  expect(texto1.text).to eql  'Erro: Dados obrigatórios não informados.'
end

#Cenário 24: Validar cnpj duplicado de Construtora
Quando("preencho o campo CNPJ com um já existente") do
  @nova_const.cnpj_existente
end

Então("deverá ser exibido a mensagem  “Erro: Já existe uma Construtora cadastrada com esse cnpj.”") do
  mensagem = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_lblMensagem')
  expect(mensagem.text).to eql 'Erro: Já existe uma Construtora cadastrada com esse CNPJ.'
end

#Esquema do Cenário 25: Validar mensagem de cadastro com sucesso
Quando("preencher o campo  {string},{int},{string},{string},{int},{string},{string},{string}") do |valor1, valor2, valor3, valor4, valor5, valor6, valor7, valor8|
  @nova_const.dados_construtora(valor1, valor2, valor3, valor4, valor5, valor6, valor7, valor8)
end

Então("as informações do construtora deverão ser salvas com sucesso") do
  @nova_const.cnpj_fake
  mensagem_sucesso = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_lblMensagem')
  expect(mensagem_sucesso.text).to eql 'Construtora cadastrada com sucesso.'
end

#Cenário 26: Validar a ação do botão Voltar
Quando("clicar no botão Voltar na tela de cadastro") do
  @nova_const.button_voltar.click
end

Então("deverá retornar para a interface de consulta do construtora") do
  expect(page).to have_current_path('https://ksbrad-homolo.interservicer.com.br/webforms/addCenimListaConstrutora.aspx')
end