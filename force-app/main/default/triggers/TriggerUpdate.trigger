trigger TriggerUpdate on Account ( before update, before delete, after update, after delete)
{
    if(Trigger.isBefore) { // => Depois da ação
        if(Trigger.isUpdate) { // => antes de atualizar no banco de dados
            for (Account conta : Trigger.old) { // o trigger.old ele pega o valor velho
                System.debug('Houve uma atualização na conta: ' + conta.Name);
            }
        }
    }
    
    if(Trigger.isAfter) { // => Depois da ação
        if(Trigger.isUpdate) {// => apos atualizar no banco de dados

            for (Account conta : Trigger.old) { // o trigger.old ele pega o valor velho
                System.debug('Houve uma atualização na conta: ' + conta.Name);
            }

            for (Account conta : Trigger.new) { // antes do dado ir para o banco ele recebe pelo trigger.new
                System.debug('Houve uma atualização na conta ' + conta.Name + ' depois de atualizar o banco ');
            }
        }
    }
}