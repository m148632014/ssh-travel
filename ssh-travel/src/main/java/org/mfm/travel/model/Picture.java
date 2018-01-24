package org.mfm.travel.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 图片的数据字典表
 *
 * @author MFM
 */
@Entity
@Table(name = "t_picture")
public class Picture {
    private int id;

    /**
     * 图片的时间戳名字
     */
    private String newName;
    /**
     * 图片的原始名称
     */
    private String oldName;
    /**
     * 图片的宽度
     */
    private int width;
    /**
     * 图片的高度
     */
    private int height;
    /**
     * 图片的大小
     */
    private long size;
    /**
     * 图片的后缀名
     */
    private String suffix;
    /**
     * 0表示站内链接，1表示站外链接
     */
    private int linkType;
    /**
     * 链接的地址
     */
    private String linkUrl;

    private String contentType;

    @Column(name = "content_type")
    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    @Id
    @GeneratedValue
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    @Column(name = "new_name", length = 30)
    public String getNewName() {
        return newName;
    }

    public void setNewName(String newName) {
        this.newName = newName;
    }

    @Column(name = "old_name", length = 30)
    public String getOldName() {
        return oldName;
    }

    public void setOldName(String oldName) {
        this.oldName = oldName;
    }

    @Column(length = 10)
    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    @Column(length = 10)
    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    @Column(length = 10)
    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }

    @Column(length = 10)
    public String getSuffix() {
        return suffix;
    }

    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }

    @Column(name = "link_url")
    public String getLinkUrl() {
        return linkUrl;
    }

    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl;
    }

    @Column(name = "link_type")
    public int getLinkType() {
        return linkType;
    }

    public void setLinkType(int linkType) {
        this.linkType = linkType;
    }


}
