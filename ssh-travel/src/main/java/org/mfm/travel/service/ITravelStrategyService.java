package org.mfm.travel.service;

import java.util.List;

import org.mfm.basic.model.Pager;
import org.mfm.travel.dto.StrategyDto;
import org.mfm.travel.model.TravelStrategy;

public interface ITravelStrategyService {
    void delete(int id);

    void update(TravelStrategy travelStrategy);

    TravelStrategy load(int id);

    void add(TravelStrategy travelStrategy, int uid, Integer[] aids);

    Pager<TravelStrategy> findAllStrategy(String con);

    void update(TravelStrategy travelStrategy, int id, Integer[] aids);

    List<StrategyDto> listStrategyDto();


}
