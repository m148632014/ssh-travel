package org.mfm.travel.dao;

import org.mfm.travel.model.PicDictionary;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IPicDictionaryDao extends JpaRepository<PicDictionary, Integer> {

//    PicDictionary loadByOwnerId(int id);
//
//    List<Integer> listPicIdByOwner(int id);

}
