package org.mfm.travel.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_pic_ditctionary")
@Data
public class PicDictionary {
    @Id
    @GeneratedValue
    private Integer id;
    /**
     * 所属id
     */
    @Column(name = "owner_id")
    private int ownerId;

    /**
     * A：表示段落图片 B：表示游记图片 C:表示驴友计划的行程图片 D:表示用户头像 E:表示攻略封皮 F:表示驴友的生活照片 G:表示游记封皮
     */
    private String pictype;

    @Column(name = "pic_id")
    private int picId;


}
