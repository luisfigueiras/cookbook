package pt.ulht.es.cookbook.controller;


import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pt.ulht.es.cookbook.domain.CookbookManager;
import pt.ulht.es.cookbook.domain.Recipe;


@Controller
public class RecipeController {
  
	
	
  

    @RequestMapping(method=RequestMethod.GET, value="/recipes/create")
    public String showRecipeCreationForm() {
		return "createRecipe";   
    }
    @RequestMapping(method=RequestMethod.GET, value="/recipes/{id}")
    public String showRecipe(Model model, @PathVariable String id) {

    	Recipe recipe=CookbookManager.getRecipe(id);
    	model.addAttribute("recipe",recipe);
    	if(recipe!=null){
    	   return "detailedRecipe";
    	}else{
    		return "recipeNotFound";
    	}
       
    }
       
    @RequestMapping(method=RequestMethod.POST, value="/recipes")
    public String createRecipe(Model model,@RequestParam Map<String,String>params) {
    	String Titulo=params.get("Titulo");
    	String Problema=params.get("Problema");
    	String Solucao=params.get("Solucao");
    	String Autor=params.get("Autor");
    	Date now = new Date();
    	String d=DateFormat.getInstance().format(now);
    	Recipe recipe = new Recipe(Titulo,Problema,Solucao,Autor,d);
    	
    	if(!Titulo.isEmpty() && !Problema.isEmpty() && !Solucao.isEmpty()&& !Autor.isEmpty()){
    	CookbookManager.saveRecipe(recipe);
        	return "redirect:/recipes/"+recipe.getId();
    	}else{
    		model.addAttribute("Titulo",recipe.getTitulo());
    		model.addAttribute("Problema",recipe.getProblema());
    		model.addAttribute("Solucao",recipe.getSolucao());
    		model.addAttribute("Autor",recipe.getAutor());
    		model.addAttribute("Timestamp",recipe.getTimestamp());
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
    
   
    @RequestMapping(method=RequestMethod.GET, value="/recipes")
    public String ListRecipes(Model model) {
     List<Recipe> SortedList = new ArrayList<Recipe>(CookbookManager.getRecipes());
     Collections.sort( SortedList, new Recipe.CreationComparator());
     model.addAttribute("recipes",SortedList);
         return "listRecipes";
  
  }
    
    
}