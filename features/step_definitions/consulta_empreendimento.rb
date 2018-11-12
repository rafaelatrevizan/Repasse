Quando("clico no botão Consultar") do
    $consulta = ConsultaEmpreendimentoPage.new
    $consulta.click_consultar
    sleep 1
  end
  
  #Cenário 4
  Quando("seleciono um empreendimento") do
    first(:xpath, '//table[@id = "ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_gvEmpreendimento"]/tbody/tr/following-sibling::tr/td/a').click
  end
  
  Então("os campos já deverão vir preenchidos com as informações do empreendimento selecionado") do
    nome = find('#ctl00_ContentPlaceHolder1_TabContainer1_TabPanel1_txtEmpreendimento')    
    expect(nome.value).to_not be_nil

  end