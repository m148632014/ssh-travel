package org.mfm.travel.model;

import lombok.Data;

@Data
public class BaseInfo {
    /**
     * 京ICP备11015476号
     */
    private String ICPRecord;
    /**
     * 京ICP证110318号
     */
    private String ICPConfirm;
    /**
     * 京公网安备110105013401号
     */
    private String networkRecord;
    /**
     * 新出网证(京)字242号
     */
    private String networkConfirm;
    /**
     * © 2015 Mafengwo.cn
     */
    private String copyright;
    /**
     * 400 166 6866
     */
    private String contactPhone;
    /**
     * 首页轮播图片宽
     */
    private int indexPicWidth;
    /**
     * 首页轮播图片高
     */
    private int indexPicHeight;
    /**
     * 域名
     */
    private String domainName;

    private int indexPicNumber;


}
