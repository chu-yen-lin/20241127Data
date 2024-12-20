package config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/api/**")  // 這樣設定只允許匹配 `/api/**` 路由
                .allowedOrigins("http://localhost:3000")  // 前端應用所在的地址
                .allowedMethods("GET", "POST", "PUT", "DELETE")  // 允許的 HTTP 方法
                .allowCredentials(true);  // 允許攜帶憑證（如 cookies）
    }
    
}
