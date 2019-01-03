Dado("que esteja no KS") do
    $loginKS = HomePage.new  
    $user = LoginPageKS.new    
    $loginKS.doLogin   
    expect(page).to have_current_path('https://ksbrad-homolo.interservicer.com.br/webforms/Login.aspx', url: true)        
    $user.Login_parte1
    $user.click_button_ok
    $user.opcao_empresa
    $user.click_button_ok
    expect(page).to have_current_path('https://ksbrad-homolo.interservicer.com.br/webforms/Default.aspx', url: true)
end


Dado("que esteja no Portal Credimob") do
    $loginCred = HomePage.new 
    $loginCred.doLogin_CrediMob
    $portal = LoginPagePortal.new
    $portal.login_Portal
    expect(page).to have_current_path('https://portalcredimobhomolog.interservicer.com.br/', url: true) 
    find(:xpath, '//img[@title="Portal Credimob"]').click  
end