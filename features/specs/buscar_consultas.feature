#language: pt
#utf-8

@buscar_consultas
Funcionalidade: Buscar consultas de Repasse
Eu como usuário do portal KS
Quero acessar o Portal CrediMob
Para fazer buscas de consultas de empreendimento

Contexto: Acessar CrediMob
Dado que esteja no CrediMob
Quando clicar no menu Repasse
E clicarno sub menu Repasse

@validar_campos_pesquisa
Cenário: Validar campos para pesquisa
Então deverá ser exibidos os campos para pesquisa
|CAMPOS          |
|Assessoria      |
|Construtora     |
|empreendimento  |
