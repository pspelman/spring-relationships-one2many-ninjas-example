package com.philspelman.springrelationshipsninjaso2m.repositories;

import com.philspelman.springrelationshipsninjaso2m.models.Ninja;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long> {
    List<Ninja> findAll();
}
