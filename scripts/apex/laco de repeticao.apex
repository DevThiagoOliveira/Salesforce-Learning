/*

   laço de repetição é um sistema que usamos para repetir código ao invez de você ter que escrever ele varias e varias vezes

   while( condição ) {
        executa X vezes
   }
   
   ------------------------------
   
   do {
        executa X vezes
   }while( condição )

   ------------------------------
   
   for( condição  ) {
        executa X vezes
   }

   execução:

   for(Integer contador = 0; contador < 10; contador++) {
        enquanto o contador for menor que 10 ele executara este código
   }

   formas mais complexas de usar seria chamar um tipo objeto e atribuir ele um dado

   exemplo:.
*/

List<Account> listaDeContas = [SELECT NAME FROM Account];

// a variavel conta ela vai receber os dados da listaDeContas um por um, até ele chegar no fim e acabar a execução
// : <- sinal de atribuição
for(Account conta : listaDeContas) {
    // aqui ele repetirar quantas vezes forem necessarias até acabar os dados presentes dentro da lista de contas

    conta.
    system.debug(conta);
}