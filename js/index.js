import {ValidateService} from "./functions/validate.function.js";
import {ApiService} from './functions/api.function.js';

import "./functions/regiones.function.js"; // Carga las regiones y comunas en los selectores
import "./functions/candidatos.function.js";

const myForm = document.querySelector('#myForm');

myForm.addEventListener('submit', async (event) => {
	
	event.preventDefault();

	var formulario = await validaDatos(event);

	if(!formulario)// si el formulario es false no se envia
		return;

	const apiService = new ApiService;

	var response = await apiService.createVotacion(formulario);

	if(response.status!=200){
		alert(`EL formulario no se registro por: ${response.error}`);
        return;
    }

	if(response.status==200){
		alert(`Formulario enviado con éxito`);
        return;
    }

});

function validaDatos(event){
	return new Promise(async (resolve) => {
			
		const validateService = new ValidateService;

		const data = new FormData(event.target);// Datos de form data para envio a servidor
		var formulario = Object.fromEntries(data.entries());// Transforma El formData a un objeto

		console.log(formulario)

		console.log({alias: await validateService.validateAlias( formulario.alias ), email: await validateService.validateEmail( formulario.email )})


		formulario.rut = formulario.rut.replaceAll(".", '')//Elimina los "." dentro del value rut
		if (!await validateService.validateRut( formulario.rut )){// Valida si el rut es valido
			$("#msgerrorrut").html("El rut ingresado es inválido");
			resolve(false);
			return;
		}else{
			$("#msgerrorrut").html("");// Si el rut es valido se borra la lenyenda
		}

		if (!await validateService.validateAlias( formulario.alias )){
			$("#msgerroralias").html("El Alias ingresado es inválido");
			resolve(false);
			return;
		}else{
			$("#msgerroralias").html("");
		}	

		if (!await validateService.validateEmail( formulario.email )){// Valida si el rut es valido
			$("#msgerroremail").html("El email ingresado es inválido");
			resolve(false);
			return;
		}else{
			$("#msgerroremail").html("");
		}
		

		let checkboxes = document.querySelectorAll('input[name="red"]:checked');
		let redes = [];
		checkboxes.forEach((checkbox) => {
			redes.push(checkbox.value);
		});
		
		formulario = {...formulario, red:redes};
		if ( !await validateService.validateRed( redes )){
			$("#msgerrorred").html("Escoja al menos dos opciones");
			resolve(false);
			return;
		}else{
			$("#msgerrorred").html("");
		}

		formulario.region = formulario.region.replace(".", '')
		if (formulario.region == 'sin-region'){
			$("#msgerrorregion").html("Seleccione una región");
			resolve(false);
			return;
		}else{
			$("#msgerrorregion").html("");
		}

		formulario.commune = formulario.commune.replace(".", '')
		if (formulario.commune == 'sin-comuna'){
			$("#msgerrorcommune").html("Seleccione una comuna");
			resolve(false);
			return;
		}else{
			$("#msgerrorcommune").html("");
		}
		
		formulario.candidate = formulario.candidate.replace(".", '')
		if (formulario.candidate == 'sin-candidato'){
			$("#msgerrorcandidate").html("Seleccione un candidato");
			resolve(false);
			return;
		}else{
			$("#msgerrorcandidate").html("");
		}
		
		resolve( formulario );
	})

}

