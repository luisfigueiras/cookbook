package pt.ulht.es.cookbook.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.joda.time.DateTime;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pt.ist.fenixframework.pstm.AbstractDomainObject;
import pt.ulht.es.cookbook.domain.CookbookManager;
import pt.ulht.es.cookbook.domain.Recipe;


@Controller
public class RecipeController {
  
	
	
  

    @RequestMapping(method=RequestMethod.GET, value="/recipes/create")
    public String showRecipeCreationForm() {
		return "createRecipe";   
    }

    @RequestMapping(method=RequestMethod.GET, value="/recipes")
    public String ListRecipes(Model model) {
         List<Recipe> SortedList = new ArrayList<Recipe>(CookbookManager.getInstance().getRecipeSet());
	     Collections.sort( SortedList, new Recipe.CreationComparator());
	     model.addAttribute("recipes",SortedList);
         return "listRecipes";
  
    }

	@RequestMapping(method = RequestMethod.POST, value = "/recipes")
	public String createRecipe(Model model,@RequestParam Map<String, String> params) {
		String Titulo=params.get("Titulo");
    	String Problema=params.get("Problema");
    	String Solucao=params.get("Solucao");
    	String Autor=params.get("Autor");
    	DateTime d=new DateTime();
    	
    	
    	if(!Titulo.isEmpty() && !Problema.isEmpty() && !Solucao.isEmpty()&& !Autor.isEmpty()){
    		Recipe recipe = new Recipe(Titulo,Problema,Solucao,Autor,d);
    		model.addAttribute("recipes", CookbookManager.getInstance().getRecipeSet());
    		return "redirect:/recipes/" + recipe.getOid();
    	}else{
    		model.addAttribute("Titulo",Titulo);
    		model.addAttribute("Problema",Problema);
    		model.addAttribute("Solucao",Solucao);
    		model.addAttribute("Autor",Autor);
    		
    		if(Titulo.isEmpty()){
    			model.addAttribute("erroTitulo","*Este campo é obrigatorio");
    	    }if(Problema.isEmpty()){
    	    	model.addAttribute("erroProblema","*Este campo é obrigatorio");
    	    }if(Solucao.isEmpty()){
    	    	model.addAttribute("erroSolucao","*Este campo é obrigatorio");
    	    }
	    	if(Autor.isEmpty()){
		    	model.addAttribute("erroAutor","*Este campo é obrigatorio");
		    }
    	}
		return "createRecipe";
	}
    @RequestMapping(method=RequestMethod.GET, value="/recipes/{id}")
    public String showRecipe(Model model,@PathVariable("id") String id) {
    	Recipe recipe = AbstractDomainObject.fromExternalId(id);

    	model.addAttribute("recipe",recipe);
    	if(recipe!=null){
    	   return "detailedRecipe";
    	}else{
    		return "recipeNotFound";
    	}
       
    }

    
    
}