package com.meng.nacos_consumer.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
@ApiModel(value="News对象")
@NoArgsConstructor
@AllArgsConstructor
@TableName(value="news")
public class News {
    @TableId(value = "NewsID", type = IdType.AUTO)
    private int newsID;
    @ApiModelProperty(value = "新闻标题")
    @TableField(value = "NewsTitle")
    private String newsTitle;
    @ApiModelProperty(value = "新闻内容")
    @TableField(value = "NewsContent")
    private String newsContent;
    @ApiModelProperty(value = "新闻时间")
    @TableField(value = "NewsTime")
    private String newsTime;
    @ApiModelProperty(value = "管理员姓名")
    @TableField(value = "AdminName")
    private String adminName;
}
