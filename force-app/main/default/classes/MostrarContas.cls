public with sharing class MostrarContas {
    public static void mostrarContas() {

        for(Account contas : SelectAccount.retornaContas()) {
            system.debug(contas);
       }
       
    }
}