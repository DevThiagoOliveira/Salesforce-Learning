public with sharing class Contas {

    // segundo parametro é o retorno void é nada, String ele é obrigado a retornar string ou o tip ode dado que você informar
    // também a métodos static que eles só irão ser usados com o chamado da classe exemplo Contas.criarConta ao invez de você criar um objeto da classe e poder ser usado pelo objeto
    public void criarConta(String nomeConta, String numeroConta) { 
        // há vários atribuitos dentro de um método e neles a vários escopos como
        private String privado = 'so pode ser usado aqui dentro do metodo';
        public String publico = 'pode ser usado por qualquer pessoa ao chamar o metodo';
        protect String protegido = 'pode ser usado somente se for herdado'

        Account conta = new Account();

        conta.Name = nomeConta;
        conta.Phone = numeroConta;

        insert conta;
    }
}