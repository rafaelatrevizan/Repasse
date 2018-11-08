#language: pt
#utf-8

@consulta
Funcionalidade: Consultar empreendimento
Eu como usuário do portal KS
Quero acessar o menu de empreendimento
Para consultar um empreendimento

Contexto: Acessar KS
Dado que esteja no KS
Quando clicar no menu Cadastro empreendimento
E clico no botão Consultar

@info_empreendimento
Cenário: Validar formulário preenchido
Quando seleciono um empreendimento
Então os campos já deverão vir preenchidos com as informações do empreendimento selecionado