package org.mfm.travel.service.impl;

import javax.inject.Inject;

import org.mfm.travel.dao.INoteDao;
import org.mfm.travel.model.Note;
import org.mfm.travel.service.INoteService;
import org.springframework.stereotype.Service;
@Service
public class NoteService implements INoteService{
	@Inject
	private INoteDao noteDao;
	
	@Override
	public void add(Note note) {
		noteDao.add(note);
	}

}
