package com.link.jk.jkframework.controller;

import com.link.jk.jkframework.dto.MemberDto;
import com.link.jk.jkframework.service.MemberService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@AllArgsConstructor
public class MemberController {

    private MemberService memberService;

    @GetMapping("/index")
    public String homeView() {
        return "auth/home";
    }

    @GetMapping("/login")
    public String loginView() {
        return "auth/login";
    }

    @GetMapping("/signup")
    public String signupView() {
        return "auth/signup";
    }

    @PostMapping("/signup")
    public String signup(MemberDto memberDto) {
        memberService.joinUser(memberDto);
        return "redirect:/login";
    }

    //@PreAuthorize("hasRole('ROLE_MEMBER')")
    @GetMapping("/member/info")
    public String userInfoView() {
        System.out.println("ROLE_MEMBER");
        return "auth/user_info";
    }

    //@PreAuthorize("hasRole('ROLE_ADMIN')")
    @GetMapping("/admin")
    public String adminView() {
        System.out.println("ROLE_ADMIN");
        return "auth/admin";
    }

    @GetMapping("/denied")
    public String deniedView() {
        return "auth/denied";
    }
}
