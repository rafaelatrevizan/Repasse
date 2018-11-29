#language: pt
#utf-8

@consulta_construtora
Funcionalidade: Consultar Construtora
Eu como usuário do portal KS
Quero acessar o menu de construtora
Para consultar uma construtora

Contexto: Acessar KS
Dado que esteja no KS
Quando clicar no menu Cadastro Construtora
E clico no botão Consultar da construtora

@info_empreendimento
Cenário: Validar formulário preenchido
Quando seleciono uma Construtora
Então os campos já deverão vir preenchidos com as informações da construtora selecionada