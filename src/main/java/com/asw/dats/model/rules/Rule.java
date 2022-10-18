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
public class Rule {
    @Id
    @Column(name = "rule_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long ruleId;
    private Long ruleGpId;
    private String ruleName;

    @Enumerated(EnumType.STRING)
    @Column(length = 10)
    private ERuleType ruleType;

    @Enumerated(EnumType.STRING)
    @Column(length = 10)
    private EOper oper;

    private String data1;
    private String data2;
    private String data3;
    private String data4;
    private String data5;

    private String remarks;
}

