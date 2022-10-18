package com.asw.dats.model;

import lombok.*;
import javax.persistence.*;
import java.util.Date;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "HR_TRN_ArmyPersDetails")
public class ArmyPerson {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int pers_id;

    @Column(nullable = false)
    private String sus_no;
    @Column(nullable = false)
    private String personnel_type_id;
    @Column(name = "army_no", nullable = false)
    private String army_no;
    private String JCONO;
    @Column(nullable = false)
    private String personnel_name;
    private String TradeId;
    private String CorpsId;
    private int RecOffId;
    private int AuthTypeId;
    private int EntityType;
    @Column(nullable = false)
    private int r_arms_service_id;
    private Date FirstCommisionDate;
    private int CommId;
    private String CDAACNo;
    @Column(name = "Class")
    private int clas;
    private int Trade;
    private int Nextofkin;
    @Column(nullable = false)
    private int substantive_rank_id;
    private Date SubstantiveRankDate;
    private int ActingRankId;
    private Date ActingRankDate;
    private int ParentArmRank;
    private Date SeniorityDate;
    @Column(nullable = false)
    private int level_2_id;
    private String PersImgPath;
    private String PhotoPresent;
    private String AWLOSL;
    private String Detached;
    private String Exercise;
    private String OFFJCO;
    private String Sex;
    private Date DOB;
    private String DistrictIdbirth;
    private String PlaceOfbirth;
    private int StateIdbirth;
    private int CountryIdbirth;
    private int ReligionId;
    private String CasteStatus;
    private String OriginClassId;
    private String MotherTongue;
    private String DomicileDistrict;
    private int DomicileState;
    private int DomicileCountry;
    @Column(columnDefinition="TEXT")
    private String Remarks;
    private String NOKName;
    private int MaritalStatus;
    private Date DateOfEnrolment;
    private Boolean PresentWithUnit;
    private Boolean AECExam;
    private Boolean ACEExam;
    private Boolean MRExam;
    private Boolean FamilyPlanning;
    private int CasualtyNoFamPlng;
    private Date DoPart2famplnDate;
    private String DoPart2fampln;
    private String RegimentOrCorpsName;
    @Column(name="paraded",nullable = false,columnDefinition = "boolean default false")
    private Boolean paraded;
    private Byte Picture;
    private int NOKAddressId;
    private String LastP2OrderNo;
    private Date LastP2OrderDate;
    @Column(columnDefinition = "smallint default 60")
    private Byte AuthAL;
    @Column(columnDefinition = "smallint default 30")
    private Byte AuthCL;
    private String CreatedBy;
    private Date CreatedDate;
    private String UpdatedBy;
    private Date UpdatedDate;
    private String ActInctBy;
    private Date ActInctDate;
    @Column(name="is_active", nullable = false,columnDefinition = "boolean default true")
    private Boolean is_active;
    @Column(columnDefinition = "smallint default 0")
    private Byte AvailAL;
    @Column(columnDefinition = "smallint default 0")
    private Byte AvailCL;
    private int AvailLeaveYear;
    private String AvailedLvUpdatedby;
    private Date AvailedLvUpdatedDate;
    @Column(columnDefinition = "smallint default 60")
    private Byte AuthFurloughLv;
    private Byte AvailFurloughLv;
    @Column(columnDefinition = "smallint default 60")
    private Byte AuthAAL;
    private Byte AvailAAL;
    private String MedCat;
    @Column(columnDefinition = "integer default 0")
    private int EntryFlag;
    private int CurrentAppt;
    private int DesignID;
    private String BasicDetail;
    private String GradePay;
    private String PreviousOccupation;
    private String BorderArea;

}
