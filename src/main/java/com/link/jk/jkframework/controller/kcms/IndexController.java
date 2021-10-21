package com.link.jk.jkframework.controller.kcms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

	@GetMapping(value = {"/kcms", "/kcms/"})
	public String kcmsMain() {
		return "kcms/index";
	}

}
