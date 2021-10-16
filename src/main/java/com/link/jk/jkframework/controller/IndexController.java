package com.link.jk.jkframework.controller;

import com.link.jk.jkframework.dto.MenuDto;
import com.link.jk.jkframework.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.HashMap;

@Controller
@RequestMapping("/index")
public class IndexController {

    @Autowired
    private MenuService menuService;

    @GetMapping("/index")
    public String test(Model model) {

        List<MenuDto> menuFullList = new ArrayList<MenuDto>();
        menuFullList = menuService.selectFullMenuList();
        model.addAttribute("menuFullList", menuFullList);
        System.out.println(menuFullList);
        return "index";
    }

    @GetMapping("insertMenu")
    public void insertMenu() {

        if(false) {

            List list = new ArrayList();
            int cnt1 = 0;

            MenuDto menuDto = new MenuDto();
            menuDto.setMenuId("product");
            menuDto.setMenuNm("솔루션");
            menuDto.setMenuLink("/product/list.do?category_id=1");
            menuDto.setMenuAlt("문제해결 및 운영개선을 위한 기술기반의 제반 제품, 서비스");
            menuDto.setMenuSort(1);
            menuDto.setMenuStep(1);

            cnt1 = menuService.insertMenu2(menuDto);

            System.out.println(cnt1);

            list.add(menuDto);

            menuDto = new MenuDto();
            menuDto.setMenuId("product2");
            menuDto.setMenuNm("기자재");
            menuDto.setMenuLink("/product2/list.do?category_id=2");
            menuDto.setMenuAlt("플랜트건설 및 운영에 필요한 각종 설비 및 자재");
            menuDto.setMenuSort(2);
            menuDto.setMenuStep(1);

            cnt1 = menuService.insertMenu2(menuDto);

            System.out.println(cnt1);

            list.add(menuDto);

            menuDto = new MenuDto();
            menuDto.setMenuId("material");
            menuDto.setMenuNm("긴급자재");
            menuDto.setMenuLink("/material/list.do?category_id=3");
            menuDto.setMenuAlt("긴급한 조달을 필요로하는 기자재 정보");
            menuDto.setMenuSort(3);
            menuDto.setMenuStep(1);

            cnt1 = menuService.insertMenu2(menuDto);

            System.out.println(cnt1);

            list.add(menuDto);

            menuDto = new MenuDto();
            menuDto.setMenuId("material2");
            menuDto.setMenuNm("공유자재");
            menuDto.setMenuLink("/material2/list2.do?category_id=4");
            menuDto.setMenuAlt("타사와 공유 또는 처분이 가능한 보유자재 정보");
            menuDto.setMenuSort(4);
            menuDto.setMenuStep(1);

            cnt1 = menuService.insertMenu2(menuDto);

            System.out.println(cnt1);

            list.add(menuDto);

            menuDto = new MenuDto();
            menuDto.setMenuId("product3");
            menuDto.setMenuNm("EPC·유지보수");
            menuDto.setMenuLink("/product3/list.do?category_id=5");
            menuDto.setMenuAlt("플랜트 EPC 및 유지보수작업에 대한 전문업체 정보");
            menuDto.setMenuSort(5);
            menuDto.setMenuStep(1);

            cnt1 = menuService.insertMenu2(menuDto);

            System.out.println(cnt1);

            list.add(menuDto);

            menuDto = new MenuDto();
            menuDto.setMenuId("materialf");
            menuDto.setMenuNm("리크루팅");
            menuDto.setMenuLink("/materialf/list3.do?category_id=3");
            menuDto.setMenuAlt("플랜트 기술인력 소요정보");
            menuDto.setMenuSort(6);
            menuDto.setMenuStep(1);

            list.add(menuDto);

            menuDto = new MenuDto();
            menuDto.setMenuId("view");
            menuDto.setMenuNm("비즈니스제안");
            menuDto.setMenuLink("/qna/viewAdd.do");
            menuDto.setMenuAlt("아이디어, 사업개발, 마케팅 등 비즈니스영역 전반에 대한 제안");
            menuDto.setMenuSort(7);
            menuDto.setMenuStep(1);

            cnt1 = menuService.insertMenu2(menuDto);

            System.out.println(cnt1);

            list.add(menuDto);
        }

    }

}
