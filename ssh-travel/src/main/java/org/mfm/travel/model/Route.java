package org.mfm.travel.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 驴友活动的具体行程 每个行程有多天 ----使用 dayorder 控制 每天可以包括多个行程
 * 每个行程包括一个标题，一张图片，一个地点，一个描述（行程安排描述）
 *
 * @author MFM
 */
@Entity
@Table(name = "t_route")
@Data
public class Route {

    @Id
    @GeneratedValue
    private Integer id;
    /**
     * 行程的主题/标题
     */
    private String subject;
    /**
     * 地点
     */
    private String place;
    /**
     * 描述
     */
    private String desc;
    /**
     * C:表示驴友计划的行程图片
     */
    private String pictype;
    /**
     * 表示第几天的行程，至少为第一天行程
     */
    private String dayorder;
    /**
     * 每个行程位置
     */
    private String pos;
    /**
     * 本行程属于哪个驴友活动行程
     */
    @Column(name = "travel_route_id")
    private int travelRouteId;


}
