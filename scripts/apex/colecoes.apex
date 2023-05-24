/*
    Coleções

    List (Lista ordenada), Aceita valores duplicados
    Set (Lista não ordenada), Não aceita valores duplicados, ele discarta qualquer valor duplicado é válido somente o primeiro
    Map(conjunto de chave e valores | chaves => valores)

    Declaração:

    List<Tipo do Dado> nome da lista = new List<Mesmo tipo>(); não populada 
    List<Tipo do Dado> nome da lista = new List<Mesmo tipo>{'a', 'b', 'c', 'd'}; populada

    adicionar um dado(s) a lista

    List<String> lista = new List<String>();

    lista.add('a');
    lista.add('b');
    lista.add('c');

    você também consegue adicionar todos os dados de uma variavel a uma List com addAll();
    lista2.addAll(lista); assim a, b, c, estarão na lista2 importados da lista1
    
*/

List<String> listaDeString = new List<String>();
String[] arrayString = new String[]{'10', '20', '30', '40', '50'};

listaDeString.addAll(arrayString);
listaDeString.add('li');
listaDeString.add('s');
listaDeString.add('ta');

Set<String> setDeString = new Set<String>();

setDeString.addAll(arrayString);
setDeString.add('li');
setDeString.add('s');
setDeString.add('ta');

system.debug(listaDeString);
system.debug(setDeString);