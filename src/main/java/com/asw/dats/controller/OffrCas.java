package com.asw.dats.controller;

import com.asw.dats.repository.MasterOffrRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OffrCas {

    @Autowired
    MasterOffrRepository master;

    @GetMapping({ "/list" })
    public String list() {
        return "list";
    }

}
