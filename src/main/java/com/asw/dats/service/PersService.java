package com.asw.dats.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.asw.dats.model.Person;
import com.asw.dats.repository.PersRepository;

@Service
public class PersService {

    @Autowired
    public PersRepository persRepo;

    public List<Person> getAllIndl()
    {
        List<Person> indl = new ArrayList<Person>();
        persRepo.findAll().forEach(indl1 -> indl.add(indl1));
        return indl;
    }
    //getting a specific record by using the method findById() of CrudRepository
    public Person getPersById(String id)
    {
        return persRepo.findById(id).get();
    }

    //saving a specific record by using the method save() of CrudRepository
    public void saveOrUpdate(Person indl)
    {
        persRepo.save(indl);
    }
    //deleting a specific record by using the method deleteById() of CrudRepository
    public void delete(String id)
    {
        persRepo.deleteById(id);
    }
    //updating a record
    public void update(Person indl, String id)
    {
        persRepo.save(indl);
    }

    public String addPers (String armyNo, String indlName){
        Person indl = new Person();
        indl.setArmy_no(armyNo);
        indl.setIndl_name(indlName);
        persRepo.save(indl);
        return "Pers Added";
    }

    public String getRank(){
        return "Lt Col";
    }

    public int getRankId(){
        return 5;
    }


}
