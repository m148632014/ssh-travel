package org.mfm.travel.dao;

import org.mfm.travel.model.Note;
import org.springframework.data.jpa.repository.JpaRepository;

public interface INoteDao extends JpaRepository<Note, Integer> {

}
