public abstract class ClasseMetodoAbstratoEstaticoVirtual { // classes abstratas podem ser estendida, mas ela não pode ser instanciada com new
    
    /*
        também a metodos abstratos, diferente de metodos normais ou virtuais ele não são implementados ou seja colocar --> { condição }
        você somente colocar (); e não faz mais nada, mas diferente dos metodos normais e virtuais se você estender uma classe mãe 
        a classe filha é OBRIGADA a implementar as classes abstratas. E os metodos estaticos eles não poderão utilizar atributos ou metodos da propria classe
        e nem podera ser utilizado pelo instancia da classe ele tera que ser chamado pela propria classe ClasseMetodoAbstrato.metodoEstatico();
    */
    public abstract void metodoAbstrata();

    public virtual void metodoVirtual() {
        system.debug('metodo virtual');
    }

    // public static void metodoEstatico() {
    //     system.debug('método Estatico');
    // }

    public void metodoNormal() {
        system.debug('método normal');
    }

}