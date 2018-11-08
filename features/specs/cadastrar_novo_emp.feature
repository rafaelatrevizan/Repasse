#language: pt
#utf-8

@cadastro
Funcionalidade: Cadastrar novo empreendimento
Eu como usuário do portal KS
Quero acessar o menu de empreendimento
Para cadastrar um novo empreendimento

Contexto: Acessar KS
Dado que esteja no KS
Quando clicar no menu Cadastro empreendimento
E clico no botão Novo Emp

@campos_que_devem_existir
Cenário: Validar campos para cadastro de novo empreendimento
Então é exibido os campos
|NOME           |
|Empreendimento |
|Nº Contrato    |
|Cenim          |
|Banco          |

# @campos_obrigatorios
# Cenário: Validar os campos obrigatórios
# Quando clicar no botão Gravar
# Então deverá ser exibido mensagem informativa

@cadastra_emp
Esquema do Cenário: Validar o cadstramento de um novo empreendimento
Quando preencher 'empreendimento', <contrato> e <digito> sobre o empreendimento
E escolher  as opções de Ceninm e Banco 
E escolher uma assessoria e contrutora
E clicar no botão gravar
E preencher o campo bloco
Então as informações deverão ser salvas com sucesso

Exemplos:
|empreendimento         |contrato  |digito|
|teste                  |1111111111|66    |


