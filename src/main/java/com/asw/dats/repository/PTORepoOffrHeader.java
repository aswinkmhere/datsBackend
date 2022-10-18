package com.asw.dats.repository;

import com.asw.dats.dtos.LastPTO;
import com.asw.dats.model.PtoHeaderOffr;
import com.asw.dats.model.PtoTxnOffr;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Date;
import java.util.List;

public interface PTORepoOffrHeader extends JpaRepository<PtoHeaderOffr, Long> {

    @Query(
            value = "SELECT ptono AS ptoNo, createddate AS createdDate FROM pto_offr_header WHERE ptono LIKE 'DF%' ORDER BY ptoid DESC LIMIT 1",
            nativeQuery = true)
    LastPTO getLastDraftDetls();

}
