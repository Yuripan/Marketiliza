package br.com.marketiliza.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.repackaged.com.google.gson.Gson;

import br.com.marketiliza.dao.AnuncioDAO;
import br.com.marketiliza.modelo.Anuncio;

@WebServlet(name = "ListarAnunciosServlet", urlPatterns = { "/listarAnuncios" })
public class ListarAnunciosServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("application/json;charset=UTF-8");
		
		List<Anuncio> anuncios = new AnuncioDAO().listarAnuncios();
		
		String anunciosJson = new Gson().toJson(anuncios);
		
		resp.getWriter().write(anunciosJson);
		
	}
	
}
