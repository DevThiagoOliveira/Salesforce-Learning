/*
    Coleções

    List (Lista ordenada), Aceita valores duplicados
    Set (Lista não ordenada), Não aceita valores duplicados, ele discarta qualquer valor duplicado é válido somente o primeiro
    Map(conjunto de chave e valores | chaves => valores)

    ------------------------------------------------------------------------------------

    List e Set Declaração: 
    o list e o set são iguais em declaração so muda que o set não repete dado como não tem ordenação ou seja, com ele os dados não tem indice 0, 1, 2, 3.. são so um conjunto de dados.

    List<Tipo do Dado> nome da lista = new List<Mesmo tipo>(); não populada 
    List<Tipo do Dado> nome da lista = new List<Mesmo tipo>{'a', 'b', 'c', 'd'}; populada

    Set<Tipo do Dado> nome da lista = new List<Mesmo tipo>(); não populada 
    Set<Tipo do Dado> nome da lista = new List<Mesmo tipo>{'a', 'b', 'c', 'd'}; populada

    adicionar um dado(s) a lista

    List<String> lista = new List<String>();

    lista.add('a');
    lista.add('b');
    lista.add('c');

    você também consegue adicionar todos os dados de uma variavel a uma List com addAll();
    lista2.addAll(lista); assim a, b, c, estarão na lista2 importados da lista1

    ------------------------------------------------------------------------------------
    
    Map Declaração:

    Map < tipo da chave, tipo do valor> (nome da variavel) = new Map< tipo da chave, tipo do valor >();
    Map < tipo da chave, tipo do valor> (nome da variavel) = new Map< tipo da chave, tipo do valor >{ chave => valor };

    Adicionar um dado ao Map:
    variavel.put(chave, valor);

    Resgata o dado que você quer:
    variavel.get(chave);
*/

List<String> listaDeString = new List<String>();
String[] arrayString = new String[]{'10', '20', '30', '40', '50'};

listaDeString.addAll(arrayString);
listaDeString.add('li');
listaDeString.add('s');
listaDeString.add('ta');

//------------------------------------------------------------------------------------

Set<String> setDeString = new Set<String>();

setDeString.addAll(arrayString);
setDeString.add('li');
setDeString.add('s');
setDeString.add('ta');

system.debug(listaDeString);
system.debug(setDeString);

//------------------------------------------------------------------------------------

Map<Integer, String> lista = new Map<Integer, String>();
Map<Integer, String> lista1 = new Map<Integer, String>{1 => 'um', 2 => 'dois', 3 => 'tres'};

lista.put( 1, 'dado um' );
lista.put( 2, 'dado dois' );
lista.put( 3, 'dado tres' );

System.debug(lista);
System.debug(lista.get(1));
System.debug(lista1);


List<Account> contas = [SELECT Id, Name, Phone FROM Account LIMIT 5];

Map< Id, Account > mapContas = new Map< Id, Account >(contas);

System.debug('Contas: ' + mapContas);
System.debug('Contas: ' + mapContas.get('001Dn00000IkHSzIAN'));