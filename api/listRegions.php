<?php

    if($_SERVER['REQUEST_METHOD'] != "GET"){
        errorResponse("El tipo de solicitud no es valido");
        exit;
    }

    require_once "functions/functionDatabase.php";

    if($_SERVER['REQUEST_METHOD'] == "GET"){

        $regions = FunctionsDatabase::listRegions();

        $communes = FunctionsDatabase::listCommunes();

        $results = regions_commune($regions, $communes);

        success($results);

        exit;
    }


    function regions_commune($regions, $communes){

        $communes_region = array();

        foreach ($regions  as $index => $region) {
            array_push($communes_region,array('id_region' => $region->id_region, 'name_region' =>$region->name_region, 'communes' => []));
            foreach($communes as $commune){
                if ($region->id_region == $commune->id_region){
                    array_push($communes_region[$index]['communes'], array('name_commune' => $commune->name_commune, 'id_commune' => $commune->id_commune)); 
                }
            }
        }
        return $communes_region;
    }


    function success($data){

        $json = array(
            "status" => 200,
            "results" => $data
        );
        
        echo json_encode($json, http_response_code($json["status"]));

    }

    function errorResponse($error){

        $json = array(
            "status" => 404,
            "error" => $error
        );
        
        echo json_encode($json, http_response_code($json["status"]));
    }

?>