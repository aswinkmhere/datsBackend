package com.asw.dats.dtos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
public class ActionByUserWithDate {
    private long ptoId;
    private String loggedInArmyNo;
    private Date ptoDate;
}
