package org.mfm.basic.model;

import lombok.Data;

import java.util.Date;

@Data
public class BackupFile implements Comparable<BackupFile> {
    /**
     * 备份的文件名称
     */
    private String name;
    /**
     * 备份的文件时间
     */
    private Date time;
    /**
     * 备份的文件的尺寸
     */
    private int size;
    /**
     * 备份的文件类型
     */
    private String fileType;

    public int compareTo(BackupFile o) {
        return o.getTime().compareTo(this.getTime());
    }

    @Override
    public String toString() {
        return "BackupFile [name=" + name + ", time=" + time + ", size=" + size
                + ", fileType=" + fileType + "]";
    }
}
