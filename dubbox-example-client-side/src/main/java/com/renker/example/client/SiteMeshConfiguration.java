package com.renker.example.client;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class SiteMeshConfiguration extends ConfigurableSiteMeshFilter{
	@Override
	protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
		builder.addDecoratorPath("/manage/*", "/WEB-INF/views/manage/layouts/manage_layout.jsp")
		.addExcludedPath("/manage/login");
	}
}
