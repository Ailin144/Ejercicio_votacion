// const response = await fetch("./assets/json/commune.json");
// constregions = await response.json();

import {ApiService} from './api.function.js';


const apiService = new ApiService;
var response = await apiService.listRegions();

var regions = [];

if( response.status==200 && response.results.length>0 ){
    regions = response.results;
}

jQuery(document).ready(function () {

	var iRegion = 0;
	var htmlRegion = '<option value="sin-region">Seleccione región</option><option value="sin-region">--</option>';
	var htmlComunas = '<option value="sin-region">Seleccione comuna</option><option value="sin-region">--</option>';

	jQuery.each(regions, function () {
		htmlRegion = htmlRegion + '<option value="' + regions[iRegion].id_region + '">' + regions[iRegion].name_region + '</option>';
		iRegion++;
	});

	jQuery('#region').html(htmlRegion);
	jQuery('#commune').html(htmlComunas);

	jQuery('#region').change(function () { // cuando cambia una región se cambian las comunas
		var idRegions = 0;
		var valueRegion = jQuery(this).val();
		var htmlCommune = '<option value="sin-comuna">Seleccione comuna</option><option value="sin-comuna">--</option>';
		jQuery.each(regions, function () {
			if (regions[idRegions].id_region == valueRegion) {
				var iComunas = 0;
				jQuery.each(regions[idRegions].communes, function () {
					htmlCommune = htmlCommune + '<option value="' + regions[idRegions].communes[iComunas].id_commune + '">' + regions[idRegions].communes[iComunas].name_commune + '</option>';
					iComunas++;
				});
			}
			idRegions++;
		});
		jQuery('#commune').html(htmlCommune);
	});

});