import {Fn as Rf} from "./rut.function.js";

export class ValidateService{

    constructor() { }

    async validateRut(rut) {
        return new Promise((resolve) => {
            resolve (Rf.validaRut( rut ))
        })
    }
    
    async validateEmail(email) { 
        // ([a-zA-Z0-9._%+-])       Valida nombre
        // ([a-zA-Z0-9.-])          Valida el Servidor
        // ([a-zA-Z]{2,4})+         Valida dominio
        //nombre usuario + @ + servidor + dominio
        return new Promise((resolve) => {
            const regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            resolve (regex.test(email))
        })  
    }
    
    async validateAlias(alias) {
        // ([A-Za-z]+[0-9])         Valida Que sea una o mas letras seguidas de un numero
        // ([0-9]+[A-Za-z])         Valida Que sea un numero o mas seguido de una letra
        // ([A-Za-z0-9]{5,100})     Valida que contenga de 5 a 100 caracteres 
        return new Promise((resolve) => {
            const regex = /^(?=[A-Za-z]+[0-9]|[0-9]+[A-Za-z])[A-Za-z0-9]{5,100}$/;
            resolve (regex.test(alias))
        })
    }
    
    async validateRed(red) {
        return new Promise((resolve) => {
            resolve( red.length>1 )
        })
    }
}