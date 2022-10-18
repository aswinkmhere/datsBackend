package com.asw.dats.model;

import lombok.*;

import javax.persistence.*;
import java.util.Date;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "pto_trn_offr")
public class PtoTxnOffr {
    @Id
    @Column(name = "pto_txn_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long ptoTxnId;

    @Column(name = "ptoid", nullable = false)
    private Long ptoId;

    @Column(name = "casseqno", nullable = false)
    private String casSeqNo;

    @Column(name = "cascode", nullable = false)
    private String casCode;

    @Column(name = "fmdate", nullable = false)
    private Date fmDate;

    @Column(name = "todate", nullable = false)
    private Date toDate;

    @Column(nullable = false)
    private String data1;
    private String data2;
    private String data3;
    private String data4;
    private String rmk1;
    private String rmk2;
    private String rmk3;
    private String rmk4;
    private String rmk5;
    private String rmk6;
    private String rmk7;
    private String rmk8;

    @Column(name = "rmk9")
    private String rmk9;

    @Column(name = "rmk10")
    private String rmk10;

    @Column(name = "certificate")
    private String certificate;

    @Column(name = "authority")
    private String authority;

    @Column(name = "enclosure")
    private String enclosure;

    @Column(name = "refpto")
    private String refpto;

    @Column(name = "remark")
    private String remark;

    @Column(name = "delayed")
    private String delayed;

    @Column(name = "cancelled", nullable = false)
    private Boolean cancelled;

    @Column(name = "stopped")
    private int stopped;

    @Column(name = "stoppeddate")
    private Date stoppedDate;

    @Column(name = "parenttxnno")
    private Long parentTxnNo;

    @Column(name = "txnno")
    private Long txnNo;

    @Column(name = "obsn_item")
    private String obsnItem;

    @Column(name = "createdby", nullable = false)
    private String createdBy;

    @Column(name = "createddate", nullable = false)
    private Date createdDate;

    @Column(name = "updatedby")
    private String updatedBy;

    @Column(name = "updateddate")
    private Date updatedDate;

    @Column(name = "isactive", nullable = false)
    private Boolean isActive;
/*
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PTO_master_offr.cas_id")
    private PTOMasterOffr master;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "indl_data.army_no")
    private Person indl;*/


}
