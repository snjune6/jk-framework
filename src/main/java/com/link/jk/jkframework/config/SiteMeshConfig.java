package com.link.jk.jkframework.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class SiteMeshConfig extends ConfigurableSiteMeshFilter {

    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder.addDecoratorPath("/", "/WEB-INF/decorator/defaultLayout.jsp")
                .addDecoratorPath("/kcms/*", "/WEB-INF/decorator/kcmsLayout.jsp")
                .addExcludedPath(".json")

                .setMimeTypes("text/html");
    }
}
