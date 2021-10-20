package com.link.jk.jkframework.config;

import com.link.jk.jkframework.interceptor.KcmsInterceptor;
import com.link.jk.jkframework.interceptor.UriInterceptor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Value(value = "${spring.webservice.intro}")
    private String introPage;

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addRedirectViewController("/", introPage);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/");
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new UriInterceptor())
                .addPathPatterns("/**")
                .excludePathPatterns("/kcms/**", "/auth/**", "/static/**", "/error");

        registry.addInterceptor(new KcmsInterceptor())
                .addPathPatterns("/kcms/**")
                .excludePathPatterns("/error");
    }
}
