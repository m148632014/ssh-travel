package org.mfm.travel.model;


import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_keyword")
@Data
public class Keyword implements Comparable<Keyword> {
    @Id
    @GeneratedValue
    private int id;
    /**
     * 关键字的名称
     */
    private String name;
    /**
     * 被引用的次数
     */
    private int times;
    /**
     * 关键字的全拼
     */
    @Column(name = "name_full_py")
    private String nameFullPy;
    /**
     * 关键字的简拼
     */
    @Column(name = "name_short_py")
    private String nameShortPy;

    @Override
    public int compareTo(Keyword o) {
        return this.times > o.times ? -1 : (this.times == o.times ? 0 : 1);
    }

}
