Dado("que esteja no KS") do
    $loginKS = HomePage.new     
    $loginKS.doLogin   
    expect(page).to have_current_path('https://ksbrad-homolo.interservicer.com.br/webforms/Login.aspx', url: true)
    $user = LoginPage.new     
    $user.Login_parte1
    $user.click_button_ok
    $user.opcao_empresa
    $user.click_button_ok
    expect(page).to have_current_path('https://ksbrad-homolo.interservicer.com.br/webforms/Default.aspx', url: true)
end