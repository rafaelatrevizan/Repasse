class BuscarConsultasPage < SitePrism::Page
    element :button_repasse_menu, :xpath, '//a[text()="Repasse"]'
    element :button_repasse_submenu, :xpath, '//a[@href="/Repasse/Index"]'
    element :button_procurar, :id, 'buscaOK'
    # elements :linhas_busca, :xpath, '//tr[@class="ResultRow"]'


    def click_menu_repasse
        button_repasse_menu.click
        sleep 1
        button_repasse_submenu.click
    end

    def clicar_button_pesquisar
        button_procurar.click
    end


    
end
