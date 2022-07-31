package com.meng.nacos_consumer;

import com.meng.nacos_consumer.service.feign.ProviderFeign;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;
import springfox.documentation.oas.annotations.EnableOpenApi;

@SpringBootApplication
//开启服务发现
@EnableDiscoveryClient
@EnableFeignClients(basePackageClasses = ProviderFeign.class)
@EnableOpenApi
@ComponentScan({"com.meng.api","com.meng.nacos_consumer"})
@MapperScan("com.meng.nacos_consumer.mapper")
public class NacosConsumerApplication {

    public static void main(String[] args) {
        SpringApplication.run(NacosConsumerApplication.class, args);
    }
}
