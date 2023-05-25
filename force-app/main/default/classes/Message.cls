public with sharing class Message {
    public static void sendEmail(String email, String titulo, String mensagem){
        
        Messaging.SingleEmailMessage criarMeuEmail = new Messaging.SingleEmailMessage();
        criarMeuEmail.setToAddresses(new List<String>{email});
        criarMeuEmail.setSubject(titulo);
        criarMeuEmail.setPlainTextBody(mensagem);

        Messaging.sendEmail( new List<Messaging.SingleEmailMessage>{criarMeuEmail});
    }
}