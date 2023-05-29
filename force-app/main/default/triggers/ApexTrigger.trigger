// trigger é a captura de um botão ou ação do sistema, todo botão ou interação que você fizer dentro do sales irá passar por um trigger
// ele é como se fosse o checkpressed na criação de algum jogo para checar se o botão foi pressionado, toda ação dentro de um objeto pode ser captura pela trigger
//                       |  o objeto que você vai trabalhar na trigger
//                       |                     
//                       V                     
trigger ApexTrigger on Contas ( // Você pode agir nos contextos ou capturar uma informação
    before insert // Antes de Inserir
    before update,// Antes de Atualizar
    before delete,// Andes de Deletar

    after insert,// depois de Inserir
    after update,// depois de Atualizar
    after delete,// depois de Deletar
    after undelete,// depois de Recuperar o Registro da lixeira
    ) 
{
    if (Trigger.isBefore) { // => Depois da ação, antes de inserir no banco de dados

    }
    if (Trigger.isAfter) { // => Depois da ação, apos inserir no banco de dados

    }
    if (Trigger.isInsert) { // => Depois da ação, antes de inserir no banco de dados

    }
    if (Trigger.isBefore) { // => Depois da ação, antes de inserir no banco de dados

    }
}