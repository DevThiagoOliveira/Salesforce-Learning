import { LightningElement } from 'lwc';

export default class RenderForEach extends LightningElement {

    contatos = [
        {
            Id: 1,
            Name: 'Thiago Augusto',
            Title: 'Engenheiro de Software'
        },
        {
            Id: 2,
            Name: 'Weslay',
            Title: 'Um Rapaz gente fina'
        },
        {
            Id: 3,
            Name: 'Antonio',
            Title: 'Uber'
        },
        {
            Id: 4,
            Name: 'Gabriele',
            Title: 'Hummmmm...'
        },
        {
            Id: 5,
            Name: 'Marcos',
            Title: 'titulo qualquer'
        }
    ];
}