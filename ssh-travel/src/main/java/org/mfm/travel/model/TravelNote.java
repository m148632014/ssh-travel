package org.mfm.travel.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 旅行游记
 *
 * @author MFM
 */
@Entity
@Table(name = "t_trave_note")
@Data
public class TravelNote {

    @Id
    @GeneratedValue
    private Integer id;
    /**
     * 游记标题
     */
    private String title;
    @Column(name = "user_id")
    private int userId;

}
