
class HomePage < SitePrism::Page

 def doLogin 
    $URL = "https://ksbrad-homolo.interservicer.com.br/webforms/Login.aspx"
    visit $URL
end
end