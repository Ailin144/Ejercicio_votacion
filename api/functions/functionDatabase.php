<?php

require_once "connection.php";

class FunctionsDatabase{

    static public function createVotacion($data){

        $sql = "INSERT INTO votes (name_lastname, alias , rut, email, region, commune, id_candidate, id_red) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        $db = Connection::connect();

        $stmt = $db->prepare($sql);

        $stmt->execute(array($data["name_lastname"],$data["alias"],$data["rut"],$data["email"],$data["region"],$data["commune"],$data["candidate"],$data["red"]));

        return $db->lastInsertId();;
    }
    
    static public function listCandidatos(){

        $sql = "SELECT * FROM candidate";

        $db = Connection::connect();

        $stmt = $db->prepare($sql);

        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_CLASS);
    }

}