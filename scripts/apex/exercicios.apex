// aqui é o modo de debug anonimo do salesforce,
// se quiser executar um código anonimamente basta clica no código .apex e colocar SFDX: Execute Anonymous Apex with Editor Contents
// então ele executará o seu código anonimamente pelo terminal de debug do salesforce

// Coloquei Separado as informação da Lista dentro de um ArrayMap Concatenado com outro as informações 123456789 CPF sendo o 123456789 sendo a chave do array PAI CPF como a chave do array concatenado e a quantidade de repetições do numero como o valor do array concatenado.

List<String> titulo = new List<String>{'123456789_CPF', '234567_Identidade', '123456789_CPF', '123456789_CPF'};

Map<String, Map<String, Integer>> mapTeste = new Map<String, Map<String, Integer>>();

for(String Idontknow : titulo) {

    List<String> quebra = Idontknow.split('_');
    
    if( mapTeste.containsKey(quebra[0])) {
        mapTeste.get(quebra[0]).put(quebra[1], mapTeste.get(quebra[0]).get(quebra[1]) + 1);
    } else {
        mapTeste.put(quebra[0], new Map<String, Integer>{ quebra[1] => 1 });
    }
}

System.debug(mapTeste);