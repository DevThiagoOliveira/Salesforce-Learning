public virtual class Mae {
    public void ola() {
        System.debug('olá');
    }
    
    // está classe é virtual, que quando ela for usada pela herança ela podera ser reescrita (override);
    public virtual void classeVirtual() {
        System.debug('Classe virtual');
    }
}