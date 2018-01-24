package org.mfm.travel.service.impl;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.mfm.basic.model.Pager;
import org.mfm.travel.dao.IKeywordDao;
import org.mfm.travel.model.Keyword;
import org.mfm.travel.service.IKeywordService;
import org.springframework.stereotype.Service;

@Service("keywordService")
public class KeywordService implements IKeywordService {


    @Override
    public void addOrUpdate(String name) {

    }

    @Override
    public List<Keyword> getKeywordByTimes(int num) {
        return null;
    }

    @Override
    public List<Keyword> getMaxTimesKeyword(int num) {
        return null;
    }

    @Override
    public Pager<Keyword> findNoUseKeyword() {
        return null;
    }

    @Override
    public void clearNoUseKeyword() {

    }

    @Override
    public List<Keyword> findUseKeyword() {
        return null;
    }

    @Override
    public List<Keyword> listKeywordByCon(String con) {
        return null;
    }

    @Override
    public List<String> listKeywordStringByCon(String con) {
        return null;
    }
}
