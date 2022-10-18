package com.asw.dats.repository;

import org.springframework.data.repository.CrudRepository;
import com.asw.dats.model.Person;


public interface PersRepository extends CrudRepository<Person, String> {

}
