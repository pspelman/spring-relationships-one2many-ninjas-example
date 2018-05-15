package com.philspelman.springrelationshipsninjaso2m.services;

import com.philspelman.springrelationshipsninjaso2m.models.Ninja;
import com.philspelman.springrelationshipsninjaso2m.repositories.NinjaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NinjaService {

    private NinjaRepository ninjaRepository;

    public NinjaService(NinjaRepository ninjaRepository) {
        this.ninjaRepository = ninjaRepository;
    }

    public List<Ninja> allNinjas() {
        return this.ninjaRepository.findAll();
    }


    public void addNinja(Ninja ninja) {
        this.ninjaRepository.save(ninja);
    }

    public void destroyNinja(Long id) {
        this.ninjaRepository.deleteById(id);
    }

}
