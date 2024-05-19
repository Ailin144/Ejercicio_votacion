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
        }else if( $valid === "Vote_false"){
            errorResponse("El voto ya se registro....");
            exit;
        } 
        // Fin valida Datos

        $person = array(
            "name_lastname" => $json_object['name_lastname'],
            "alias" => $json_object['alias'],
            "rut" => $json_object['rut'],
            "email" => $json_object['email'],
            "id_commune" => $json_object['commune'],
            "id_region" => $json_object['region'],
        );
        $id_person = FunctionsDatabase::createPerson($person);


        $votes = array(
            "id_candidate" => $json_object['candidate'],
            "id_person" => $id_person
        );
        $id_vote = FunctionsDatabase::createVotes($votes);


        $redes = $json_object['red'];
        foreach ($redes as $red ){
            $votes_red = array (
                "id_vote" => $id_vote,
                "id_red" => $red
            );
    
            $result = FunctionsDatabase::createVotesRedes($votes_red);
        }

        if( $id_vote )
            success($id_vote);
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