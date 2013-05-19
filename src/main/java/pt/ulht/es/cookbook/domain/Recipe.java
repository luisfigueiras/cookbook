package pt.ulht.es.cookbook.domain;

import java.util.Comparator;

import org.joda.time.DateTime;


public class Recipe extends Recipe_Base{
 public Recipe() {
  setCookbookManager(CookbookManager.getInstance());
 }

  public Recipe(String titulo,String problema,String solucao,String autor,DateTime d) {
   setCookbookManager(CookbookManager.getInstance());
  
   setTitulo(titulo);
   setProblema(problema);
   setSolucao(solucao);
   setAutor(autor);
   setTimestamp(new DateTime());
  }

  public void addTag(String tag) {
	  addTag(new Tag(tag));
	}  
  public static class CreationComparator implements Comparator<Recipe> {

   public int compare(Recipe o1, Recipe o2) {
    return o1.getTitulo().compareTo(o2.getTitulo());
   }
  }
  
  public void delete() {
	  for (Tag tag : getTagSet()) {
			tag.delete();
		}
	    setCookbookManager(null);
	      super.deleteDomainObject();
	     }
  
}