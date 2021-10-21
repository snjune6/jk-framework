package com.link.jk.jkframework.controller;

import com.link.jk.jkframework.dto.MenuDto;
import com.link.jk.jkframework.service.MenuService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@AllArgsConstructor
@Controller
@RequestMapping(value = "/auth")
public class UserController {

	private MenuService menuService;

	@GetMapping(value = "/login")
	public String loginForm(Model model) {

		// 메인메뉴
		List<MenuDto> menuFullList;
		menuFullList = menuService.selectFullMenuList();
		model.addAttribute("menuFullList", menuFullList);

		return "auth/login";
	}


}
