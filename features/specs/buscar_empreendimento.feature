#language: pt
#utf-8

@buscar_Portal
Funcionalidade: Buscar Empreendimento
Eu como usuário do portal Credimob
Quero acessar o menu de Repasse
Para buscar um empreendimento

Contexto: Acessar Portal
Dado que esteja no Portal Credimob

Cenario: Validar a quantidade de empreendimentos listados
Quando clicar no botão Procurar
Então deverá ser listados 50 empreendimentos