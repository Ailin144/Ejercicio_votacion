<?php

function validateRegister($values){

    $valid = true;
    
    $validVo = validaVote($values["rut"]);

    if(!$validVo){
        return "Vote_false";
    }

    $valid = validaString($values["name_lastname"])?$valid:false;
    $valid = validaAlias($values["alias"])?$valid:false;
    $valid = validaRut($values["rut"])?$valid:false;
    $valid = validaEmail($values["email"])?$valid:false;
    $valid = validaNumber($values["region"])?$valid:false;
    $valid = validaNumber($values["commune"])?$valid:false;
    $valid = validaNumber($values["candidate"])?$valid:false;
    $valid = validaRed($values["red"])?$valid:false;
    $valid = validaVote($values["rut"])?$valid:false;

    return $valid;
}

function validaString($value){
    if( isset($value) && is_string($value) )
        return true;
    return false;
}

function validaAlias($value){
    if (preg_match("/^(?=[A-Za-z]+[0-9]|[0-9]+[A-Za-z])[A-Za-z0-9]{5,100}$/", $value) == 1) //VALIDA CANTIDAD DE CARACTERES Y QUE CONTENGA NUMEROS
        return true; 
    return false;
 }
 

function validaEmail($value){
    return filter_var($value, FILTER_VALIDATE_EMAIL);
}

function validaRut($rut) {

    // Verifica que no esté vacio y que el string sea de tamaño mayor a 3 carácteres(1-9)        
    if ((empty($rut)) || strlen($rut) < 3) {
        return array('error' => true, 'msj' => 'RUT vacío o con menos de 3 caracteres.');
    }

    // Quitar los últimos 2 valores (el guión y el dígito verificador) y luego verificar que sólo sea
    // numérico
    $parteNumerica = str_replace(substr($rut, -2, 2), '', $rut);

    if (!preg_match("/^[0-9]*$/", $parteNumerica)) {
        return array('error' => true, 'msj' => 'La parte numérica del RUT sólo debe contener números.');
    }

    $guionYVerificador = substr($rut, -2, 2);
    // Verifica que el guion y dígito verificador tengan un largo de 2.
    if (strlen($guionYVerificador) != 2) {
        return array('error' => true, 'msj' => 'Error en el largo del dígito verificador.');
    }

    // obliga a que el dígito verificador tenga la forma -[0-9] o -[kK]
    if (!preg_match('/(^[-]{1}+[0-9kK]).{0}$/', $guionYVerificador)) {
        return array('error' => true, 'msj' => 'El dígito verificador no cuenta con el patrón requerido');
    }

    // Valida que sólo sean números, excepto el último dígito que pueda ser k
    if (!preg_match("/^[0-9.]+[-]?+[0-9kK]{1}/", $rut)) {
        return array('error' => true, 'msj' => 'Error al digitar el RUT');
    }

    $rutV = preg_replace('/[\.\-]/i', '', $rut);
    $dv = substr($rutV, -1);
    $numero = substr($rutV, 0, strlen($rutV) - 1);
    $i = 2;
    $suma = 0;
    foreach (array_reverse(str_split($numero)) as $v) {
        if ($i == 8) {
            $i = 2;
        }
        $suma += $v * $i;
        ++$i;
    }
    $dvr = 11 - ($suma % 11);
    if ($dvr == 11) {
        $dvr = 0;
    }
    if ($dvr == 10) {
        $dvr = 'K';
    }
    if ($dvr == strtoupper($dv)) {
        return true;
    } else {
        return false;
    }
}

function validaRed($values){
    if(count($values) < 2) //VALIDA QUE CONTENGA 2 O MAS DE 2 REGISTROS
        return false;

    $valid = true;
    foreach ($values as $key => $value) {
        if( !is_numeric($value) || ($value != 1 && $value != 2 && $value != 3 && $value != 4)) //VALIDA SI EL REGISTRO ES UN NUMERO ENTRE EL 1 Y EL 4
            $valid = false;
    }
    
    return $valid;
}

function validaNumber($value){
    if( is_numeric($value))
        return true;
    return false;
}

function validaVote($value){
    require_once "functionDatabase.php";
    
    $result = FunctionsDatabase::validaVote($value);

    if( $result[0]->countVote == 0 )
        return true;

    return false;
}
?>