package org.mfm.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.directwebremoting.spring.DwrController;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;
import org.springframework.web.servlet.handler.SimpleUrlHandlerMapping;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "org.mfm.*")
@EnableTransactionManagement
@PropertySource({ "classpath:jdbc.properties" })
@EnableWebMvc
public class TravelConfig extends WebMvcConfigurerAdapter {
    @Autowired
    private Environment env;

    @Bean
    public MailSender mailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.sina.com");
        mailSender.setProtocol("smtp");
        mailSender.setPassword("mfm9517530");
        mailSender.setUsername("m148632015");
        Properties props = new Properties();
        props.put("mail.smtp.auth", true);
        mailSender.setJavaMailProperties(props);
        return mailSender;
    }

    /**
     * 正常的情况如果要发送邮件，需要异步发送，否则会把大量的时间浪费发送邮件上面
     * 此时可能会造成用户重复刷新，使用Spring的ThreadPoolTaskExecutor可以方便实现多线程的程序
     *
     * @return
     */
    @Bean
    public ThreadPoolTaskExecutor taskExecutor() {
        ThreadPoolTaskExecutor taskExecutor = new ThreadPoolTaskExecutor();
        taskExecutor.setCorePoolSize(5);
        taskExecutor.setMaxPoolSize(10);
        taskExecutor.setQueueCapacity(25);
        return taskExecutor;
    }

    @Bean
    public String ftlPath() {
        return "/ftl";
    }

    @Bean
    public String outPath() {
        return "/html";
    }

    @Bean
    public DataSource dataSource() {
        BasicDataSource dataSource = new BasicDataSource();
        dataSource
            .setDriverClassName(this.env.getProperty("jdbc.driverClassName"));
        dataSource.setUrl(this.env.getProperty("jdbc.url"));
        dataSource.setUsername(this.env.getProperty("jdbc.username"));
        dataSource.setPassword(this.env.getProperty("jdbc.password"));
        dataSource.setDefaultAutoCommit(false);
        return dataSource;
    }

    @Bean
    public LocalSessionFactoryBean sessionFactory(DataSource dataSource) {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource);
        sessionFactory
            .setPackagesToScan(new String[] { "org.mfm.travel.model" });
        Properties hibernateProperties = new Properties();
        hibernateProperties.setProperty("hibernate.dialect",
            "org.hibernate.dialect.MySQL5InnoDBDialect");
        hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
        hibernateProperties.setProperty("hibernate.show_sql", "true");
        sessionFactory.setHibernateProperties(hibernateProperties);
        return sessionFactory;
    }

    @Bean
    public PlatformTransactionManager txManager(SessionFactory sessionFactory) {
        HibernateTransactionManager txManager = new HibernateTransactionManager();
        txManager.setSessionFactory(sessionFactory);
        return txManager;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**")
            .addResourceLocations("/resources/");
    }

    @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Bean
    public InternalResourceViewResolver jspViewResolver() {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setPrefix("/WEB-INF/jsp/");
        bean.setSuffix(".jsp");
        return bean;
    }

    @Bean
    public SimpleMappingExceptionResolver exceptionResolver() {
        SimpleMappingExceptionResolver exceptionResolver = new SimpleMappingExceptionResolver();
        Properties exceptionMappings = new Properties();
        exceptionMappings.put("java.lang.Exception", "error");
        exceptionMappings.put("java.lang.RuntimeException", "error");
        exceptionMappings.put("org.mfm.travel.model.TravelException", "error");
        exceptionResolver.setExceptionMappings(exceptionMappings);
        return exceptionResolver;
    }

    @Bean(name = "multipartResolver")
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxUploadSize(500000000);
        return multipartResolver;
    }

    @Bean
    public DwrController dwrController() {
        DwrController dwrController = new DwrController();
        dwrController.setDebug(true);
        return dwrController;
    }

    @Bean
    public SimpleUrlHandlerMapping simpleUrlHandlerMapping() {
        SimpleUrlHandlerMapping simpleUrlHandlerMapping = new SimpleUrlHandlerMapping();
        simpleUrlHandlerMapping.setAlwaysUseFullPath(true);
        Properties mappings = new Properties();
        mappings.put("/dwr/**/*", "dwrController");
        simpleUrlHandlerMapping.setMappings(mappings);
        return simpleUrlHandlerMapping;
    }
//
//    @Bean
//    public DwrHandlerMapping dwrHandlerMapping() {
//        Map<String, String> urlMap = new HashMap<String, String>();
//        urlMap.put("/dwr/**/*", "dwrController");
//
//        DwrHandlerMapping dwrHandlerMapping = new DwrHandlerMapping();
//        dwrHandlerMapping.setAlwaysUseFullPath(true);
//        dwrHandlerMapping.setUrlMap(urlMap);
//        return dwrHandlerMapping;
//    }
}
