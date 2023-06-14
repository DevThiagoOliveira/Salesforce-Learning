import { LightningElement } from 'lwc'; // aqui você está importanto a funcionalidade básica do lwc
// caso for usar precisa-se importar aqui em cima

export default class HelloWorld extends LightningElement {
    nome = ''; // você não precisa tipar um tipo pois como é JS ele já tipa para você o tipo pelo tipo de dado inserido, mas diferente do js aqui você não precisa dar um var ou let para criar uma variavel
    sobrenome = '';



    atualizar(element) {
        const fields = element.target.name;

        if (fields === 'nome') {
            this.nome = this.template.querySelector(".input-nome").value; // aqui vocÊ tambem pode utilizar o querySelector, no js é document.querySelector aqui o documento é o template então. this.template para referenciar o template que você esta trabalhando e querySelector(""); -----> this.template.querySelector(".minha-classe");
        }

        if (fields ==='sobrenome') {
            this.sobrenome = element.target.value;
        }

        
    }
    
    get nomeCompleto() {
        return `${this.nome} ${this.sobrenome}`.toUpperCase();
    }

    /**
     *  por padrão as variaveis criadas sem nomeclatura são privadas,
     *  caso você quiser criar uma propriedade publica você coloca @api
     *  
     * 
     *  publica => @api variavel; Essas propriedades públic se já forem dados variadas criadas e populadas como são públicas os válores delas são atribuidos automáticamente há variavel só por ela ser pública não precisando ter que chamar nada mais ou populala
     *  privada => variavel;
     *  rederiza um componente quando ocorre uma alteração => @track
     *  pega e mescla um dado da org
     *  @wire(adapterId, {adapterConfig})
     *  variavel ou função;
     * */  
}