package com.asw.dats.controller;

import com.asw.dats.model.MasterOffr;
import com.asw.dats.repository.MasterOffrRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping(path="/master")
public class MasterOffrController {

    @Autowired
    MasterOffrRepository master;

    @GetMapping("/view")
    @ResponseBody
    public Iterable<MasterOffr> viewAll(){
        return master.findAll();
    }

    @PostMapping("/add")
    public String insertMaster(@RequestParam String bookSerNo, @RequestParam String descrCode,
                               @RequestParam String description, @RequestParam String gp,
                               @RequestParam String category, @RequestParam String fullName){
        MasterOffr offrMaster = new MasterOffr();

        offrMaster.setBook_ser_no(bookSerNo);
        offrMaster.setDesc_code(descrCode);
        offrMaster.setDescription(description);

        offrMaster.setGp(gp);
        offrMaster.setCategory(category);
        offrMaster.setFull_name(fullName);
        master.save(offrMaster);
        return "New Master(Offr) Added";
    }

    @DeleteMapping("/delete/{id}")
    public String deleteMaster(@PathVariable(value = "id") Long casId){

        master.deleteById(casId);
        String msg = String.valueOf(casId);
        return msg;
        //return "Deleted cas_code : ";
    }
}
