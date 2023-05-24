/*
    Query - no mais é um SQL para buscar dados

    e o metodo de uso também é igual

    SELECT - selecionar
    FROM - de onde, de
    Where - onde

    Selecione nome no objeto Oportunidade onde o id = '006Dn0000086F9yIAE';
    
    SELECT ( sempre com o nome de API ) FROM ( objeto ) Where ( argumento );
    SELECT NAME FROM Opportunity Where Id = '006Dn0000086F9yIAE';

    -----------------------------------------------------------------------------

    Sempre que você for selecionar fazer uma instrução de Query, caso queira armazenala em uma variavel sempre lembre de coloca ela entre colchetes [];
*/

Opportunity opportunityQueryIdName = [SELECT Id, NAME 
                                      FROM Opportunity 
                                      WHERE Id = '006Dn0000086F9yIAE'];


// Exibir todos os registros
List<Opportunity> opportunityQueryList = [SELECT Id, NAME, 	Description 
                                          FROM Opportunity];


system.debug(opportunityQueryIdName);
system.debug(opportunityQueryList);