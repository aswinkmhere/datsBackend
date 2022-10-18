package com.asw.dats.model;

import com.asw.dats.dtos.LastPTO;
import lombok.*;

import org.springframework.beans.factory.annotation.Value;
import javax.persistence.*;
import java.util.Date;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@NamedNativeQuery(name = "PtoHeaderOffr.getLastDraftDetls",
        query = "SELECT ptono AS ptoNo, createddate AS createdDate FROM pto_offr_header WHERE ptono LIKE 'DF%' ORDER BY ptoid DESC LIMIT 1",
        resultSetMapping = "LastPTO")
@SqlResultSetMapping(name = "LastPTO",
        classes = @ConstructorResult(targetClass = LastPTO.class,
                columns = {@ColumnResult(name = "ptoNo"),
                        @ColumnResult(name = "createdDate")}))
@Entity
@Table(name = "pto_offr_header")
public class PtoHeaderOffr {
    @Id
    @Column(name = "ptoid")
    @NonNull
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long ptoId;
    private String armyNo;

    @Column(name = "ptono")
    private String ptoNo;

    @Column(name = "ptodate")
    private Date ptoDate;

    private String gp;

    private char draft;

    private char cancel;

    @Column(name = "lastptono")
    private String lastPtoNo;

    @Column(name = "lastptodate")
    private Date lastPtoDate;

    @Column(name = "offrlastptono")
    private String offrLastPtoNo;

    @Column(name = "offrlastptodate")
    private Date offrLastPtoDate;

    @Column(name = "signatoryid")
    private String signatoryId;

    @Column(name = "distributionids")
    private String distributionIds;

    @Column(name = "susno")
    private String susNo;

    @Column(name = "hierarchyid")
    private int hierarchyId;


    @Column(name = "totalcasualties")
    private int totalCasualties;

    @Column(name = "createdby")
    private String createdBy;

    @Column(name = "createddate")
    private Date createdDate;

    @Column(name = "updatedby")
    private String updatedBy;

    @Column(name = "updateddate")
    private Date updatedDate;

    @Value("true")
    @Column(name = "isactive")
    private Boolean isActive;

    @Value("0")
    @Column(name = "verify")
    private int verify;

    @Value("false")
    @Column(name = "migratedfmpreunit")
    private Boolean migratedFmPreUnit;

    @Column(name = "migratedfmpreunitdate")
    private Date migratedFmPreUnitDate;

    @Column(name = "subsrankid")
    private int subsRankId;

    @Column(name = "subsRank")
    private String subsRank;

    @Column(name = "actrankid")
    private int actRankId;

    @Column(name = "actrank")
    private String actRank;

    @Column(name = "lastverifiedbyauth1_armyno")
    private String l1ArmyNo;

    @Column(name = "lastverifiedbyauth1_date")
    private Date l1Date;

    @Column(name = "lastverifiedbyauth2_armyno")
    private String l2ArmyNo;

    @Column(name = "lastverifiedbyauth2_date")
    private Date l2Date;

    @Column(name = "publishedby_armyno")
    private String pubArmyNo;

    @Column(name = "publishedby_date")
    private Date pubDate;

    @Column(name = "issigned")
    private Boolean isSigned;
/*
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PTO_master_offr.cas_id")
    private PTOMasterOffr master;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "indl_data.army_no")
    private Person indl;*/


}
