import { LightningElement, api, wire, track } from 'lwc'; // aqui você está importanto a funcionalidade básica do lwc
// caso for usar precisa-se importar aqui em cima

export default class HelloWorld extends LightningElement {
    firstName = 'hello world !!'; // você não precisa tipar um tipo pois como é JS ele já tipa para você o tipo pelo tipo de dado inserido, mas diferente do js aqui você não precisa dar um var ou let para criar uma variavel
 
    /**
     *  por padrão as variaveis criadas sem nomeclatura são privadas,
     *  caso você quiser criar uma propriedade publica você coloca @api
     *  
     * 
     *  publica => @api variavel;
     *  privada => variavel;
     *  rederiza um componente quando ocorre uma alteração => @track
     *  pega e mescla um dado da org
     *  @wire
     * */  
}