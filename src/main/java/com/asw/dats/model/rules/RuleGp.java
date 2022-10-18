package com.asw.dats.model.rules;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table
public class RuleGp {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long ruleGpId;
    private String ruleGpName;

    @Enumerated(EnumType.STRING)
    @Column(length = 20)
    private EPersType persType;
    private String description;
    private int cas_id;
    private String book_ser_no;
    private Boolean isCommon;
}
