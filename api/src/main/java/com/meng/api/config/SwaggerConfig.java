package com.meng.api.config;

import com.github.xiaoymin.knife4j.spring.annotations.EnableKnife4j;
import io.swagger.annotations.ApiOperation;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.schema.ScalarType;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.service.ParameterType;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

import static java.util.Collections.singletonList;

/**
 * des:
 *
 * @author HuZhenSha
 * @date 2021/3/5 16:05
 */

@Configuration
@EnableKnife4j
public class SwaggerConfig {

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.OAS_30)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
                .paths(PathSelectors.any())
                .build().globalRequestParameters(
                        singletonList(new springfox.documentation.builders.RequestParameterBuilder()
                                // 不能叫Authorization
                                .name("Naic-Tenant")
                                .description("naic tenant id")
                                .in(ParameterType.HEADER)
                                .required(true)
                                .query(q -> q.model(m -> m.scalarModel(ScalarType.STRING)))
                                .build()));
    }

    private ApiInfo apiInfo() {

        return new ApiInfoBuilder()
                .title("用户管理文档")
                .description("更多请咨询服务开发者")
                .contact(new Contact("", "http://www.baidu.com", ""))
                .version("1.0")
                .build();
    }

}
