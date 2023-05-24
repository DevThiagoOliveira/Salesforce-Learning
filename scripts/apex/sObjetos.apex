/*
    Objetos nada mais nada menos são conjutos de informações que atraves de instanciamento você consegue utilizar os seus dados que sejam permitidos
    sejam eles variáveis, metodos, entre outros.

    como instaciar um objeto. Você consegue instancia qualquer tipo de objeto criado no site do salesforce utilizando o nome de sua API
    como exemplo irei usar o objeto Conta ou Account

    entrando em seu objeto e em detalhes vejo que o nome de sua API é Account então basta colocar 

    Account <-- tipo de dado
    nome da variavel
    =
    new
    Account <-- nome do objeto

    Account nomeVariavel = new Account();
    
    sendo assim você acessa a instáncia do objeto em questão

    visto que agora eu criei uma nova instancia de conta eu também posso utilizar o seus campos 
    de relaciomento que no caso seria seus métodos ou metodos de outros objetos que estão linkados com este objeto
    basta você ir nas configurações do objeto (no mesmo lugar que você vai para ver o nome de API dele, e lá há Campos e relacionamentos )
    e para utlizar basta colocar . depois do nome da instancia do objeto e colocar o nome do campo ou nome de API do objeto relacionado.

    O apex também ele já é linkado ao banco de dados então se você quiser inserir esta instancia nova que você acabou de criar no banco de dados você pode colocar
    insert que você vai inserir mas o que ? No caso que quero inserir a minha instancia que acabei de criar no banco que no caso a conta então insert conta
*/

ID ids = '001Dn00000TR1XpIAL';

String nome = 'Thiago';
Integer idade = 23;

Account conta = new Account();

conta.Name = 'Banco do Brasil';
conta.Phone = '9999-9999';

insert conta;

//  igual esta no arquivo de hello para executar o linha de código que você queira testar basta selecionar a linha que queira testar, apertar
//  CTRL + SHIFT + P e colocar SFDX: Execute Anonymous Apex with Currently Selected Text

//  ao finalizar e enviar o código você vai ver que dentro de contas existe um cliente chamado Banco do Brasil com o telefone 9999-9999

//  sempre atento de que, cada tipo de objeto tem os campos obrigatórios, e nesses campos caso você for criar um tipo de informação dele você de suma importancia necessita popular todos os campos obrigatorios dele caso não popule ocorrerá um erro