const response = await fetch("./assets/json/commune.json");
const regions_commune = await response.json();

jQuery(document).ready(function () {

	var iRegion = 0;
	var htmlRegion = '<option value="sin-region">Seleccione región</option><option value="sin-region">--</option>';
	var htmlComunas = '<option value="sin-region">Seleccione comuna</option><option value="sin-region">--</option>';

	jQuery.each(regions_commune.regions, function () {
		htmlRegion = htmlRegion + '<option value="' + regions_commune.regions[iRegion].NombreRegion + '">' + regions_commune.regions[iRegion].NombreRegion + '</option>';
		iRegion++;
	});

	jQuery('#region').html(htmlRegion);
	jQuery('#commune').html(htmlComunas);

	jQuery('#region').change(function () { // cuando cambia una región se cambian las comunas
		var idRegions = 0;
		var valueRegion = jQuery(this).val();
		var htmlCommune = '<option value="sin-comuna">Seleccione comuna</option><option value="sin-comuna">--</option>';
		jQuery.each(regions_commune.regions, function () {
			if (regions_commune.regions[idRegions].NombreRegion == valueRegion) {
				var iComunas = 0;
				jQuery.each(regions_commune.regions[idRegions].comunas, function () {
					htmlCommune = htmlCommune + '<option value="' + regions_commune.regions[idRegions].comunas[iComunas] + '">' + regions_commune.regions[idRegions].comunas[iComunas] + '</option>';
					iComunas++;
				});
			}
			idRegions++;
		});
		jQuery('#commune').html(htmlCommune);
	});

});