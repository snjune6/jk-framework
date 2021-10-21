package com.link.jk.jkframework.controller.kcms;

import com.link.jk.jkframework.dto.SiteDto;
import com.link.jk.jkframework.service.SiteService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping(value = "/kcms/site")
@Controller
public class SiteController {
	@Autowired
	private SiteService siteService;

	private static final Logger LOGGER = LogManager.getLogger(SiteController.class.getName());

	@GetMapping(value = "/")
	public String siteForm(HttpServletRequest request, HttpServletResponse response) {
		SiteDto siteDto = (SiteDto) request.getAttribute("siteDto");
		System.out.println(siteDto.getSiteName());
		System.out.println(siteDto.getSiteState());
		System.out.println(siteDto.getSiteDomain());

		siteService.selectSiteList();
		return "kcms/site/site";
	}



}
