package com.asw.dats.dtos;

import com.asw.dats.model.PtoTxnOffr;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class TxnWithUser {
    PtoTxnOffr ptoTxn;
    String loggedInArmyNo;
}
