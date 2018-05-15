package com.philspelman.springrelationshipsninjaso2m.controllers;

import com.philspelman.springrelationshipsninjaso2m.models.Dojo;
import com.philspelman.springrelationshipsninjaso2m.models.Ninja;
import com.philspelman.springrelationshipsninjaso2m.services.DojoService;
import com.philspelman.springrelationshipsninjaso2m.services.NinjaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/ninjas/")
public class NinjaController {
    //todo: hookup the ninja service
    private NinjaService ninjaService;
    private DojoService dojoService;

    public NinjaController(NinjaService ninjaService, DojoService dojoService) {
        this.dojoService = dojoService;
        this.ninjaService = ninjaService;
    }

    public static void printBindingResultErrors(BindingResult bindingResult) {
        for (Object object : bindingResult.getAllErrors()) {
            if(object instanceof FieldError) {
                FieldError fieldError = (FieldError) object;

                System.out.println(fieldError.getCode() + " , " + fieldError.toString());
            }

            if(object instanceof ObjectError) {
                ObjectError objectError = (ObjectError) object;

                System.out.println(objectError.getCode());
            }
        }
    }

//    @RequestMapping("/")
//    public String indexRoute(Model model) {
//        return "index";
//    }
//


    @RequestMapping("/new")
//    public String newNinja(Model model) {
//    public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model, Dojo dojo) {
    public String newNinja(@ModelAttribute("ninja") Ninja ninja,
                           @ModelAttribute("dojo") Dojo dojo,
                           Model model) {

        List<Dojo> allDojos = dojoService.allDojos();
        model.addAttribute("dojos", allDojos);

//        model.addAttribute("ninja", new Ninja());
//        model.addAttribute("dojoList", this.dojoService.allDojos());

        //get the list of dojos
//        ninja.setDojo();
//        List<Dojo> dojoList = this.dojoService.allDojos();
//        model.addAttribute("dojoList", dojoList);
//        model.addAttribute("dojo", dojo);

//        Dojo sampleDojo = dojoList.get(0);
//        dojo = dojoList.get(1);
//        System.out.println("sampledojo: " + sampleDojo.toString());
//        model.addAttribute("dojo", sampleDojo);

        return "ninjaFormNew";
    }




    @PostMapping("/new")
    public String newNinja(@Valid @ModelAttribute("ninja") Ninja ninja,
                           BindingResult bindingResult,
                           Model model) {

        System.out.println("received new ninja POST request");
        //print everything that was received
        System.out.println("Ninja stuff");
        System.out.printf("Ninja info: %s%n", ninja.toString());

        System.out.println("dojo: " + ninja.getDojo());

        if (bindingResult.hasErrors()) {

            System.out.println("There are errors!");
            printBindingResultErrors(bindingResult);

            List<Dojo> dojos = this.dojoService.allDojos();

            model.addAttribute("dojoList", dojos);
            return "ninjaFormNew";
        } else {
            System.out.println("no errors!");
            this.ninjaService.addNinja(ninja);
            //todo: create the ninja service
//            this.ninjaService.addNinja(ninja);
            return "redirect:/";
        }

    }

}
