package com.asw.dats.model;

import lombok.*;

import javax.persistence.*;
import java.util.List;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "indl_data")
public class Person {
    @Id
    @Column(nullable = false)
    private String army_no;

    @Column(nullable = false)
    private String indl_name;

/*    @OneToMany( targetEntity= PtoTxnOffr.class )
    private List ptoList;*/
}
