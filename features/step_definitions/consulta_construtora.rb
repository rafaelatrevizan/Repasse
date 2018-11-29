Quando("clico no botão Consultar da construtora") do
    $consulta_const = ConsultaConstrutoraPage.new
    $consulta_const.click_consultar_const
    sleep 1
end

Quando("seleciono uma Construtora") do
    page.execute_script "window.scrollTo(0,1000)"
    find(:xpath, '//a[text() = "abcd"]').click
end
  
Então("os campos já deverão vir preenchidos com as informações da construtora selecionada") do
    nome = $consulta_const.nome_const    
    expect(nome.value).to_not be_nil

    email = $consulta_const.email_const    
    expect(email.value).to_not be_nil

    cnpj = $consulta_const.cnpj_const    
    expect(cnpj.value).to_not be_nil

    # centralizadora = $consulta_const.centralizadora_const    
    # expect(centralizadora.value).to_not be_nil

    # banco = $consulta_const.banco_const    
    # expect(banco.value).to_not be_nil
end