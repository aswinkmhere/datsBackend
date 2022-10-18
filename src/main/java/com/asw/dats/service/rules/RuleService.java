package com.asw.dats.service.rules;

import com.asw.dats.dtos.RuleResponse;
import com.asw.dats.model.rules.Rule;
import com.asw.dats.repository.ArmyPersRepository;
import com.asw.dats.repository.rules.RuleGpRepo;
import com.asw.dats.repository.rules.RulesRepo;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Getter
@Setter
public class RuleService {
    
    @Autowired
    private RuleGpRepo ruleGpRepo;

    @Autowired
    private RulesRepo rulesRepo;

    @Autowired
    private ArmyPersRepository ArmyPersRepo;

    public RuleResponse existsInTable(Rule testRule){
        RuleResponse response = new RuleResponse(false, "");
        String table = testRule.getData1();
        String field = testRule.getData2();
        String whereField = testRule.getData3();
        String whereValue = testRule.getData4();
        String msg = ArmyPersRepo.findExistingWithFour(table, field, whereField, whereValue);
        if(!msg.isEmpty()){
            response.setMsg(msg);
            response.setResult(true);
        }
        return response;
    }

}
