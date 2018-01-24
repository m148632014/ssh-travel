package org.mfm.travel.service.impl;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.inject.Inject;

import org.apache.commons.io.FileUtils;
import org.mfm.basic.model.SystemRequestHolder;
import org.mfm.travel.dao.IPicDictionaryDao;
import org.mfm.travel.dao.IPictureDao;
import org.mfm.travel.model.PicDictionary;
import org.mfm.travel.model.Picture;
import org.mfm.travel.service.IPictureService;
import org.springframework.stereotype.Service;


@Service
public class PictureService implements IPictureService {


    @Override
    public void add(Picture picture, String pictype, InputStream inputStream) throws IOException {

    }

    @Override
    public Picture loadIndexPicByTravelNoteId(int id) {
        return null;
    }
}
