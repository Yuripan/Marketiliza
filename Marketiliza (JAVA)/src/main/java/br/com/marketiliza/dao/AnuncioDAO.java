package br.com.marketiliza.dao;

import java.util.ArrayList;
import java.util.List;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;

import br.com.marketiliza.modelo.Anuncio;
import br.com.marketiliza.modelo.Usuario;

public class AnuncioDAO {

	public List<Anuncio> listarAnuncios(){
		List<Anuncio> anuncios = new ArrayList<Anuncio>();
		
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		Query query = new Query("Anuncio");
		Filter filtro = new FilterPredicate("disponivel", FilterOperator.EQUAL, true);
		query.setFilter(filtro);
		
		PreparedQuery pq = datastore.prepare(query);
		
		List<Entity> entidades = pq.asList(FetchOptions.Builder.withLimit(1000));
		for (Entity entidade : entidades) {
			Anuncio anuncio = new Anuncio();
			anuncio.setNome((String)entidade.getProperty("nome"));
			anuncio.setEmail((String)entidade.getProperty("email"));
			anuncio.setTelefone((int)entidade.getProperty("telefone"));
			anuncio.setDisponivel((Boolean)entidade.getProperty("disponivel"));
			anuncio.setComprador((Usuario)entidade.getProperty("comprador"));
			
			
			Usuario comprador = new Usuario();
			comprador.setEmail((String)entidade.getProperty("comprador"));
			anuncio.setComprador(comprador);
			
			anuncios.add(anuncio);
		}
		
		return anuncios;
	}
	
	public boolean cadastrar(Anuncio anuncio) {
		
		if (!this.existeAnuncioCadastrado(anuncio.getNome())) {
			Key chavePrimaria = KeyFactory.createKey("Anuncio", anuncio.getNome()); 
			
			Entity entidadeAnuncio = new Entity(chavePrimaria);
			entidadeAnuncio.setProperty("nome", anuncio.getNome());
			entidadeAnuncio.setProperty("email", anuncio.getEmail());
			entidadeAnuncio.setProperty("telefone", anuncio.getTelefone());
			entidadeAnuncio.setProperty("layout", anuncio.getLayout());
			entidadeAnuncio.setProperty("disponivel", anuncio.isDisponivel());
			entidadeAnuncio.setProperty("comprador", anuncio.getComprador());
			
			DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
			datastore.put(entidadeAnuncio);
			
			return true;
		}
		
		return false;
	}
	
	public boolean atualizar(Anuncio anuncio) {
		
		Entity anuncioDB = this.getAnuncio(anuncio.getNome());
		
		if (anuncioDB != null) {
			
			anuncioDB.setProperty("nome", anuncio.getNome());
			anuncioDB.setProperty("email", anuncio.getEmail());
			anuncioDB.setProperty("telefone", anuncio.getTelefone());
			anuncioDB.setProperty("layout", anuncio.getLayout());
			anuncioDB.setProperty("disponivel", anuncio.isDisponivel());
			anuncioDB.setProperty("comprador", anuncio.getComprador());
			
			
			DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
			datastore.put(anuncioDB);
			
			return true;
		}
		
		return false;
	}
	
	public Entity getAnuncio(String nome) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		Query query = new Query("Anuncio");
		Filter filtro = new FilterPredicate("nome", FilterOperator.EQUAL, nome);
		query.setFilter(filtro);
		
		PreparedQuery pq = datastore.prepare(query);
		
		Entity entidade = pq.asSingleEntity();
		
		if (entidade != null) {
			return entidade;	
		}
		
		return null;
	}
	
	public boolean existeAnuncioCadastrado(String nome) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		Query query = new Query("Anuncio");
		Filter filtro = new FilterPredicate("nome", FilterOperator.EQUAL, nome);
		query.setFilter(filtro);
		
		PreparedQuery pq = datastore.prepare(query);
		if (pq.asSingleEntity() == null) {
			return false;
		}
		
		return true;
	}
	
}