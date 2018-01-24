package org.mfm.travel.dao;

import org.mfm.basic.model.Pager;
import org.mfm.travel.model.Attachment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IAttachmentDao extends JpaRepository<Attachment, Integer> {

//    Pager<Attachment> findNoUseAttachment();
//
//    void clearNoUseAttachment();
//
//    List<Attachment> listByTravelStrategy(int tid);
//
//
//    List<Attachment> listAttachByTravelStrategy(int tid);
//
//    Pager<Attachment> listAllPic();
//
//    long findNoUseAttachmentNum();
//
//    void deleteByTravelStrategy(int id);
//
//    Attachment loadPicAttach(int tid);

}
