import {Fn as Rf} from "./functions/rut.function.js";
import {ApiService} from './functions/api.function.js';

import "./functions/regiones.function.js"; // Carga las regiones y comunas en los selectores
import "./functions/candidatos.function.js";

const myForm = document.querySelector('#myForm');

myForm.addEventListener('submit', async (event) => {
	
	event.preventDefault();

	var formulario = validaDatos(event);

	if(!formulario)// si el formulario es false no se envia
		return;

	const apiService = new ApiService;

	var response = await apiService.createVotacion(formulario);

	if(response.status!=200){
		alert(`EL formulario no se registro por: ${response.error.description}`);
        return;
    }

	if(response.status==200){
		alert(`Formulario enviado con éxito`);
        return;
    }

});

function validaDatos(event){

	const data = new FormData(event.target);// Datos de form data para envio a servidor
	var formulario = Object.fromEntries(data.entries());// Transforma El formData a un objeto

	formulario.rut = formulario.rut.replace(".", '')//Elimina los "." dentro del value rut
	if (!Rf.validaRut( formulario.rut )){// Valida si el rut es valido
		$("#msgerrorrut").html("El rut ingresado es inválido");
		return false;
	}else{
		$("#msgerrorrut").html("");// Si el rut es valido se borra la lenyenda
    }

	formulario.region = formulario.region.replace(".", '')//Elimina los "." dentro del value rut
	if (formulario.region == 'sin-region'){// Valida si el rut es valido
		$("#msgerrorregion").html("Seleccione una región");
		return false;
	}else{
		$("#msgerrorregion").html("");// Si el rut es valido se borra la lenyenda
    }

	formulario.commune = formulario.commune.replace(".", '')//Elimina los "." dentro del value rut
	if (formulario.commune == 'sin-comuna'){// Valida si el rut es valido
		$("#msgerrorcommune").html("Seleccione una comuna");
		return false;
	}else{
		$("#msgerrorcommune").html("");// Si el rut es valido se borra la lenyenda
    }
	
	formulario.candidate = formulario.candidate.replace(".", '')//Elimina los "." dentro del value rut
	if (formulario.candidate == 'sin-candidato'){// Valida si el rut es valido
		$("#msgerrorcandidate").html("Seleccione un candidato");
		return false;
	}else{
		$("#msgerrorcandidate").html("");// Si el rut es valido se borra la lenyenda
    }
	
	return formulario

}

