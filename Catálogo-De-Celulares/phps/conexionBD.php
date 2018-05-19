<?php
class Conector{

  var $user;
  var $passDB;
  var $host;
  var $database;
  var $mysqli;
  var $conexion;
  var $res;
  var $jsons;

  function Conector($user,$passDB,$host,$database){
    $this->user = $user;
    $this->passDB = $passDB;
    $this->host = $host;
    $this->database = $database;
  }

  function conectar(){
    $this->mysqli = new mysqli("localhost","root","root","jsons");
    $this->conexion = mysqli_connect_errno();
    if($this->conexion == true){
        echo "No se pudo conectar";
    }
  }

  function query($sql){
    $this->res = $this->mysqli->query($sql);
    if($this->res->num_rows == 0){
        echo "";
    }
    else{
      while ($fila = $this->res->fetch_array(MYSQLI_NUM)){
        foreach ($fila as $j) {
          $json = json_decode($j);
          $id = strtolower($json->{"nombre"});
          $id = str_replace(" ","",$id);
          $this->jsons[$id] = $j;
        }
      }
    }
    echo json_encode($this->jsons);
  }

}
?>
