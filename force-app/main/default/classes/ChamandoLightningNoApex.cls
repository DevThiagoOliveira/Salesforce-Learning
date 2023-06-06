public with sharing class ChamandoLightningNoApex {
    @AuraEnabled(cacheable=true) // o cacheable te ajuda a guardar o objeto ou, uma lista de objetos que serão retornados
    public static List<Contact> getContatos(String idConta){
            try { // por obrigação você não precisa usar o try catch, se você acha que não será preciso basta trocar por qualquer outra metodologia
            
                return [
                    SELECT AccountId, Id, FirstName, LastName
                    FROM Contact
                    WHERE AccountId =: idConta
                    WITH SECURITY_ENFORCED
                    ];
            } catch (Exception erro) {
                throw new AuraHandledException(erro.getMessage());
            }

        }

        
        /** 
         *  caso você queira chamar o LWC (Lightning Web Component) no apex você precisa colocar @AuraEnable() antes do método 
         *  
         *  Exemplo
         */
}