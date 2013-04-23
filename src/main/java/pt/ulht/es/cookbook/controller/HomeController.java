package pt.ulht.es.cookbook.controller;

import java.text.DateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
  
	@RequestMapping(method=RequestMethod.GET, value="/")
	public String showHome(Model model) {
		Date now = new Date();
     //   Date date = new Date(System.currentTimeMillis());
        DateFormat df = DateFormat.getDateInstance();
        model.addAttribute("currentTime", DateFormat.getInstance().format(now));
      //  model.addAttribute("horas",DateFormat.getTimeInstance().format(now));
		return "home";
	}

}