package com.link.jk.jkframework.controller;

import com.link.jk.jkframework.dto.UserDetailDto;
import com.link.jk.jkframework.service.AuthService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@AllArgsConstructor
@Controller
@RequestMapping(value = "/auth")
public class AuthController {

	private AuthService authService;

	@GetMapping(value = "/login")
	public String loginForm(HttpServletRequest request) {

		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("prevPage", referer);

		return "auth/login";
	}

	@GetMapping(value = "/signup")
	public String signupForm() {

		return "auth/signup";
	}

	@PostMapping(value = "/signup")
	public String signup(UserDetailDto userDetailDto) {

		authService.joinUser(userDetailDto);

		return null;
	}

}
