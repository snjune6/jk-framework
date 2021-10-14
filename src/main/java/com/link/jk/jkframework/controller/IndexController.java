package com.link.jk.jkframework.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexController {

    @GetMapping("/index")
    public String test(Model model) {
        System.out.println("index");
        model.addAttribute("data", 1);
        return "index";
    }

}
