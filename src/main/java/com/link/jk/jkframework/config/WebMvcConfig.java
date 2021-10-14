package com.link.jk.jkframework.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Value("${spring.webservice.intro}")
    private String introPage;

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addRedirectViewController("/", introPage);
    }

}
