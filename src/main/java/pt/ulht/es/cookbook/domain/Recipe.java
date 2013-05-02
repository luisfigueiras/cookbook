package pt.ulht.es.cookbook.domain;

import java.util.Comparator;


public class Recipe {

	private String id;
	private String titulo;
	private String problema;
	private String solucao;
	private String autor;
	private String timestamp ;
	public Recipe(String titulo, String problema, String solucao,String autor,String timestamp) {
		this.titulo=titulo;
		this.problema=problema;
		this.solucao=solucao;
		this.autor=autor;
		this.timestamp=timestamp;
	}

	


	public String getTitulo() {
		return titulo;
	}

	

	public String getProblema() {
		return problema;
	}

	
	
	public String getSolucao() {
		return solucao;
	}
	public String getAutor() {
		return autor;
	}

	public String getTimestamp() {
		return timestamp;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id=id;
	}

	

	 public static class CreationComparator implements Comparator<Recipe> {

		  public int compare(Recipe r1, Recipe r2) {
		   return (r1.titulo.compareTo(r2.titulo));
		  }
		 }
}
