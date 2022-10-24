package com.asw.dats.repository;

import com.asw.dats.model.ArmyPerson;
import org.springframework.data.repository.CrudRepository;


public interface ArmyPersRepository extends CrudRepository<ArmyPerson, Integer> {

    /*@Query(
            value = "SELECT u.personnel_name FROM hr_trn_army_pers_details u WHERE :key = :val",
            nativeQuery = true)
    String findExistingWithFour(@Param("key") String whereField, @Param("val") String whereValue);*/

    //boolean existsByArmyNo(Optional<String> armyNo);

}
