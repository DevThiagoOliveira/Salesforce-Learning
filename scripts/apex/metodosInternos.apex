// isEmpty() => está vazio
// isNotEmpty() => não está vazio
// contains('str') => contem isso
// containsKey() => contem esta chave
// isNumeric() => é numerico
// length() => quantidade de caracteres, tamanho
// split('str') => você usa para remover e separar um dado
// substring(primeiro, ultimo | ou | posição, quantos valores) => você pode usar para cortar algum dado
// String.valueOf() => converte um dado para STRING
// sObjectType.getDescribe().getKeyPrefix() => retorna o prefixo (001, 006, ...) do Id do objeto



// Exemplos:

// isEmpty()
List<String> nome = new List<String>{'thiago', 'weslay'};
if(nome.isEmpty()) {
    System.debug('está vazio');
}


// contains('str')
String containResult = nome.contains('thiago') ? 'contem o dado' : 'não contem o dado';
System.debug(containResult);


// containsKey()
Map<Integer, String> nomeMap = new Map<Integer, String>{ 0 => 'thiago', 1 => 'weslay'};
if(nomeMap.containsKey(0)) {
    system.debug('existe');
}


// isNumeric()
String cpf = '99999999999';
String isNmrcResult = cpf.isNumeric() ? 'é numerico' : 'não é numerico';
System.debug(isNmrcResult);


// length()
String lengthResult = cpf.length() == 11 ? 'tem 11 caracteres' : 'não tem 11 caracteres';
System.debug(lengthResult);


// split('str')
System.debug(nome[0].split('a'));


//substring();
System.debug(nome[0].substring(0, 3));