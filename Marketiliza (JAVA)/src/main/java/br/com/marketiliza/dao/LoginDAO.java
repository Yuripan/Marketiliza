package br.com.marketiliza.dao;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.CompositeFilter;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;

import br.com.marketiliza.modelo.Usuario;

public class LoginDAO {

	public boolean realizarLogin(Usuario usuario) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		Query query = new Query("Usuario");
		
		Filter filtroLogin = new FilterPredicate("email", FilterOperator.EQUAL, usuario.getEmail());
		Filter filtroSenha = new FilterPredicate("senha", FilterOperator.EQUAL, usuario.getSenha());
		
		CompositeFilter filtros = CompositeFilterOperator.and(filtroLogin, filtroSenha);
		
		query.setFilter(filtros);
		
		PreparedQuery pq = datastore.prepare(query);
		if (pq.asSingleEntity() != null) {
			return true;
		}
		
		return false;
	}
	
}
