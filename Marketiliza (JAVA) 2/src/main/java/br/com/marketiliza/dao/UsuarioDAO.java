package br.com.marketiliza.dao;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;

import br.com.marketiliza.modelo.Usuario;

public class UsuarioDAO {

	public boolean cadastrar(Usuario usuario) {
		
		if (!this.existeUsuario(usuario.getEmail())) {
			Key chavePrimaria = KeyFactory.createKey("Usuario", usuario.getEmail()); 
			
			Entity entidadeUsuario = new Entity(chavePrimaria);
			entidadeUsuario.setProperty("empresa", usuario.getEmpresa());
			entidadeUsuario.setProperty("email", usuario.getEmail());
			entidadeUsuario.setProperty("senha", usuario.getSenha());
			
			DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
			datastore.put(entidadeUsuario);
			
			return true;
		}
		
		return false;
	}
	
	public boolean existeUsuario(String email) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		Query query = new Query("Usuario");
		Filter filtro = new FilterPredicate("email", FilterOperator.EQUAL, email);
		query.setFilter(filtro);
		
		PreparedQuery pq = datastore.prepare(query);
		if (pq.asSingleEntity() == null) {
			return false;
		}
		
		return true;
	}
	
}
