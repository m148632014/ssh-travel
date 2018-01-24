package org.mfm.travel.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 用户信息
 *
 * @author MFM
 */
@Entity
@Table(name = "t_user")
@Data
public class User {
    @Id
    @GeneratedValue
    private Integer id;
    private String nickname;
    private String username;
    private String password;
    private String email;
    private String phoneNum;
    /**
     * 表示是否为管理员
     */
    private String type;
    /**
     * D:表示用户头像
     */
    private String picType;

}
