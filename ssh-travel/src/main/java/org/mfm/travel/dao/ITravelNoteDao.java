package org.mfm.travel.dao;

import java.util.List;

import org.mfm.travel.model.TravelNote;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ITravelNoteDao extends JpaRepository<TravelNote, Integer> {

//    List<TravelNote> list();

}
