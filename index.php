<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signin" action="prologin.php" method="post">
      <img class="mb-4" src="images/pay.png" alt="" width="90" height="90">
      <h1 class="h3 mb-3 font-weight-normal">Monggo Masuk</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="text" name="username" class="form-control" placeholder="Username" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" name="password" class="form-control" placeholder="Kunci" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Eling Aku
        </label>
      </div>
      <button class="btn btn-lg btn-success btn-block" type="submit">Masuk</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
    </form>
  </body>
</html>
