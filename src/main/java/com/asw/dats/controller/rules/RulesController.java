package com.asw.dats.controller.rules;

import com.asw.dats.dtos.RuleResponse;
import com.asw.dats.model.rules.Rule;
import com.asw.dats.model.rules.RuleGp;
import com.asw.dats.repository.rules.RuleGpRepo;
import com.asw.dats.repository.rules.RulesRepo;
import com.asw.dats.service.rules.RuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(path="/rules")
public class RulesController {

    @Autowired
    private RuleGpRepo ruleGps;

    @Autowired
    private RulesRepo rules;

    //GROUP
    @GetMapping(path = "/gp/view/{id}")
    @ResponseBody
    public Optional<RuleGp> viewGp(@PathVariable Long id){
        return ruleGps.findById(id);
    }

    @GetMapping(path = "/gp/view")
    @ResponseBody
    public List<RuleGp> viewAllGps(){
        return ruleGps.findAll();
    }

    @PostMapping(path = "gp/add")
    @ResponseBody
    public String addRuleGp(@RequestBody RuleGp ruleGp){
        ruleGps.save(ruleGp);
        return "Rule Gp Saved. ID : " + ruleGp.getRuleGpId();
    }

    @DeleteMapping(path = "gp/delete/{id}")
    @ResponseBody
    public String deleteRuleGp(@PathVariable Long id){
        ruleGps.deleteById(id);
        return "Rule Deleted of id "+ id.toString();
    }

    //separate rules
    @GetMapping(path = "view/{id}")
    @ResponseBody
    public Optional<Rule> viewRule(@PathVariable Long id){
        return rules.findById(id);
    }

    @GetMapping(path = "view/gpId/{id}")
    @ResponseBody
    public List<Rule> viewAllRules(@PathVariable Long id){
        return rules.findAllByRuleGpId(id);
    }

    @PostMapping(path = "/add")
    @ResponseBody
    public String addRule(@RequestBody Rule rule){
        rules.save(rule);
        return "Rule Saved. ID : " + rule.getRuleId();
    }

    @DeleteMapping(path = "/delete/{id}")
    @ResponseBody
    public String deleteRule(@PathVariable Long id){
        rules.deleteById(id);
        return "Rule Deleted of id "+ id.toString();
    }

    @GetMapping(path = "test")
    @ResponseBody
    public String testIt(){
        Long x = 98L;
        Rule sample = rules.findById(x).get();
        RuleService ruleSer =  new RuleService();
        RuleResponse resp = new RuleResponse();
        resp = ruleSer.existsInTable(sample);
        return resp.getMsg();
    }

}
