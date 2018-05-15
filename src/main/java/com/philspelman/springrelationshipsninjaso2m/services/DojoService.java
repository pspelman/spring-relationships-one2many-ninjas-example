package com.philspelman.springrelationshipsninjaso2m.services;

import com.philspelman.springrelationshipsninjaso2m.models.Dojo;
import com.philspelman.springrelationshipsninjaso2m.repositories.DojoRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DojoService {
    //Initialize the service

    private DojoRepository dojoRepository;

    public DojoService(DojoRepository dojoRepository) {
        this.dojoRepository = dojoRepository;

//        dojoRepository.deleteAll();

        if (this.dojoRepository.findAll().size() < 1) {
            createSampleDojos();
        }

    }

    //create some sample dojos
    private void createSampleDojos() {
//        this.dojoRepository.save(new Dojo("Seattle"));
//        this.dojoRepository.save(new Dojo("San Jose"));
//        this.dojoRepository.save(new Dojo("Boulder"));
    }

    public void addDojo(Dojo dojo) {
        this.dojoRepository.save(dojo);

    }

    public void destroyDojo(Long id) {
        this.dojoRepository.deleteById(id);
    }

    public List<Dojo> allDojos() {
        return this.dojoRepository.findAll();
    }

    public Optional<Dojo> getDojoById(Long id) {
        return this.dojoRepository.findById(id);
    }
}
