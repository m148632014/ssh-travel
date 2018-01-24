package org.mfm.travel.model;

import lombok.Data;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 评论
 *
 * @author MFM
 */
@Entity
@Table(name = "t_discuss")
@Data
public class Discuss {
    @Id
    @GeneratedValue
    private Integer id;

    private String content;

    @Column(name = "create_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createDate;

    /**
     * 如果存在，表示该评论属于哪个攻略
     */
    @Column(name = "travel_strategy_id")
    private int travelStrategyId;
    /**
     * 如果存在，表示该评论属于哪个游记
     */
    @Column(name = "travel_note_id")
    private int travelNoteId;

    /**
     * 如果存在，表示该评论属于哪个驴友行程
     */
    @Column(name = "travel_route_id")
    private int travelRouteId;
    /**
     * 某一条评论的评论
     */
    @ManyToOne
    @JoinColumn(name = "pid")
    private Discuss discuss;
    /**
     * 发表评论的用户信息
     */
    @Column(name = "user_id")
    private int userId;


}
