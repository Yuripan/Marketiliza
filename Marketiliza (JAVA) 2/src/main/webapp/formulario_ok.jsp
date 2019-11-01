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
    <div class="alert alert-success" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button><span><strong>Arquivos enviados com sucesso!</strong></span></div>
    <!-- Start: Registration Form with Photo -->
    <div class="register-photo" style="color: rgb(0,0,0);">
        <h1 class="text-center">Formulário de anúncio:</h1>
        <!-- Start: Form Container -->
        <div class="form-container" style="margin-top: 100px;">
            <form action="/cadastroAnuncio" method="post">
                <div class="form-group">
                    <h4 style="font-family: Roboto, sans-serif;font-weight: bold;font-size: 20px;">Coloque o nome do seu produto ou serviço*</h4><input class="form-control" type="text" name="product" placeholder="Produto/serviço"></div>
                <div class="form-group" style="margin-top: 30px;">
                    <h4 style="font-family: Roboto, sans-serif;font-weight: bold;font-size: 20px;">Insira o e-mail que seus clientes poderão contactar a empresa*</h4><input class="form-control" type="email" name="email" placeholder="empresa@email.com"></div>
                <div class="form-group" style="margin-top: 30px;">
                    <h4 style="font-family: Roboto, sans-serif;font-weight: bold;font-size: 20px;">Insira o telefone que seus clientes poderão contactar a empresa</h4><input class="form-control" type="tel" name="telephone" placeholder="(__)_____-____"></div>
                <div style="margin-top: 30px;">
                    <h4 style="font-weight: bold;margin-top: 40px;font-family: Roboto, sans-serif;font-size: 18px;">Salve todos os textos da página num documento, então compacte-o junto com as imagens que farão parte dele, dentro de um arquivo ".zip".</h4>
                    <div class="form-group d-lg-flex"><input type="file" accept=".zip" name="zip" required=""></div>
                </div>
                <div class="form-group" style="margin-top: 50px;">
                    <h5 class="text-center" style="font-weight: bold;font-family: Roboto, sans-serif;">Escolha o layout da página :</h5>
                    <div class="col d-flex d-sm-flex d-md-flex d-lg-flex justify-content-center">
                        <div class="form-check form-check-inline"><input class="form-check-input" type="radio" name="layouts" value="option1" id="formCheck-4"><label class="form-check-label" for="formCheck-4"><img class="img-fluid" src="assets/img/layout1.gif" width="200" height="200"></label></div>
                        <div
                            class="form-check form-check-inline"><input class="form-check-input" type="radio" name="layouts" value="option2" id="formCheck-5"><label class="form-check-label" for="formCheck-5"><img class="img-fluid" src="assets/img/layout2.jpg" width="220" height="220"></label></div>
                    <div
                        class="form-check form-check-inline"><input class="form-check-input" type="radio" name="layouts" value="option3" id="formCheck-6"><label class="form-check-label" for="formCheck-6"><img class="img-fluid" src="assets/img/layout3.png" width="200" height="200"></label></div>
        </div>
    </div>
    <div style="margin-top: 50px;">
        <h5 class="text-center" style="font-weight: bold;margin-top: 30px;font-family: Roboto, sans-serif;">Escolha onde anunciar sua página:</h5>
        <div class="d-flex d-sm-flex d-md-flex d-lg-flex justify-content-center justify-content-sm-center justify-content-md-center justify-content-lg-center">
            <div class="form-row">
                <div class="col d-flex d-sm-flex d-md-flex d-lg-flex justify-content-center">
                    <div class="form-check text-center" style="margin-right: 20px;font-family: ABeeZee, sans-serif;"><input class="form-check-input" type="checkbox" id="formCheck-3"><label class="form-check-label" for="formCheck-3" style="font-weight: bold;font-size: 15px;"><i class="fa fa-facebook-square"></i><strong>&nbsp;Facebook</strong><br></label></div>
                    <div
                        class="form-check" style="margin-right: 20px;"><input class="form-check-input" type="checkbox" id="formCheck-2"><label class="form-check-label" for="formCheck-2" style="font-family: ABeeZee, sans-serif;font-weight: bold;font-size: 15px;"><i class="fa fa-instagram"></i>&nbsp;<strong>Instagram</strong><br></label></div>
                <div
                    class="form-check" style="margin-right: 20px;"><input class="form-check-input" type="checkbox" id="formCheck-1"><label class="form-check-label" for="formCheck-1" style="font-family: ABeeZee, sans-serif;font-weight: bold;font-size: 15px;"><i class="fa fa-twitter-square"></i><strong>&nbsp;Twitter</strong><br></label></div>
        </div>
    </div>
    </div>
    </div>
    <div class="form-group" style="margin-top: 25px;">
        <div class="form-check"><label class="form-check-label" style="font-size: 17px;font-family: Roboto, sans-serif;"><input class="form-check-input" type="checkbox">Eu li e aceito os termos de uso.<br></label></div>
    </div>
    <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Enviar</button></div>
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