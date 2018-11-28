#language: pt
#utf-8

@construtora
Funcionalidade: Cadastrar nova construtora
Eu como usuário do portal KS
Quero acessar o menu de construtora
Para cadastrar uma nova construtora

Contexto: Acessar KS
Dado que esteja no KS
Quando clicar no menu Cadastro Construtora
E clico no link Nova Construtora

@campos_nova_construtora
Cenário: Validar no KS a exibição das informações sobre Cadastro de Construtora
Então é exibido os campos da tela construtora
|NOME           |
|Construtora    |
|Endereço       |   
|Número         |
|Complemento    |
|Bairro         |
|CEP            |
|Cidade         |
|UF             |
|Telefone       |
|E-mail         |
|CNPJ           |
|Centralizadora |
|Banco          |

@campos_obrigatorios_const
Cenário: Validar os campos obrigatórios
Quando clicar no botão Gravar na tela de construtora
Então deverá ser exibido mensagem de alerta informativa 

@cnpj_duplicado_construtora
Esquema do Cenário: Validar nome duplicado de Construtora
Quando preencho o campo CNPJ com um já existente
E preencher o campo  "<Endereço>",<Número>,"<Complemento>","<Bairro>",<CEP>,"<Cidade>","<Telefone>","<E-mail>"
E clicar no botão Gravar na tela de construtora
Então deverá ser exibido a mensagem  “Erro: Já existe uma Construtora cadastrada com esse cnpj.”

Exemplos:
|Endereço  |Número  |Complemento |Bairro  |CEP      |Cidade    |Telefone |E-mail             |
|Rua teste |1234    |teste       |teste   |12345678 |São Paulo |12345678 |teste@teste.com    |

@nova_construtora
Esquema do Cenário: Validar mensagem de cadastro com sucesso
Quando preencher o campo  "<Endereço>",<Número>,"<Complemento>","<Bairro>",<CEP>,"<Cidade>","<Telefone>","<E-mail>"
E clicar no botão Gravar na tela de construtora
Então as informações do construtora deverão ser salvas com sucesso

Exemplos:
|Endereço  |Número  |Complemento |Bairro  |CEP      |Cidade    |Telefone |E-mail             |
|Rua teste |1234    |teste       |teste   |12345678 |São Paulo |12345678 |teste@teste.com    |

@botao_voltar_const
Cenário: Validar a ação do botão Voltar
Quando clicar no botão Voltar na tela de cadastro
Então deverá retornar para a interface de consulta do construtora
