package net.wanho.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import redis.clients.jedis.JedisPool;

@Configuration
public class RedisConfig {




    @Bean
    public JedisPool jedisPool(){
        JedisPool jedisPool=new JedisPool("129.211.121.171",6379);
        return jedisPool;
    }


}