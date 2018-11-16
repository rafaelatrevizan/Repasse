Quando("clicar no menu Cadastro Construtora") do
  @nova_const = CadastroConstrutoraPage.new
  @nova_const.menu_construtora
  end
  
  Quando("clico no link Nova Construtora") do
  sleep 1
  @nova_const.link_nova_construtora
  end

  Então("é exibido os campos da tela construtora") do |table|
    table.hashes.each do |variavel|
      @campos = variavel['NOME']
      assert_text(@campos)
  end  
end

Quando("clicar no botão Gravar na tela de construtora") do
  find(:xpath, '//input[@value = "Gravar"]').click 
  sleep 2
end

Quando("preencho o campo Construtora com um nome já existente") do
  @nova_const.nome_contrutora.set('CONSTRUTORA')
end

Então("deverá ser exibido a mensagem  “Erro: Já existe uma Construtora cadastrada com esse nome. ”") do
  mensagem = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_lblMensagem')
  expect(mensagem.text).to eql 'Erro: Já existe uma Construtora cadastrada com esse nome.'
end


Quando("preencher o campo  {string},{int},{string},{string},{int},{string},{string},{string}") do |valor1, valor2, valor3, valor4, valor5, valor6, valor7, valor8|
  @nova_const.dados_construtora(valor1, valor2, valor3, valor4, valor5, valor6, valor7, valor8)
end

Então("as informações do construtora deverão ser salvas com sucesso") do
  mensagem_sucesso = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_lblMensagem')
  expect(mensagem_sucesso.text).to eql 'Construtora cadastrada com sucesso.'
end

Quando("clicar no botão Voltar na tela de cadastro") do
  @nova_const.button_voltar.click
end

Então("deverá retornar para a interface de consulta do construtora") do
  expect(page).to have_current_path('https://ksbrad-homolo.interservicer.com.br/webforms/addCenimListaConstrutora.aspx')
end