package net.wanho.configuration;


import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@Component
public class StaticResourceConfiguration extends WebMvcConfigurerAdapter {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {


        registry.addResourceHandler("/js/**").addResourceLocations("WEB-INF/jsp/js/");
        registry.addResourceHandler("/images/**").addResourceLocations("WEB-INF/jsp/images/");
        registry.addResourceHandler("/css/**").addResourceLocations("WEB-INF/jsp/css/");
        registry.addResourceHandler("/files/**").addResourceLocations("files/");
        registry.addResourceHandler("/ztreestatic/**").addResourceLocations("/WEB-INF/jsp/ztreestatic/");

        super.addResourceHandlers(registry);
    }
}
