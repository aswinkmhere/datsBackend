package com.asw.dats.dtos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ActionByUser {
    private long ptoId;
    private String loggedInArmyNo;
}
