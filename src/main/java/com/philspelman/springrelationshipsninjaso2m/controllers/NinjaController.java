package com.philspelman.springrelationshipsninjaso2m.controllers;

import com.philspelman.springrelationshipsninjaso2m.models.Ninja;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
public class NinjaController {
    //todo: hookup the ninja service
    //todo: CRUD routes

    @RequestMapping("/")
    public String indexRoute(Model model) {
        return "index";
    }

    @RequestMapping("/ninjas/new")
    public String newNinja(@ModelAttribute("ninja") Ninja ninja) {

        return "ninjaFormNew";
    }

    @PostMapping("/ninjas/new")
    public String newNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "ninjaFormNew";
        } else {
            //todo: create the ninja service
//            this.ninjaService.addNinja(ninja);
        }

    }

}
