package org.mfm.config;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.orm.hibernate5.support.OpenSessionInViewFilter;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

public class SpringWebAppInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext container) throws ServletException {
        // Create the 'root' Spring application context
        AnnotationConfigWebApplicationContext rootContext = new AnnotationConfigWebApplicationContext();
        rootContext.register(TravelConfig.class);

        // Create the dispatcher servlet's Spring application context
        AnnotationConfigWebApplicationContext dispatcherServlet = new AnnotationConfigWebApplicationContext();
        dispatcherServlet.register(TravelConfig.class);

        // Register and map the dispatcher servlet
        ServletRegistration.Dynamic dispatcher = container
            .addServlet("dispatcher", new DispatcherServlet(dispatcherServlet));
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/");

        // Manage the lifecycle of the root application context
        container.addListener(new ContextLoaderListener(rootContext));

        //其他filters,servlets配置
        FilterRegistration.Dynamic encodingFilter = container
            .addFilter("characterFilter", CharacterEncodingFilter.class);
        encodingFilter.setInitParameter("encoding", "UTF-8");
        encodingFilter.addMappingForUrlPatterns(null, true, "/*");

        FilterRegistration.Dynamic openSessionInViewerFilter = container
            .addFilter("openSessionInViewerFilter",
                OpenSessionInViewFilter.class);
        openSessionInViewerFilter.addMappingForUrlPatterns(null, true, "/*");

        FilterRegistration.Dynamic systemContextFilter = container.addFilter(
            "systemContextFilter", org.mfm.basic.web.SystemContextFilter.class);
        systemContextFilter.addMappingForUrlPatterns(null, true, "/*");

    }

}
