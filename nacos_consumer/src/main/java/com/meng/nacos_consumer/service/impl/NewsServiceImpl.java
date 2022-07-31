package com.meng.nacos_consumer.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.meng.nacos_consumer.entity.News;
import com.meng.nacos_consumer.mapper.NewsMapper;
import com.meng.nacos_consumer.service.NewsService;
import com.meng.nacos_consumer.utils.Function;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News> implements NewsService {

    private final NewsMapper newsMapper;
    @Override
    public String getNewsListFront(Integer pageNum, Integer pageSize, String sPage) {
        // 定义本方法返回字符串数据
        StringBuffer sb = new StringBuffer();
        int i;
        //pageNum为第几页，pageSize为每页多少条
        Page<News> pageIter = new Page<>(pageNum, pageSize);
        QueryWrapper<News> wrapper = new QueryWrapper<>();
        wrapper.orderByDesc("NewsID");
        Page<News> page = newsMapper.selectPage(pageIter,wrapper);
        try{
            if(page.getTotal()==0){ //判定当查询结果为空
                // 返回属性添加字符串数据用于页面显示
                sb.append("<tr height=\"25\" bgcolor=\"#d6dff7\"  class=\"info1\"> <td colspan=\"5\">\r\n");
                // 返回属性添加字符串数据用于页面显示
                sb.append("<div align=\"center\"><b>没有记录!</b></div></td></tr>\r\n");
            }else {
                List<News> newsList = page.getRecords();
                for (News news : newsList) {
                    int NewsID = news.getNewsID();
                    String NewsTitle = news.getNewsTitle();
                    String NewsTime = news.getNewsTime();
                    String AdminName = news.getAdminName();
                    // 返回属性添加字符串数据用于页面显示<tr>表示换行
                    sb.append("<tr>");
                    // 返回属性添加字符串数据用于页面显示新闻标题
                    sb.append("<td>" + NewsTitle + "</td>");
                    // 返回属性添加字符串数据用于页面显示发布人
                    sb.append("<td >" + AdminName + "</td>");
                    // 返回属性添加字符串数据用于页面显示发布时间
                    sb.append("<td >" + NewsTime + "</td>");
                    // 返回属性添加字符串数据用于页面显示详情按钮，href参数用于跳转到新闻详情页面，同时传入了该新闻的编号给它
                    sb.append("<td ><a style=\"color:#3F862E\" target=\"_blank\" href=\"newsDetail.jsp?newsId="
                            + NewsID + "\">详情</a></td></tr>");
                }
                sb.append(Function.PageFront(sPage, page));
            }
        }catch (Exception e){
            return "No";
        }
        return sb.toString();
    }

    @Override
    public String getNewsDetailFront(String newsID) {
        // 定义本方法返回字符串数据
        StringBuffer sb = new StringBuffer();
        try{
            if (newsID.equals("0")) {                                       // s0判定等于0
                return "No";                                         // 返回字符“No”
            }else{
                News news = newsMapper.selectById(newsID);
                String newsTitle = news.getNewsTitle();
                String newsContent = news.getNewsContent();
                String[] content = newsContent.split("#");
                sb.append("<br><h2 style=\"font-size:28px;margin-bottom:25px;text-align:center;\">"
                        + newsTitle + "</h2>");
                for (int j = 0; j < content.length; j++) {// 循环
                    // 返回属性添加字符串数据用于页面显示内容信息
                    sb.append("<p>" + content[j] + "</p>");
                }
            }
        }catch(Exception e){
            return "No";
        }
        return sb.toString();
    }

}
