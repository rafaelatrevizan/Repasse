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
|NOME                                    |
|Empreendimento                          |
|Número do Contrato Empresário/Piloto    |
|Quantidade Unidades                     |
|Quantidade de Torres                    |
|Laudo de Avaliação                      |
|Validade do Laudo                       |
|Tipo de Matricula                       |
|Estudo de Viabilidade                   |
|Mapa de Vendas                          |
|Possui Cód. GEP?                        |
|Possui Planilha VMD?                    |
|Validade do VMD                         |
|Tipo de Imóvel                          |
|Cenim/Centralizadora                    |
|Banco                                   |
|Tipo de Vaga de Garagem                 |
|% de Financiamento                      |
|Prazo Máx. Amortização                  |
|Validade Certidão Unificada             |
|Comprometimento Renda                   |
|Validade Condição Especial              |
|Validade CRF                            |
|Depósito                                |
|Tipo de Imóvel/Forma de Contratação     |
|Possui Minuta Padrão                    |
|Tipo de Operação                        |
|Tipo de Convênio                        |
|Observação                              |



@campos_obrigatorios
Cenário: Validar os campos obrigatórios
Quando clicar no botão Gravar
Então deverá ser exibido mensagem informativa

@cadastra_emp
Esquema do Cenário: Validar mensagem de cadastro com sucesso
Quando preencher nome do empreendimento, contrato e "<digito>", "<unidades>" e "<torres>"
E preencher os campos Laudo de avaliação e Validade
E preencher Tipo de matricula e estudo de Viabilidade
# E preencher Mapa de vendas e código GEP
E preencher planilha VMD  e Validade
E preencher Tipo de imovel
E escolher  as opções de Ceninm e Banco 
E preencher o campo tipo de Garagem
E preencher os campos "<financiamento>", "<renda>" e "<prazo>"
E preencher validade de condição especial, certidão unificada e CRF
E escolhar o deposito
E preencher a forma de contratação e  se possui minuta  padrão 
E preencher o tipo de operação e convênio 
E escolher uma assessoria e contrutora
E clicar no botão gravar
E preencher o campo bloco
Então as informações deverão ser salvas com sucesso

Exemplos:
|digito| unidades |torres| financiamento | renda    | prazo |
|123   | 123      | 123  |  12345        |  12345   | 12345 |

@empreendimento_mesmo_nome
Esquema do Cenário: Validar ao cadastrar um empreendimento com nome já existente
Quando preencher "<empreendimento>", contrato e "<digito>", "<unidades>" e "<torres>"
E preencher os campos Laudo de avaliação e Validade
E preencher Tipo de matricula e estudo de Viabilidade
# E preencher Mapa de vendas e código GEP
E preencher planilha VMD  e Validade
E preencher Tipo de imovel
E escolher  as opções de Ceninm e Banco 
E preencher o campo tipo de Garagem
E preencher os campos "<financiamento>", "<renda>" e "<prazo>"
E preencher validade de condição especial, certidão unificada e CRF
E escolhar o deposito
E preencher a forma de contratação e  se possui minuta  padrão 
E preencher o tipo de operação e convênio 
E escolher uma assessoria e contrutora
E clicar no botão gravar
Então deverá ser exibido  mensagem “Nome já existente”.

Exemplos:
|empreendimento |digito| unidades |torres| financiamento | renda    | prazo |
| teste         |123   | 123      | 123  |  12345        |  12345   | 12345 |

@botao_voltar
Cenário: Validar a ação do botão Voltar
Quando clicar no botão Voltar
Então deverá retornar para a interface de consulta o empreendimento


