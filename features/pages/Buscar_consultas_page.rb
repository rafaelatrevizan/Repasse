class BuscarConsultasPage < SitePrism::Page
    element :button_repasse_menu, :xpath, '//a[text()="Repasse"]'


    def click_menu_repasse
        button_repasse_menu.click_menu_repasse
    end

    
end
