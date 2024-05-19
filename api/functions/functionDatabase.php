<?php

require_once "connection.php";

class FunctionsDatabase{

    //INSERTS
    static public function createVotes($data){

        $sql = "INSERT INTO votes ( id_candidate, id_person ) VALUES ( ?, ? )";

        $db = Connection::connect();

        $stmt = $db->prepare($sql);

        $stmt->execute(array($data["id_candidate"], $data["id_person"]));

        return $db->lastInsertId();;
    }

    static public function createPerson($data){

        $sql = "INSERT INTO person ( name_lastname, alias , rut, email, id_region, id_commune ) VALUES ( ?, ?, ?, ?, ?, ? )";

        $db = Connection::connect();

        $stmt = $db->prepare($sql);

        $stmt->execute(array($data["name_lastname"], $data["alias"], $data["rut"], $data["email"], $data["id_region"], $data["id_commune"]));

        return $db->lastInsertId();;
    }

    static public function createVotesRedes($data){

        $sql = "INSERT INTO votes_red ( id_vote, id_red ) VALUES ( ?, ? )";

        $db = Connection::connect();

        $stmt = $db->prepare($sql);

        $stmt->execute(array($data["id_vote"], $data["id_red"]));

        return $db->lastInsertId();;
    }
  
    //SELECTS
    static public function listCandidates(){

        $sql = "SELECT * FROM candidate";

        $db = Connection::connect();

        $stmt = $db->prepare($sql);

        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_CLASS);
    }

    static public function listRegions(){

        $sql = "SELECT * FROM regions";

        $db = Connection::connect();

        $stmt = $db->prepare($sql);

        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_CLASS);
    }

    static public function listCommunes(){

        $sql = "SELECT * FROM communes";

        $db = Connection::connect();

        $stmt = $db->prepare($sql);

        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_CLASS);
    }
    
    static public function validaVote($rut){

        $sql = "SELECT COUNT(V.id_vote) as countVote FROM votes V
                INNER JOIN person P ON V.id_person=P.id_person
            WHERE P.rut=?;";

        $db = Connection::connect();

        $stmt = $db->prepare($sql);

        $stmt->execute(array($rut));

        return $stmt->fetchAll(PDO::FETCH_CLASS);
    }
}