<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Compartiendo | Có...</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../public/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="shortcut icon" href="../public/img/favicon.ico">


  <link rel="stylesheet" href="../public/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../public/css/_all-skins.min.css">

</head>

<body class="hold-transition login-page">
  <div class="login-box">
    <div class="login-logo">
      <a href="#"><b>C</b> - Códigos</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
      <p class="login-box-msg">Ingresa tus datos de Acceso</p>

      <form>
        <div class="form-floating mb-3">
          <input class="form-control" id="usuario" type="email" placeholder="name@example.com" />
          <label for="inputEmail">Usuario</label>
        </div>
        <div class="form-floating mb-3 mb-md-0">
          <input class="form-control" id="contrasena" type="password" placeholder="Create a password" />
          <label for="inputPassword">Contraseña</label>
        </div>
        <div class="form-check mb-3">
          <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
          <label class="form-check-label" for="inputRememberPassword">Guardar contraseña</label>
        </div>
        <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
          <a class="small" href="password.php">Olvidaste tu contraseña?</a>
          <a class="btn btn-primary" onclick="login()">Iniciar Sesion</a>
        </div>
      </form>
      <div class="card-footer text-center py-3">
        <div class="small"><a href="register.php">No tienes una cuenta? Registrarme!</a></div>
      </div>

    </div>
    <!-- /.login-box-body -->
  </div>
  <!-- /.login-box -->

  <!-- jQuery 3 -->
  <script src="../public/js/jquery-3.1.1.min.js"></script>

  <!-- Bootstrap 3.3.7 -->
  <script src="../public/js/bootstrap.min.js"></script>
  <script src="../public/js/bootbox.min.js"></script>
  <script src="scripts/validarlogin.js"></script>

</body>

</html>