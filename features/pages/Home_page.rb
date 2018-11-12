
class HomePage < SitePrism::Page

    def doLogin 
    $URL = "https://ksbrad-homolo.interservicer.com.br/webforms/Login.aspx"
    visit $URL
    end

    def doLogin_CrediMob
        $URL = "https://portalcredimobhomolog.interservicer.com.br/Login/Index"
        visit $URL
    end


end