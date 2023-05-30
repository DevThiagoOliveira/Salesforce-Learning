// trigger é a captura de um botão ou ação do sistema, todo botão ou interação que você fizer dentro do sales irá passar por um trigger
// ele é como se fosse o checkpressed na criação de algum jogo para checar se o botão foi pressionado, toda ação dentro de um objeto pode ser captura pela trigger
//                       |  o objeto que você vai trabalhar na trigger
//                       |                     
//                       V                     
trigger ApexTrigger on Account ( // Você pode agir nos contextos ou capturar uma informação
    before insert, // Antes de Inserir
    before update,// Antes de Atualizar
    before delete,// Andes de Deletar

    after insert,// depois de Inserir
    after update,// depois de Atualizar
    after delete,// depois de Deletar
    after undelete// depois de Recuperar o Registro da lixeira
    ) 
{
    if(Trigger.isBefore) { // => Depois da ação, antes de inserir no banco de dados
        if(Trigger.isInsert) {
            for (Account conta : Trigger.new) { // antes do dado ir para o banco ele recebe pelo trigger.new
                System.debug('Dados Antigos: ' + conta.Name);
            }
        }
    }
    if(Trigger.isAfter) { // => Depois da ação, apos inserir no banco de dados
        if(Trigger.isInsert) {
            for (Account conta : Trigger.new) { // antes do dado ir para o banco ele recebe pelo trigger.new
                System.debug('Dados Atualizados: ' + conta.Name + ' ' + conta.Id + ' depois de inserir no banco ');
            }
        }
    }


    if (Trigger.isBefore) {
        if(Trigger.isDelete) {
            for (Account conta : Trigger.old) {
                System.debug('Conta ' + conta.Name + ' será enviado para lixeira');
            }
        }
    }
    if (Trigger.isAfter) {
        if (Trigger.isDelete) {
            for (Account conta : [SELECT Name FROM Account WHERE Id IN : Trigger.old ALL ROWS]) {
                System.debug('Conta ' + conta.Name + ' foi enviado da lixeira');
            }
        }
    }


    if(Trigger.isBefore) {
       // não há como atuar sobre este isBefore no undelete pois o dado ainda está na lixeira
    }
    if(Trigger.isAfter) {
        if(Trigger.isUndelete) {
            for (Account  conta : [SELECT Id, Name FROM Account WHERE Id IN : Trigger.new] ) {
                System.debug('Foi trazido a conta ' + conta.Name + ' ' + conta.Id + ' da lixeira');
            }
        }
    }

    // if(Trigger.isBefore) { // => Depois da ação, antes de inserir no banco de dados

    // }
    // if(Trigger.isAfter) { // => Depois da ação, apos inserir no banco de dados

    // }
    // if(Trigger.isInsert) {

    // }
    // if(Trigger.isUpdate) {

    // }
    // if(Trigger.isDelete) {

    // }
    // for (Account conta : Trigger.new) {
    //     System.debug('Houve uma ação na conta: ' + conta.Name);
    // }
    // for (Account conta : Trigger.old) {
    //     System.debug('Houve uma ação na conta: ' + conta.Name);
    // }
}