#language: pt
#utf-8

@cadastro_emp
Funcionalidade: Cadastrar novo empreendimento
Eu como usuário do portal KS
Quero acessar o menu de empreendimento
Para cadastrar um novo empreendimento

Contexto: Acessar KS
Dado que esteja no KS
Quando clicar no menu Cadastro empreendimento
E clico no botão Novo Emp

@nome_divisoes
Cenário: Validar nome dos títulos dos formulários
Então deverá ser exibidos o nome correto para os blocos de informações

@campos_que_devem_existir
Cenário: Validar no KS a exibição das informações sobre Dados do empreendimento e Condições do empreendimento
Então é exibido os campos
|NOME           |
|Empreendimento |
|Nº Contrato    |
|Cenim          |
|Banco          |

@campos_obrigatorios
Cenário: Validar os campos obrigatórios
Quando clicar no botão Gravar
Então deverá ser exibido mensagem informativa

@cadastra_emp
Esquema do Cenário: Validar mensagem de cadastro com sucesso
Quando preencher "<nome_emp>", <contrato> e <digito> sobre o empreendimento
E escolher  as opções de Ceninm e Banco 
E escolher uma assessoria e contrutora
E clicar no botão gravar
E preencher o campo bloco
Então as informações deverão ser salvas com sucesso

Exemplos:
|nome_emp         |contrato  |digito|
|teste                  |1111111111|66    |

# @empreendimento_mesmo_nome
# Esquema do Cenário: Validar ao cadastrar um empreendimento com nome já existente
# Quando preencher 'empreendimento', <contrato> e <digito> sobre o empreendimento
# E escolher  as opções de Ceninm e Banco 
# E escolher uma assessoria e contrutora
# E clicar no botão gravar
# E preencher o campo bloco
# Então deverá ser exibido  mensagem “Nome já existente”.

# Exemplos:
# |empreendimento         |contrato  |digito|
# |teste                  |1111111111|66    |

@botao_voltar
Cenário: Validar a ação do botão Voltar
Quando clicar no botão Voltar
Então deverá retornar para a interface de consulta o empreendimento


