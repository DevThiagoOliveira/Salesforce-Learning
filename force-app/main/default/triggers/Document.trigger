trigger Document on ContentVersion (after insert) {
    // com o contentDocumentLink você consegue mexer com os documentos (anexos) de uma conta

    Set<Id> ids = new Set<Id>();

    for(ContentVersion contVer : Trigger.new) {
        ids.add(contVer.ContentDocumentId);
    }

    //                                                   |  id da conta que está utilizando este documento
    //                                                   V                                                                 V para que você possa utulizar o ContentDocumentLink você precisa referenciar os ids para que funcione
    List<ContentDocumentLink> docLink = [SELECT Id, LinkedEntityId, ContentDocumentId, ContentDocument.Title FROM ContentDocumentLink WHERE ContentDocumentId IN : ids];

    for(ContentDocumentLink link : docLink) {
        if(String.valueOf(link.LinkedEntityId).substring(0,3) == Account.sObjectType.getDescribe().getKeyPrefix()) {
            System.debug('Documento tipo Account=' + ContentDocument.Title + ' Id=' + link.LinkedEntityId);
        }
    }
}