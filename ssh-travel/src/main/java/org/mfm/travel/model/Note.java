package org.mfm.travel.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 游记内容
 * 包含图片、段落、文本 组合而成
 *
 * @author MFM
 */
@Entity
@Table(name = "t_note")
@Data
public class Note {
    @Id
    @GeneratedValue
    private int id;
    /**
     * 游记内容类型：
     * 主要有文本，段落，图片
     */
    @Enumerated(EnumType.STRING)
    @Column(name = "note_type")
    private NoteType noteType;

    private int pos;

    /**
     * 文本
     */
    private String text;


    /**
     * 段落标题
     */
    private String title;

    /**
     * 所属游记
     */
    @Column(name = "tarvel_note_id")
    private String travelNoteId;

}
