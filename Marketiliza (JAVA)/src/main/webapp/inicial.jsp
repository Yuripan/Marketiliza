<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <title>Hello App Engine</title>
  </head>

  <body>
    <h1>Meu projeto!</h1>

	<p style="color: red;">${mensagem}</p>
	
	<br>

    <form action="/realizarCadastro" method="post">
    	<input type="text" name="nome" placeholder="Digite o nome">
    	<input type="text" name="email" placeholder="Digite o email">
    	<input type="password" name="senha" placeholder="Digite a senha">
    	<input type="submit" value="Cadastrar">
    </form>
  </body>
</html>