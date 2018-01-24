package org.mfm.travel.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 攻略的附件信息
 * 主要有jpg的zip包和pdf两种类型的附件
 *
 * @author MFM
 */
@Entity
@Table(name = "t_attachment")
@Data
public class Attachment {
    @Id
    @GeneratedValue
    private Integer id;
    /**
     * 附件上传之后的名称
     */
    @Column(name = "new_name", length = 30)
    private String newName;
    /**
     * 附件的原始名称
     */
    @Column(name = "old_name", length = 30)
    private String oldName;
    /**
     * 附件的类型，这个类型和contentType类型一致
     */
    private String contentType;
    /**
     * 附件的后缀名
     */
    private String suffix;
    /**
     * 附件的大小
     */
    private long size;
    /**
     * 附件类型
     * 1为攻略的封皮
     * 2为pdf
     * 3为zip/rar包
     */
    private int type;
    /**
     * 附件所属攻略
     */
    @Column(name = "travel_strategy_id")
    private int travelStrategyId;

}
