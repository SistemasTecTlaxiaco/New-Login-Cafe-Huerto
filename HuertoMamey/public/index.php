<?php
require_once("../app/inicio.php");
$control = new Control();
if ($_SERVER['REQUEST_METHOD']=="POST") {
      $tipo = $_POST['foto'] ?? "";
      print $tipo;
}
?>