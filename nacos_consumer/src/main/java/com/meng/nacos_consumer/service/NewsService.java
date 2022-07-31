package com.meng.nacos_consumer.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.meng.nacos_consumer.entity.News;

public interface NewsService extends IService<News> {
    String getNewsListFront(Integer pageNum,Integer pageSize,String sPage);
    String getNewsDetailFront(String newsID);
}
