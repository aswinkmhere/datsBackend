package com.asw.dats.controller;

import com.asw.dats.model.ArmyPerson;
import com.asw.dats.repository.ArmyPersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(path="/pers")
public class ArmyPers {

    @Autowired
    private ArmyPersRepository persRepo;

    @PostMapping(path = "/add")
    @ResponseBody
    public String addPers(@RequestBody ArmyPerson indl){
        persRepo.save(indl);
        return "Pers Added id:" + indl.getPers_id();
    }

    @GetMapping(path="/view")
    @ResponseBody
    public Iterable<ArmyPerson> getAllPers(){
        return persRepo.findAll();
    }



}
