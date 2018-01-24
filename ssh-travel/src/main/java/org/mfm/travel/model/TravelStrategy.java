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
 * 旅游攻略
 *
 * @author MFM
 */
@Entity
@Table(name = "t_travel_strategy")
@Data
public class TravelStrategy {
    /**
     * 攻略的数据库主键
     */
    @Id
    @GeneratedValue
    private int id;
    /**
     * 攻略的名称
     */
    private String name;
    /**
     * 攻略的简介
     */
    @Column(columnDefinition = "text")
    private String brief;
    /**
     * 攻略的关键字
     */
    private String keyword;
    /**
     * 攻略的创建日期
     */
    @Column(name = "create_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createDate;
    /**
     * 攻略的最近更新日期
     */
    @Column(name = "modify_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date modifyDate;
    /**
     * 相关管理人员发布攻略
     */
    @Column(name = "user_id")
    private int userId;

}
