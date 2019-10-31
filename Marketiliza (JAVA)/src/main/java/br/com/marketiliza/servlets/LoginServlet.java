package br.com.marketiliza.servlets;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import br.com.marketiliza.dao.LoginDAO;
import br.com.marketiliza.modelo.Usuario;
import br.com.marketiliza.util.Erro;

@WebServlet(name = "LoginServlet", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("application/json;charset=UTF-8");
		
		StringBuffer parametro = new StringBuffer();
		String line = null;
		try {
			BufferedReader reader = req.getReader();
			while ((line = reader.readLine()) != null)
				parametro.append(line.trim());
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		
		Usuario usuario = new Gson().fromJson(parametro.toString(), Usuario.class);
		
		if (new LoginDAO().realizarLogin(usuario)) {
			
			String usuarioJson = new Gson().toJson(usuario);
			resp.getWriter().write(usuarioJson);
		} else {
			Erro erro = new Erro();
			erro.setMensagem("Email e senha não conferem.");
			
			String erroJson = new Gson().toJson(erro);
			resp.getWriter().write(erroJson);
		}

	}

}
