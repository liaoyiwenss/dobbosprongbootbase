package cc.mrbird;

import com.alibaba.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@EnableDubbo
@SpringBootApplication
@MapperScan(basePackages = "net.wanho.mapper")
public class ProviderApplicaiton {
    public static void main(String[] args) {
        SpringApplication.run(ProviderApplicaiton.class, args);
        System.out.println("complete");
    }
}
