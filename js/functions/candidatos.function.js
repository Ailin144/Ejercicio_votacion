
import {ApiService} from './api.function.js';


const apiService = new ApiService;
var response = await apiService.listCandidatos();

var candidatos = [];

if( response.status==200 && response.results.length>0 ){
    candidatos = response.results;
}

jQuery(document).ready(function () {

    var htmlCandidato = '<option value="sin-candidato">Seleccione un candidato</option><option value="sin-candidato">--</option>';

	jQuery('#candidate').html(htmlCandidato);

	jQuery('#commune').change(function () { // cuando cambia una región se cambian las comunas
		var valueCommune = jQuery(this).val();
		var htmlCandidato = '<option value="sin-candidato">Seleccione un candidato</option><option value="sin-candidato">--</option>';
		
        // array de los candidatos en la comuna seleccionada
        var candidatosCommune = candidatos.filter((item) => {
            return item.id_commune == valueCommune;
        });

        let index = 0;
        jQuery.each(candidatosCommune, function () {
            htmlCandidato = htmlCandidato + '<option value="' + candidatosCommune[index].id_candidate + '">' + candidatosCommune[index].name + '</option>';
            index ++;
        });
        
		jQuery('#candidate').html(htmlCandidato);
	});

});