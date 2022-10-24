package com.asw.dats.service.rules;

import com.asw.dats.dtos.RuleResponse;
import com.asw.dats.dtos.TestARule;
import com.asw.dats.model.ArmyPerson;
import com.asw.dats.model.rules.Rule;
import com.asw.dats.repository.ArmyPersRepository;
import com.asw.dats.repository.rules.RuleGpRepo;
import com.asw.dats.repository.rules.RulesRepo;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

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


    public RuleResponse existsInTable(TestARule tRule) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {

        long ruleId = tRule.getRuleId();
        int persId = tRule.getPersId();
        String data1 = tRule.getData1();
        RuleResponse response = new RuleResponse(false, "Does not exist!");

        Rule testRule = rulesRepo.findById(ruleId).get();
        String table = testRule.getData1();
        String field = testRule.getData2();
        
        ArmyPerson testPers = ArmyPersRepo.findById(persId).get();
        Boolean matchExists = false;

        //prep method to fetch the value of whereField.
        Method method = testPers.getClass().getMethod("get" + field);
        String value = (String) method.invoke(testPers);

        if(data1 != null) { //check exist against a value.
            if (value != null) {
                if (data1.equals(value)) {
                    matchExists = true;
                }
            }
        }
        else { //check simple exist.
            if (value != null) {
                if (!value.isEmpty())
                    matchExists = true;
            }
        }
        if(matchExists){
            response.setMsg("Exists");
            response.setResult(true);
        }
        return response;
    }


}
