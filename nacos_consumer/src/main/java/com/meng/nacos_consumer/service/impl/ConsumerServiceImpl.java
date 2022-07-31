package com.meng.nacos_consumer.service.impl;

import com.meng.nacos_consumer.service.ConsumerService;
import com.meng.nacos_consumer.service.feign.ProviderFeign;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class ConsumerServiceImpl implements ConsumerService {

    private final ProviderFeign providerFeign;
    @Override
    public String hello() {
        return providerFeign.hello();
    }
}
