public with sharing class Contas {
    public void criarConta(String nomeConta, String numeroConta) {
        Account conta = new Account();

        conta.Name = nomeConta;
        conta.Phone = numeroConta;

        insert conta;
    }
}