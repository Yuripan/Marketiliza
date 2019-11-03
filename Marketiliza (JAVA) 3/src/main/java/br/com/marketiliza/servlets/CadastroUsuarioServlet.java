package br.com.marketiliza.servlets;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import br.com.marketiliza.dao.UsuarioDAO;
import br.com.marketiliza.modelo.Usuario;
import br.com.marketiliza.util.Erro;

@WebServlet(name = "CadastroUsuarioServlet", urlPatterns = { "/cadastroUsuario" })
public class CadastroUsuarioServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String empresa = req.getParameter("empresa");
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");
		
		Usuario novoUsuario = new Usuario();
		novoUsuario.setEmpresa(empresa);
		novoUsuario.setEmail(email);
		novoUsuario.setSenha(senha);
		
		
		if (new UsuarioDAO().cadastrar(novoUsuario)) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/perfil.jsp");          
			dispatcher.forward(req, resp);
		} else {
			req.setAttribute("mensagem", "Não foi possível cadastrar o usuário!");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/acesso.jsp");          
			dispatcher.forward(req, resp);
		}
		
	}
	
}
