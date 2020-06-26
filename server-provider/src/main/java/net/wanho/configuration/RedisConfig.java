package net.wanho.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import redis.clients.jedis.JedisPool;

@Configuration
public class RedisConfig {




    @Bean
    public JedisPool jedisPool(){
        JedisPool jedisPool=new JedisPool("122.51.203.76",6379);
        return jedisPool;
    }


}