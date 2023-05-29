// isEmpty() => está vazio
// isNotEmpty() => não está vazio
// contains('str') => contem isso
// containsKey() => contem esta chave
// isNumeric() => é numerico
// length() => quantidade de caracteres, tamanho


// Exemplos

List<String> nome = new List<String>{'thiago', 'weslay'};
if(nome.isEmpty()) {
    System.debug('está vazio');
}

String containResult = nome.contains('thiago') ? 'contem o dado' : 'não contem o dado';
System.debug(containResult);

Map<Integer, String> nomeMap = new Map<Integer, String>{ 0 => 'thiago', 1 => 'weslay'};
if(nomeMap.containsKey(0)) {
    system.debug('existe');
}

String cpf = '99999999999';
String isNmrcResult = cpf.isNumeric() ? 'é numerico' : 'não é numerico';
System.debug(isNmrcResult);

String lengthResult = cpf.length() == 11 ? 'tem 11 caracteres' : 'não tem 11 caracteres';
System.debug(lengthResult);

