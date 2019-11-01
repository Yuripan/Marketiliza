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

import br.com.marketiliza.dao.AnuncioDAO;
import br.com.marketiliza.dao.UsuarioDAO;
import br.com.marketiliza.modelo.Anuncio;
import br.com.marketiliza.modelo.Usuario;
import br.com.marketiliza.util.Erro;

@WebServlet(name = "CadastroAnuncioServlet", urlPatterns = { "/cadastroAnuncio" })
public class CadastroAnuncioServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String product = req.getParameter("product");
		String email = req.getParameter("email");
		String tel = req.getParameter("tel");
		
		
		Anuncio novoAnuncio = new Anuncio();
		novoAnuncio.setNome(product);
		novoAnuncio.setEmail(email);
		novoAnuncio.setTelefone(tel);
		
		
		if (new AnuncioDAO().cadastrar(novoAnuncio)) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/formulario_ok.jsp");          
			dispatcher.forward(req, resp);
		} else {
			req.setAttribute("mensagem", "Não foi possível cadastrar o anúncio!");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/formulario.jsp");          
			dispatcher.forward(req, resp);
		}
		
	}
	
}
