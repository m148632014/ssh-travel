package org.mfm.basic.model;

import lombok.Data;

import javax.servlet.http.HttpServletRequest;


/**
 * 在service层获取应用层中的核心数据
 *
 * @author KongHao
 */
@Data
public class SystemRequest {
    private HttpServletRequest request;
    private int pageSize;
    private int pageOffset;
    private String sort;
    private String order;
    private String realPath;


    public String getRealPath() {
        if (request != null) {
            realPath = request.getSession().getServletContext().getRealPath("");
        }
        return realPath;
    }


}
