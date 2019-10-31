package br.com.marketiliza.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.marketiliza.dao.UsuarioDAO;
import br.com.marketiliza.modelo.Usuario;

@WebServlet(name = "RealizarCadastroServlet", urlPatterns = { "/realizarCadastro" })
public class RealizarCadastroServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String empresa = req.getParameter("emprasa");
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");
		
		Usuario novoUsuario = new Usuario();
		novoUsuario.setEmpresa(empresa);
		novoUsuario.setEmail(email);
		novoUsuario.setSenha(senha);
		
		
		if (new UsuarioDAO().cadastrar(novoUsuario)) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/principal.jsp");          
			dispatcher.forward(req, resp);
		} else {
			req.setAttribute("mensagem", "Não foi possível cadastrar o usuário!");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/inicial.jsp");          
			dispatcher.forward(req, resp);
		}
		
		
	}
	
}
