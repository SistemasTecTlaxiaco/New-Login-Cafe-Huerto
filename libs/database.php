<?php
/**
 * Manejo de la base de datos MySQL
 */
class database{
  private $host = "ec2-3-233-7-12.compute-1.amazonaws.com: 5432";
  private $usuario = "uiipaszkawomio";
  private $clave = "8e967f3f62cc7a82ba550d6165aa4b348abfcb624448479471977f5de46684b6"; 
  private $db = "d3u2kusjck5hjp";
  private $puerto = "";
  private $conn;
  
  function __construct()
  {
    $this->conn = mysqli_connect($this->host, 
      $this->usuario, 
      $this->clave,
      $this->db);

    if (mysqli_connect_errno()) {
      printf("Error en la conexión a la base de datos %s",
      mysqli_connect_errno());
      exit();
    } else {
      //print "Conexión exitosa"."<br>";
    }

    if (!mysqli_set_charset($this->conn, "utf8mb4")) {
      printf("Error en la conversión de caracteress %s",
      mysqli_connect_error());
      exit();
    } else {
    }
  } 

  //Query regresa un solo registro en un arreglo asociado
  function query($sql){
    $data = array();
    $r = mysqli_query($this->conn, $sql);
    if($r){
      if(mysqli_num_rows($r)>0){
        $data = mysqli_fetch_assoc($r);
      }
    }
    return $data;
  }

  function querySelect($sql){
    $data = array();
    $r = mysqli_query($this->conn, $sql);
    if($r){
      while($row = mysqli_fetch_assoc($r)){
        array_push($data, $row);
      }
    }
    return $data;
  }

  //Query regresa un valor booleano
  function queryNoSelect($sql){
    $r = mysqli_query($this->conn, $sql);
    return $r;
  }

  public function cerrar()
  {
    mysqli_close($this->conn);
  }
}
?>