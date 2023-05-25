public with sharing class SelectAccount {

    /* muitas das vezes é ótimo você criar uma classe somente para fazer uma busca pois com ela você pode mudar ou adicionar vários parametros
       de pesquisa somente uma vez ao invez de ter que repetir código várias e várias vezes somente para parametros de pesquisa difentes mas para o mesmo retorno
       assim quando você for usar e precisa somente de um tipo de terno basta instanciar no objeto criado 

       for(contas : SelectAccount.retornaContas()) {
            system.debug(contas.Industry);
       }
    */


    public static List<Account> retornaContas() {

        return [
                SELECT Id, Name, Active__c, Rating, ParentId, Description,
                NaicsDesc, BillingAddress, ShippingAddress, Fax, Site, Industry
                FROM Account
                WHERE ID = '001Dn00000IkHT3IAN'
        ];
    }
}