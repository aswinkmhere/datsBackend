package com.asw.dats.model;

import lombok.*;

import javax.persistence.*;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "master_offr")
public class MasterOffr {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long cas_id;

    private String book_ser_no;
    private String desc_code;
    private String description;
    private String gp;
    private String category;
    private String full_name;
}
