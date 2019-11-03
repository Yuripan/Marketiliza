package br.com.marketiliza.servlets;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import br.com.marketiliza.dao.AnuncioDAO;
import br.com.marketiliza.modelo.Anuncio;
import br.com.marketiliza.util.Erro;

@WebServlet(name = "AtualizarAnuncioServlet", urlPatterns = { "/atualizarAnuncio" })
public class AtualizarAnuncioServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("application/json;charset=UTF-8");
		
		StringBuffer parametro = new StringBuffer();
		String line = null;
		
		BufferedReader reader = req.getReader();
		while ((line = reader.readLine()) != null)
			parametro.append(line.trim());
		
		
		Anuncio anuncio = new Gson().fromJson(parametro.toString(), Anuncio.class);
		
		boolean atualizacaoRealizada = new AnuncioDAO().atualizar(anuncio);
		
		if (atualizacaoRealizada) {
			String anuncioJson = new Gson().toJson(anuncio);
			resp.getWriter().write(anuncioJson);
		} else {
			Erro erro = new Erro();
			erro.setMensagem("Este anuncio não existe!");
			String erroJson = new Gson().toJson(erro);
			resp.getWriter().write(erroJson);
		}
		
	}
	
}
