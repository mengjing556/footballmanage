package com.meng.nacos_consumer.controller;

import com.meng.nacos_consumer.service.NewsService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Api(tags = "新闻接口")
@RequestMapping("/news")
@AllArgsConstructor
public class NewsController {
    @Autowired
    private final NewsService newsService;
    public String getNewsListFront(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String sPage){
        return newsService.getNewsListFront(pageNum,pageSize,sPage);
    }
    public String getNewsDetailFront(@RequestParam String newsID){
        return newsService.getNewsDetailFront(newsID);
    }
}
