import { LightningElement, api } from 'lwc';

export default class Getandset extends LightningElement {
    
    variavelUpperCase = 'default value';

    @api // irei setar ele como publico para usar em outro arquivo, então cada variavel ira ter um dado diferente
    get variavel() { // get retorna o dado
        return this.variavelUpperCase;
    }
    set variavel(value) { // set ele recebe o dado podendo modificar ele
        this.variavelUpperCase = value.toUpperCase();
    }
}