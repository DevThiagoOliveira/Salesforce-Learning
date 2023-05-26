public with sharing class InstrucaoDMLCRUD {
    public void CRUD() {

        Account conta = new Account();
        conta.Name = 'Instrução DML';
        insert conta; //insere no banco de dados

        Id idConta = conta.Id;
        System.debug('O id da conta é: ' + idConta);

        Account contaAtualizada = [SELECT Id, Phone FROM Account WHERE Id =: idConta LIMIT 1]; // pego o dado que acabei de criar e limito a 1 para vir somente ele
        contaAtualizada.Phone = '(012) 12345-6789';
        update contaAtualizada; // atualiza o dado no banco de dados com o novo número

        Account atualizada = [SELECT Id, Phone FROM Account WHERE Id =: idConta LIMIT 1]; // pego o dado que acabei de atualizar e limito a 1 para vir somente ele
        System.debug('Conta atualizada ' + atualizada);

        Account deletarConta = [SELECT Id FROM Account WHERE Id =: idConta LIMIT 1]; // pego o dado que acabei de atualizar e limito a 1 para vir somente ele
        delete deletarConta; // deleta o dado, fica 15 dias na lixeira

        Account contaExcluida = [SELECT Id FROM Account WHERE Id =: idConta LIMIT 1 ALL ROWS]; // para recuperar a conta excluida com todos os dados precisa-se colocar ALL ROWS (ele consulta todas as linhas para relacionamento de nivel superior ou agregado), no mais tu usa isso para ele acessar o nivel além do que estamos usando e recuperar os dados
        undelete contaExcluida; // recupero o dado que estava deletado

        Account recuperado = [SELECT Id, Phone FROM Account WHERE Id =: idConta LIMIT 1]; // pego o dado que estava excluido
        System.debug('Conta recuperada ' + recuperado);

    }

    // Há também o upsert -> ele é uma junção do update com o insert

    public void atualizarInserir() {
        Contact contato1 = new Contact();
        contato1.LastName = 'Augusto';
        insert contato1;

        Id idContato = contato1.Id;

        Contact contato1Phone = [SELECT Id, Phone FROM Contact WHERE Id =: idContato LIMIT 1]; 
        contato1Phone.Phone = '(012) 12345-6789'; // pego o dado que criei e atualizo o número

        Contact contato2 = new Contact();
        contato2.LastName = 'Cardemori';

        List<Contact> listaDeContatos = new List<Contact>(); // crio uma lista do tipo contatos
        listaDeContatos.add(contato1Phone); 
        listaDeContatos.add(contato2);

        upsert listaDeContatos; // adiciono tudo a lista de dou um update insert = upsert nela

    }
}