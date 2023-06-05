import { LightningElement, api, wire } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';

// importo os dados do objeto que quero utilizar, então no objeto account eu pego o name e o phone
import NAME_FIELD from '@salesforce/schema/Account.Name'; 
// import PHONE_FIELD from '@salesforce/schema/Account.Phone';

// você consegue criar uma constante que armazena um array com todos os campos que você precisa, e então poder usar no wire
const FIELDS= [
    NAME_FIELD,
    'Account.Phone',
]

export default class WireAdapDemo extends LightningElement {

    @api recordId;

    @wire(getRecord ,{recordId: '$recordId', fields: FIELDS}) // aqui no wire eu pego os dados que estão registados, no id do objeto e deste objeto eu quero pegar os campos nome e numero;
    record; // eu adiciono o wire nesta variavel, retorna dois paremetros: data, error

    get name() { // eu dou um get no nome que é um dado que eu quero pegar
        return this.record.data ? getFieldValue(this.record.data, NAME_FIELD) : ''; // nele eu retorno o dado que do campo nome retirado da pesquisa pelo wire
    }

    get phone() {// e no phone que também é outro dado que quero pegar
        //return this.record.data ? getFieldValue(this.record.data, 'Account.Phone') : ''; // nele eu retorno o dado que do campo numero retirado da pesquisa pelo wire
        return this.record.data.fields.Phone.value;
    }
}

/**
 * melhores explicações sobre wire => https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.data_wire_service_about
 */