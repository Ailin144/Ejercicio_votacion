<?php

$_ENV["HOST"]       = "MY_HOST";
$_ENV["DATABASE"]   = "MY_DATABASE";
$_ENV["USER"]       = "MY_USER";
$_ENV["PASS"]       = "MY_PASS";

class Connection{

    //Informacion de la base de datos
    static public function infoDatabase(){

        $infoDB = array(
            "host" => $_ENV["HOST"],
            "database" => $_ENV["DATABASE"],
            "user" => $_ENV["USER"],
            "pass" => $_ENV["PASS"]
        );

        return $infoDB;
    }

    //conexion a la base de datos
    static public function connect(){

        try{

            $link = new PDO(
                "mysql:host=".Connection::infoDatabase()["host"].";dbname=".Connection::infoDatabase()["database"],
                Connection::infoDatabase()["user"],
                Connection::infoDatabase()["pass"]
            );

            $link->exec("set names utf8");

        }catch(PDOExcpetion $e){
            die("Error: ".$e->getMessage());
        }

        return $link;

    }

}