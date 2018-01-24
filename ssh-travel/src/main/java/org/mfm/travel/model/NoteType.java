package org.mfm.travel.model;

import lombok.Data;

/**
 * 定义游记内容类型
 * 图片，文本，段落
 *
 * @author MFM
 */
public enum NoteType {
    TEXT("文本"), PARAGRAPH("段落"), PICTURE("图片");

    private String name;

    private NoteType(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
