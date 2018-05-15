package com.philspelman.springrelationshipsninjaso2m.controllers;


import com.philspelman.springrelationshipsninjaso2m.models.Dojo;
import com.philspelman.springrelationshipsninjaso2m.services.DojoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
public class DojoController {
    //todo: hookup the ninja service
    private final DojoService dojoService;
    public DojoController(DojoService dojoService) {
        this.dojoService = dojoService;
    }
    
    //todo: CRUD routes

    @RequestMapping("/")
    public String indexRoute(Model model) {
        return "index";
    }

    @RequestMapping("/dojos/all")
    public String allDojos(Model model) {

        List<Dojo> dojos = dojoService.allDojos();
        model.addAttribute("dojos", dojos);

        return "allDojos";

    }
    @RequestMapping("/dojos/new")
    public String newDojo(@ModelAttribute("dojo") Dojo dojo) {

        return "dojoFormNew";
    }

    @RequestMapping("/dojos/view/{id}")
    public String newDojo(@PathVariable("id") Long id,
                          Model model,
                          RedirectAttributes redirectAttributes) {

        System.out.println("getting dojo id: " + id);
        Optional<Dojo> dojo = dojoService.getDojoById(id);
        if (dojo.isPresent()) {
            model.addAttribute("dojo", dojo.get());
            return "dojoView";
        } else {
            redirectAttributes.addFlashAttribute("dojo_search_error", "no dojo!");
            return "redirect:/";
        }


    }

    @PostMapping("/dojos/new")
    public String newDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "dojoFormNew";
        } else {
            this.dojoService.addDojo(dojo);
            return "redirect:/";
        }
    }

    @RequestMapping("/dojo/delete/{id}")
    public String deleteDojo(@PathVariable("id") Long id) {
        dojoService.destroyDojo(id);
        return "redirect:/";
    }

}
