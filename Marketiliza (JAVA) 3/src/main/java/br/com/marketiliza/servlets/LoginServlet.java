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

import br.com.marketiliza.dao.LoginDAO;
import br.com.marketiliza.dao.UsuarioDAO;
import br.com.marketiliza.modelo.Usuario;
import br.com.marketiliza.util.Erro;

@WebServlet(name = "LoginServlet", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");
		
		
		if (new UsuarioDAO().existeUsuario(email)) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/perfil.jsp");          
			dispatcher.forward(req, resp);
		} else {
			req.setAttribute("mensagem", "Este email não está associado à nenhuma conta!");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/acesso.jsp");          
			dispatcher.forward(req, resp);
		}
	}

}
