import { LightningElement } from 'lwc';

export default class Interadordelista extends LightningElement {
    contatos = [
        {
            Id: 1,
            Name: 'Thiago Augusto',
            Title: 'developer'
        },
        {
            Id: 2,
            Name: 'Weslay',
            Title: 'developer'
        },
        {
            Id: 3,
            Name: 'Antonio',
            Title: 'design'
        },
        {
            Id: 4,
            Name: 'Gabriele',
            Title: 'tester'
        },
        {
            Id: 5,
            Name: 'Marcos',
            Title: 'game developer'
        }
    ];
}