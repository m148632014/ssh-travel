package org.mfm.travel.model;

import lombok.Data;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 驴友活动行程计划信息
 *
 * @author MFM
 */
@Entity
@Table(name = "t_travle_route")
@Data
public class TravelRoute {
    @Id
    @GeneratedValue
    private Integer id;
    /**
     * 简介
     */
    private String brief;
    /**
     * 出发地
     */
    @Column(name = "begin_place")
    private String beginPlace;
    /**
     * 目的地
     */
    private String destination;
    /**
     * 开始时间
     */
    @Column(name = "begin_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date beginDate;
    /**
     * 结束时间
     */
    @Column(name = "end_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date endDate;
    /**
     * F:表示驴友的生活照片
     */
    private String pictype;
    /**
     * 发起驴友活动的用户
     */
    @Column(name = "user_id")
    private int userId;


}
