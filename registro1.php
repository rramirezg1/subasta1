<?php
  include ("conexion/Conexion.php");
  //include ("Encryptar.php");
  $bd = new Conexion();
  //$enc = new Encryptar();
  session_start();
  if(isset($_SESSION["id_usuario"])){
    header("Location: index.php");
  }
?>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registrarme admin</title>

    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon.png">

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

   

</head>

<body>

    <?php
      if(isset($_POST["registro"])){
        //echo "<script>alert('Entrar');</script>";

        $user = $_POST["user"];
        $pass = $_POST["pass"];
        $estatus = $_POST["estatus"];

        $query = "INSERT into comprador(usuario, clave, estado) values('$user','$pass','$estatus');";

        $result = $bd->query($query);

        if($result == true){
          echo "<script>alert('Usuario registrado correctamente ve al login para que inicies sesion');</script>";
          //header("Location: login.php");
        }else{
          echo "<script>alert('No se pudo registrar el usuario');</script>";
        }

      }
    ?>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                      <div class="row">
                        <div class="col-md-3">
                          <img src="img/signup.png" width="65px">
                        </div>
                        <div class="col-md-9">
                          <h3>Registrar comprador</h3>
                        </div>
                      </div>

                    </div>
                    <div class="panel-body">
                        <form role="form" action="" method="post">
                            <fieldset>

                                <div class="form-group">
                                    <input class="form-control" placeholder="Usuario" name="user" type="text" autofocus>
                                </div>

                                <div class="form-group">
                                    <input class="form-control" placeholder="Contraseña" name="pass" type="password">
                                </div>

                                <div class="form-group">
                                    <input class="form-control" placeholder="estado" name="estatus" type="text">
                                </div>

                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" name="registro" class="btn btn-success btn-block" value="Registrarme">

                            </fieldset>
                        </form>
                    </div>
                    <div class="panel-footer">
                      <p>¿Ya estas registrado? <a href="login1.php">Inicia sesion aqui</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>
