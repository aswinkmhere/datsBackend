package com.asw.dats.repository;

import com.asw.dats.model.PtoTxnOffr;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PTORepoOffr extends JpaRepository<PtoTxnOffr, Long> {

    List<PtoTxnOffr> findByPtoId(long ptoId);
    int countByPtoId(long ptoId);
}
