package com.asw.dats.repository;

import com.asw.dats.model.ArmyPerson;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


public interface ArmyPersRepository extends CrudRepository<ArmyPerson, String> {

    @Query(
            value = "SELECT ?2 FROM ?1 WHERE ?3 = ?4",
            nativeQuery = true)
    String findExistingWithFour(String tableName, String resultField, String whereField, String whereValue);
}
