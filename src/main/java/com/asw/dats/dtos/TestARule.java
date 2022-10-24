package com.asw.dats.dtos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TestARule {
    private long ruleId;
    private int persId;
    private String data1;
    private String data2;
}
