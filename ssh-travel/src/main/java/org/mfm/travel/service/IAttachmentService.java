package org.mfm.travel.service;


import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.mfm.basic.model.Pager;
import org.mfm.travel.model.Attachment;

public interface IAttachmentService {
    public void add(Attachment a, InputStream is) throws IOException;

    public void delete(int id);

    public Attachment load(int id);

    /**
     * 获取某个TravelStrategy的附件
     *
     * @param tid
     * @return
     */
    public List<Attachment> listAttachByTravelStrategy(int tid);

    /**
     * 查询某个TravelStrategy的图片附件信息
     *
     * @param tid
     * @return
     */
    public Attachment loadPicAttach(int tid);

    /**
     * 获取所有TravelStrategy的封皮
     *
     * @param tid
     * @return
     */
    public Pager<Attachment> listAllPic();

    /**
     * 获取没有被TravelStrategy引用的附件
     *
     * @return
     */
    public Pager<Attachment> findNoUseAttachment();

    /**
     * 清空没有被TravelStrategy引用的附件
     */
    public void clearNoUseAttachment();

    /**
     * 获取没有被TravelStrategy引用的附件的数量
     *
     * @return
     */
    public long findNoUseAttachmentNum();


}
