package org.mfm.travel.dao;

import java.util.List;

import org.mfm.basic.model.Pager;
import org.mfm.travel.model.TravelStrategy;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ITravelStrategyDao extends JpaRepository<TravelStrategy, Integer> {

//    Pager<TravelStrategy> findAllStrategy(String con);
//
//    List<TravelStrategy> list();

}
