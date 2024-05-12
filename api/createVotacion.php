<?php

    if($_SERVER['REQUEST_METHOD'] != "POST"){
        errorResponse("El tipo de solicitud no es valido");
        exit;
    }

    require_once "functions/validate.php";
    require_once "functions/functionDatabase.php";
    
    if($_SERVER['REQUEST_METHOD'] == "POST"){
        

        $request_raw = file_get_contents('php://input');
        $json_object = json_decode($request_raw, true);

        //Validar los datos
        $valid = validateRegister($json_object);
        if( !$valid ){
            errorResponse("No fue posible agregar");
            exit;
        }
        // Fin valida Datos

        $result = FunctionsDatabase::createVotacion($json_object);

        if( $result )
            success($result);
        else
            errorResponse("No fue posible agregar");
        
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