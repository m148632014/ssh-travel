package org.mfm.travel.dao;

import org.mfm.travel.model.TravelRoute;
import org.springframework.data.jpa.repository.JpaRepository;

interface ITravelRouteDao extends JpaRepository<TravelRoute, Integer> {

}
