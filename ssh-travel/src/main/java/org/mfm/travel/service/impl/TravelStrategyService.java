package org.mfm.travel.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.mfm.basic.model.Pager;
import org.mfm.travel.dao.IAttachmentDao;
import org.mfm.travel.dao.ITravelStrategyDao;
import org.mfm.travel.dto.StrategyDto;
import org.mfm.travel.model.Attachment;
import org.mfm.travel.model.TravelStrategy;
import org.mfm.travel.service.ITravelStrategyService;
import org.springframework.stereotype.Service;

@Service
public class TravelStrategyService implements ITravelStrategyService {


    @Override
    public void delete(int id) {

    }

    @Override
    public void update(TravelStrategy travelStrategy) {

    }

    @Override
    public TravelStrategy load(int id) {
        return null;
    }

    @Override
    public void add(TravelStrategy travelStrategy, int uid, Integer[] aids) {

    }

    @Override
    public Pager<TravelStrategy> findAllStrategy(String con) {
        return null;
    }

    @Override
    public void update(TravelStrategy travelStrategy, int id, Integer[] aids) {

    }

    @Override
    public List<StrategyDto> listStrategyDto() {
        return null;
    }
}
