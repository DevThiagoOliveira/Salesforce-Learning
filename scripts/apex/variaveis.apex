/*
* O apex é uma linguagem de programação extremamente tipado, ele é praticamente igual Java em códagem
* 
* Visto isso se você quiser criar uma variavel tanto vazia quanto populada você tem que chamar o tipo de dado que a variável vai ser inserida
* seja ela String, Numerico, Booleano...
* 
* String : String
* Boolean : Boolean
* Numeric: Integer | Decimal
*
* A String caso você não saiba ele comporta somente texto
*   String nome = 'Thiago Augusto';
*
* O Boolean caso você não saiba ele comporta true ou false como dado
*   Boolean valorBooleano = true;
*
* E o Numeric ele comporta valores númericos, que no caso Integer para valores que não são quebrado ( sem virgula ) e Decimal para valores que são quebrados
*   Integer idade = 23;
*   Decimal quantidadeDinheiro = 200.00; os valores que são quebrados são sempre representados com ponto ao invez de virgula
*
*/

/* no site da organização da salesforce você consegue pegar o id de qualquer contato ou tipo de objeto criado pela URL ela fica exatamente
   logo depois do nome da API do objeto que no caso eu peguei no objeto conta ou account / ID / view
   trailblaze.lightning.force.com/lightning/r/Account/001Dn00000TR1XpIAL/view

    todo objeto também tem um nome de API e o nome a fantasia que no caso seria o "nome verdadeiro dele" nisso você consegue visualizar o nome "verdadeiro" dele
    clicando no objeto que você quer mexer e indo na engrenagem superior direita e indo em Editar Objeto ou indo na mesma engrenagem Configuração e na tela de configuração a tua abas a de Início e a Gerenciador de objetos,
    basta clicar no gerenciador de objetos e digitar na busca rápida o nome do objeto em questão (obs:. o nome do objeto estará com o nome a fantasia).
    ao clicar no objeto você se deparará com os detalhes do mesmo e lá estará o nome da sua API
    
    Nome da API
    Account --> ou o nome de API do objeto que você clicou
*/

ID ids = '001Dn00000TR1XpIAL';
String nome = 'Thiago Augusto';
Integer idade = 23;
Decimal quantidadeEmBolso = 60.0;
Boolean sexoMasculino = true;