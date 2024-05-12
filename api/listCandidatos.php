<?php

    if($_SERVER['REQUEST_METHOD'] != "GET"){
        errorResponse("El tipo de solicitud no es valido");
        exit;
    }

    require_once "functions/functionDatabase.php";

    if($_SERVER['REQUEST_METHOD'] == "GET"){

        $results = FunctionsDatabase::listCandidatos();

        success($results);
        exit;
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