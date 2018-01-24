package org.mfm.travel.dao;

import org.mfm.travel.model.Picture;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IPictureDao extends JpaRepository<Picture, Integer> {


}
