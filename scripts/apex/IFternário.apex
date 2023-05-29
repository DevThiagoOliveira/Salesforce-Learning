// a operadores que também pode ser utilizados para fazer como se fosse um if else que são ? : > < !

/**

   se nome for igual a X então me retorne o nome da pessoa, se não me retorne (não encontrado)

*/

Integer numero = 20;
String nome = 'thiago';

String resultado = nome == 'thiago' ? 'nome: ' + nome : 'não encontrado';
Boolean resultado1 = numero < 10;
Boolean resultado2 = numero > 10;
Boolean resultado3 = !(numero > 10);

system.debug(resultado);
system.debug(resultado1);
system.debug(resultado2);
system.debug(resultado3);