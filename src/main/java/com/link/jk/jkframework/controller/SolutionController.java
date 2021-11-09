package com.link.jk.jkframework.controller;

import com.link.jk.jkframework.service.CategoryService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

@AllArgsConstructor
@Controller
@RequestMapping(value = "/solution")
public class SolutionController {

    private CategoryService categoryService;

    @GetMapping("")
    public String solutionIndex(HttpServletRequest request, HttpServletResponse response, Model model) {


        String menuName = "equipment";
        String menuCode = "2";
        String cate2 = request.getParameter("cate2");
        String cate3 = request.getParameter("cate3");
        String tag = request.getParameter("tag");

        if(cate2 == null) {
            cate2 = "36";
        }

        if(cate3 == null) {
            HashMap selectThirdIdMap = new HashMap();
            selectThirdIdMap.put("cate2", cate2);
            cate3 = categoryService.selectThirdId(selectThirdIdMap);
        }

        System.out.println("cate3 : " + cate3);

        model.addAttribute("cate2", cate2);
        model.addAttribute("cate3", cate3);



        HashMap cate2Map = new HashMap();
        cate2Map.put("menuCode", menuCode);
        List cate2List = categoryService.selectSecondMenu(cate2Map);
        model.addAttribute("cate2List", cate2List);

        HashMap cate3Map = new HashMap();
        cate3Map.put("menuCode", cate2);
        List cate3List = categoryService.selectThirdMenu(cate3Map);
        model.addAttribute("cate3List", cate3List);

        HashMap itemMap = new HashMap();
        itemMap.put("tag", tag);
        itemMap.put("cate2", cate2);
        itemMap.put("cate3", cate3);
        List itemList = categoryService.selectTagList(itemMap);
        model.addAttribute("itemList", itemList);


        return "solution/index";
    }

}
