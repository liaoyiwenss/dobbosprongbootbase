package net.wanho.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import redis.clients.jedis.JedisPool;

@Configuration
public class RedisConfig {




    @Bean
    public JedisPool jedisPool(){
        JedisPool jedisPool=new JedisPool("192.168.232.128",6379);
        return jedisPool;
    }


}