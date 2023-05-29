public with sharing class Contas implements InterfaceClass{

    // segundo parametro é o retorno void é nada, String ele é obrigado a retornar string ou o tip ode dado que você informar
    // também a métodos static que eles só irão ser usados com o chamado da classe exemplo Contas.criarConta ao invez de você criar um objeto da classe e poder ser usado pelo objeto
    // há também o virtual, que quando você passa um metodo virtual ela pode ser reescrito (override)

    // há vários atribuitos dentro de uma classe e neles a vários escopos como
    private String privado = 'so pode ser usado aqui dentro do metodo';
    public String publico = 'pode ser usado por qualquer pessoa ao chamar o metodo';
    protected String protegido = 'pode ser usado somente se for herdado';

    public void criarConta(String nomeConta, String numeroConta) { 
        Account conta = new Account();

        conta.Name = nomeConta;
        conta.Phone = numeroConta;

        insert conta;
    }

    public String nome() {
        return 'Nome da pessoa';
    }

    public String sobrenome() {
        return 'Sobrenome da pessoa';
    }

    public Integer idade() {
        return 23;
    }

    public String cpf() {
        return 'Cpf da pessoa';
    }
}