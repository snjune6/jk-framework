package com.link.jk.jkframework.controller;

import com.link.jk.jkframework.dto.CategoryDto;
import com.link.jk.jkframework.dto.MenuDto;
import com.link.jk.jkframework.dto.SiteDto;
import com.link.jk.jkframework.service.CategoryService;
import com.link.jk.jkframework.service.MenuService;
import com.link.jk.jkframework.service.SiteService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
@Controller
public class IndexController {

    private MenuService menuService;
    private CategoryService categoryService;

    @GetMapping(value = "/")
    public String test(Model model, HttpServletRequest request, HttpServletResponse response) {

        // 메인메뉴
        List<MenuDto> menuFullList;
        menuFullList = menuService.selectFullMenuList();
        model.addAttribute("menuFullList", menuFullList);

        // 카페고리
        List<CategoryDto> categoryFullList;
        categoryFullList = categoryService.selectFullCategoryList();
        model.addAttribute("categoryFullList", categoryFullList);

        return "index";
    }
}
