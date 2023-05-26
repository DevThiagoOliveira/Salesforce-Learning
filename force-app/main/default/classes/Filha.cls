public with sharing class Filha extends Mae {
    public void exibir() {
        System.debug('metodo da classe filha');
    }

    // reescrevendo uma classe virtual herdado pela classe mãe
    public override void classeVirtual() {
        System.debug('classe virtual foi reescrita');
    } 
}