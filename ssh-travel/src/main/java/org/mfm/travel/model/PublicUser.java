package org.mfm.travel.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_publicuser")
@Data
public class PublicUser {
    @Id
    @GeneratedValue
    private Integer id;
    private String nickname;
    private int sex;
    private String liveCity;
    private String birthday;
    private String sign;
    private String email;
    private String password;
    private String phone;
    private String sinaWeiboName;
    private String qqZoneName;
}
