package org.mfm.travel.service;

import java.util.List;

import org.mfm.travel.model.Note;
import org.mfm.travel.model.TravelNote;


public interface ITravelNoteService {

    void add(TravelNote travelNote, int uid, Note[] notes);

    List<TravelNote> listAll();

    void delete(int id);


}
