package com.meng.nacos_consumer.service.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;

@FeignClient(value ="nacos-provider")
public interface ProviderFeign {
    @RequestMapping("hello")
    public String hello();
}
