<?php
  include ("conexion/Conexion.php");
  //include ("Encryptar.php");
  $bd = new Conexion();
  //$enc = new Encryptar();
  session_start();
  if(isset($_SESSION["id_comprador"])){
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

    <title>Usuario sesion</title>

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
      if(isset($_POST["entrar"])){

        $user = $_POST["user"];
        $pass = $_POST["pass"];

        $query = "SELECT * from comprador where usuario='$user' and clave='$pass';";

        $result = $bd->select($query);

        if($result->num_rows > 0){
           //confima datos  
          while($row = $result->fetch_assoc()){
            $id_us = $row["idcomprador"];
            $nombre = $row["usuario"];
            //$paterno = $row["paterno"];

          }

          //datos confirmado incia sesion, la id_usuario y nombre_comp de  la sesion solo hace referencia de datos $id_us y $nombre para q muestra quien inicio sesion.

          $_SESSION["id_usuario"] = $id_us;
          $_SESSION["nomb_comp"] = $nombre;
          header("Location: index.php");
        }else{
          echo "<script>alert('Datos incorrectos');</script>";
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
                           <ul class="nav navbar-nav side-nav">
        
                             <li>
                               <a href="menu.html">
                                <i >
                               <img src="img/signin.png" width="65px">
                               </i> 

                               </a>
                            </li>
                            </ul>
                          
                        </div>
                        <div class="col-md-9">
                          <h3>Comprador sesion</h3>
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

                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me"> Recordarme
                                    </label>
                                </div>

                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" name="entrar" class="btn btn-primary btn-block" value="Entrar">

                            </fieldset>
                        </form>
                    </div>
                    <div class="panel-footer">
                      <p>¿No tienes una cuenta aun? <a href="registro1.php">Registrate aqui</a></p>
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
