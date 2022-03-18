package com.link.jk.jkframework.controller;

import com.link.jk.jkframework.service.CategoryService;
import com.link.jk.jkframework.service.MenuService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@AllArgsConstructor
@Controller
public class IndexController {

    private MenuService menuService;
    private CategoryService categoryService;

    @GetMapping(value = "/")
    public String test(Model model, HttpServletRequest request, HttpServletResponse response) {

        return "index";
    }
}
