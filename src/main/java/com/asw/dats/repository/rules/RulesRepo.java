package com.asw.dats.repository.rules;

import com.asw.dats.model.PtoTxnOffr;
import com.asw.dats.model.rules.Rule;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RulesRepo extends JpaRepository<Rule, Long> {

    List<Rule> findAllByRuleGpId(long gpId);
}
