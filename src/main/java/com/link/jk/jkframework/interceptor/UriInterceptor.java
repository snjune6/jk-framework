package com.link.jk.jkframework.interceptor;

import com.link.jk.jkframework.dto.MenuDto;
import com.link.jk.jkframework.dto.SiteDto;
import com.link.jk.jkframework.service.MenuService;
import com.link.jk.jkframework.service.SiteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;
import java.util.List;

public class UriInterceptor implements HandlerInterceptor {

    @Autowired
    private SiteService siteService;

    @Autowired
    private MenuService menuService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        System.out.println("=========================");
        System.out.println("UriInterceptor::preHandle");
        System.out.println("UriInterceptor");
        System.out.printf("preHandle URI : %s%n", request.getServletPath());
        System.out.println("=========================");

        request.setCharacterEncoding("UTF-8");

        Enumeration<String> en = request.getParameterNames();
        while (en.hasMoreElements()) {
            Object keyObj = en.nextElement();
            if ((keyObj instanceof String)) {
                String key = (String)keyObj;
                if (request.getParameterValues(key).length != 1) {
                    for (String value : request.getParameterValues(key)) {
                        System.out.printf("########### parameter key = '%s',Array value = '%s'%n", key, value);
                    }
                } else {
                    System.out.printf("########### parameter key = '%s', value = '%s'%n", key, request.getParameter(key));
                }
            } else {
                System.out.println("parameter key is Object");
            }
        }




        SiteDto siteDto = siteService.selectSiteList();

        // 사이트 정보 입력
        if(siteDto!=null) {
            request.setAttribute("siteName", siteDto.getSiteName());
            request.setAttribute("siteState", siteDto.getSiteState());
            request.setAttribute("siteDomain", siteDto.getSiteDomain());
            request.setAttribute("siteCdn", siteDto.getSiteCdn());
            request.setAttribute("siteJkNm", siteDto.getSiteJkNm());
            request.setAttribute("siteJk", siteDto.getSiteJk());
            request.setAttribute("siteAdminNm", siteDto.getSiteAdminNm());
            request.setAttribute("siteAdmin", siteDto.getSiteAdmin());
            request.setAttribute("siteMyPageNm", siteDto.getSiteMyPageNm());
            request.setAttribute("siteMyPage", siteDto.getSiteMyPage());

        }

        // 메인메뉴 정보 입력
        List<MenuDto> menuFullList;
        menuFullList = menuService.selectFullMenuList();
        request.setAttribute("menuFullList", menuFullList);

        return HandlerInterceptor.super.preHandle(request, response, handler);
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("UriInterceptor::postHandle");
        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("UriInterceptor::afterCompletion");
        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }
}
