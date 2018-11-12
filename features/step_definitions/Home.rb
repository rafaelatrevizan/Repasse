Dado("que esteja no KS") do
    $loginKS = HomePage.new  
    $user = LoginPage.new    
    $loginKS.doLogin   
    expect(page).to have_current_path('https://ksbrad-homolo.interservicer.com.br/webforms/Login.aspx', url: true)        
    $user.Login_parte1
    $user.click_button_ok
    $user.opcao_empresa
    $user.click_button_ok
    expect(page).to have_current_path('https://ksbrad-homolo.interservicer.com.br/webforms/Default.aspx', url: true)
end

Dado("que esteja no CrediMob") do
    $loginCred = HomePage.new 
    $user = LoginPage.new        
    $loginCred.doLogin_CrediMob   
    expect(page).to have_current_path('https://portalcredimobhomolog.interservicer.com.br/Login/Index', url: true)
    $user.login_credimob
    expect(page).to have_current_path('https://portalcredimobhomolog.interservicer.com.br/', url: true)    
end