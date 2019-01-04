Quando("clicar no botão Procurar") do
  $repasse = BuscarConsultasPage.new
  $repasse.click_menu_repasse
  expect(page).to have_current_path('https://portalcredimobhomolog.interservicer.com.br/Repasse/Index', url: true)  
  sleep 1
  $repasse.clicar_button_pesquisar
  sleep 1
  
  end
  
  Então("deverá ser listados empreendimentos") do
  $repasse.paginacao
  end