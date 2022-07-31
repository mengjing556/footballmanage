package com.meng.nacos_consumer.controller;

import com.meng.nacos_consumer.service.ConsumerService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
@Slf4j
public class ConsumerController{

    private ConsumerService consumerService;

    @RequestMapping("hi")
    public String hello(){
        return consumerService.hello();
    }
}
