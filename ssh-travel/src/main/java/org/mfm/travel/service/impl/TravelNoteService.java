package org.mfm.travel.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.mfm.travel.dao.IPicDictionaryDao;
import org.mfm.travel.dao.IPictureDao;
import org.mfm.travel.dao.ITravelNoteDao;
import org.mfm.travel.model.Note;
import org.mfm.travel.model.TravelNote;
import org.mfm.travel.service.ITravelNoteService;
import org.springframework.stereotype.Service;

@Service
public class TravelNoteService implements ITravelNoteService {

    @Override
    public void add(TravelNote travelNote, int uid, Note[] notes) {

    }

    @Override
    public List<TravelNote> listAll() {
        return null;
    }

    @Override
    public void delete(int id) {

    }
}
