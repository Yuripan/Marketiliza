<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Marketiliza</title>
	<link rel="icon" href="assets/img/MARKETILIZA%20LOGO2.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootswatch/4.1.3/flatly/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Righteous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>

<body>
    <nav class="navbar navbar-light navbar-expand-md d-md-flex justify-content-md-center align-items-md-center" style="background-color: #222222;">
        <div class="container-fluid"><a class="navbar-brand" href="home.jsp" style="background-image: url(&quot;assets/img/MARKETILIZA%20LOGO.png&quot;);background-repeat: no-repeat;background-size: contain;background-position: center;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
            <button
                class="navbar-toggler" data-toggle="collapse" data-target="#navcol-2"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse d-lg-flex" id="navcol-2">
                    <ul class="nav navbar-nav justify-content-lg-start">
                        <li class="nav-item" role="presentation" style="font-size: 16px;margin-left: 20px;"><a class="nav-link active" href="home.jsp" style="font-family: Roboto, sans-serif;color: rgba(255,255,255,0.9);font-weight: bold;">HOME</a></li>
                        <li class="nav-item dropdown d-lg-flex"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#" style="margin-left: 20px;font-size: 16px;font-family: Roboto, sans-serif;color: rgba(255,255,255,0.5);font-weight: bold;">ANÚNCIOS</a>
                            <div
                                class="dropdown-menu" role="menu" style="background-color: #222222;font-family: Roboto, sans-serif;font-weight: bold;"><a class="dropdown-item" role="presentation" href="anuncios.jsp" style="font-weight: bold;">Comes e bebe</a><a class="dropdown-item" role="presentation" href="anuncios.jsp" style="font-weight: bold;">Jogos</a><a class="dropdown-item"
                                    role="presentation" href="anuncios.jsp" style="font-weight: bold;">Serviços</a><a class="dropdown-item" role="presentation" href="anuncios.jsp" style="font-weight: bold;">Eletrônicos</a><a class="dropdown-item" role="presentation"
                                    href="anuncios.jsp" style="font-weight: bold;">Moda e beleza</a></div>
                </li>
                <li class="nav-item" role="presentation" style="font-size: 16px;margin-left: 20px;"><a class="nav-link active" href="formulario.jsp" style="font-family: Roboto, sans-serif;color: rgba(255,255,255,0.9);font-weight: bold;">ANUNCIE AQUI</a></li>
                <li class="nav-item" role="presentation" style="font-size: 16px;margin-left: 20px;letter-spacing: 0.5px;"><a class="nav-link active" href="acesso.jsp" style="font-family: Roboto, sans-serif;color: rgba(255,255,255,0.9);font-weight: bold;">SEU PERFIL</a></li>
                <li class="nav-item" role="presentation" style="font-size: 16px;margin-left: 20px;letter-spacing: 0.5px;"><a class="nav-link active" href="quem_somos.jsp" style="font-family: Roboto, sans-serif;color: rgba(255,255,255,0.9);font-weight: bold;">QUEM SOMOS</a></li>
                </ul>
                <form class="form-inline d-lg-flex ml-auto align-items-lg-start">
                    <div class="form-group">
                        <!-- Start: search-field --><input class="form-control form-control-sm d-lg-flex justify-content-lg-center" type="search" placeholder="Buscar">
                        <!-- End: search-field --><label for="search-field" style="margin-left: 10px;"><i class="fa fa-search" style="font-size: 25px;color: rgb(255,255,255);"></i></label></div>
                </form>
        </div>
        </div>
    </nav>
    <div style="background-position: center;background-size: contain;background-repeat: no-repeat;height: 400px;background-image: url(&quot;assets/img/guia-pratico-das-tendencias-de-marketing-digital-e-performance-parte-dois-6.png&quot;);background-color: #384161;"></div>
    
    <!-- Start: Login Form Clean -->
    <div class="border-primary login-clean" style="background-color: #f8f8f3;">
        <form class="border rounded-0" action="/login" method="post">
            <h3 style="font-family: ABeeZee, sans-serif;font-weight: bold;font-size: 24px;padding-bottom: 24px;padding-left: 85px;">Login</h3>
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="E-mail"></div>
            <div class="form-group" style="padding-bottom: 12px;"><input class="form-control" type="password" name="password" placeholder="Senha"></div>
            <div class="form-group"><a class="btn btn-light btn-block border rounded border-dark" role="button" href="perfil.jsp" style="font-size: 17px;">Log In</a></div><a href="#" class="forgot">Esqueceu seu e-mail ou senha?</a></form>
    </div>
    <!-- End: Login Form Clean -->
    
    <!-- Start: Registration Form with Photo -->
    <div class="register-photo" style="background-color: #f8f8f3;padding-top: 20px;">
        <!-- Start: Form Container -->
        <div class="border rounded-0 form-container">
            <!-- Start: Image -->
            <div class="image-holder" style="background-image: url(&quot;assets/img/problemas-de-marketing.png&quot;);background-repeat: no-repeat;background-size: cover;background-position: center;"></div>
            <!-- End: Image -->
            <form action="/realizarCadastro" method="post">
                <h2 class="text-center" style="font-family: ABeeZee, sans-serif;font-weight: bold;font-size: 24px;"><strong>Crie uma conta.</strong></h2>
                <div class="form-group"><input class="form-control" type="email" name="email" placeholder="E-mail"></div>
                <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Senha"></div>
                <div class="form-group"><input class="form-control" type="password" name="password-repeat" placeholder="Repita a senha"></div>
                <div class="form-group"><input class="form-control" type="text" name="enterprise" placeholder="Empresa"></div>
                <div class="form-group">
                    <div class="form-check"><label class="form-check-label"><input class="form-check-input" type="checkbox">Eu li e aceito os termos de uso.</label></div>
                </div>
                <div class="form-group"><a class="btn btn-light btn-block border rounded border-dark" role="button" href="perfil.jsp" style="font-weight: bold;font-size: 17px;">Cadastrar</a></div>
            </form>
        </div>
        <!-- End: Form Container -->
    </div>
    <!-- End: Registration Form with Photo -->
    
    <footer style="background-color: #222222;color: rgb(255,255,255);margin-top: \;">
        <div class="container" style="padding-top: 15px;padding-bottom: 10px;">
            <div class="row">
                <div class="col-7 col-sm-8 col-md-6 d-flex d-lg-flex justify-content-start align-items-center justify-content-lg-start align-items-lg-center">
                    <h6 class="text-left" style="color: rgba(255,255,255,0.6);font-family: Roboto, sans-serif;">Marketiliza © 2019. Todos os direitos reservados.<br></h6>
                </div>
                <div class="col-5 col-sm-4 col-md-6 col-lg-2 offset-lg-4 d-flex d-lg-flex justify-content-end align-items-center justify-content-lg-end align-items-lg-center"><a class="text-right" href="quem_somos.jsp" style="color: rgba(255,255,255,0.9);font-family: Roboto, sans-serif;">Quem somos</a></div>
            </div>
        </div>
    </footer>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    <script src="assets/js/script.min.js"></script>
</body>

</html>