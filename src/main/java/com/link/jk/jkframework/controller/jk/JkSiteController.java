package com.link.jk.jkframework.controller.jk;

import com.link.jk.jkframework.dto.SiteDto;
import com.link.jk.jkframework.service.SiteService;
import lombok.AllArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@AllArgsConstructor
@Controller
@RequestMapping(value = "/jk-framework/site")
public class JkSiteController {

	private SiteService siteService;

	private static final Logger LOGGER = LogManager.getLogger(JkSiteController.class.getName());

	@GetMapping(value = "/")
	public String siteForm(HttpServletRequest request, HttpServletResponse response, Model model) {

		SiteDto siteDto = (SiteDto) request.getAttribute("siteDto");
		model.addAttribute("siteDto", siteDto);

		return "kcms/site/site";
	}


}
