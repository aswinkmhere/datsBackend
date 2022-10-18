package com.asw.dats.controller;

import com.asw.dats.dtos.ActionByUser;
import com.asw.dats.dtos.ActionByUserWithDate;
import com.asw.dats.dtos.TxnWithUser;
import com.asw.dats.model.PtoTxnOffr;
import com.asw.dats.model.PtoHeaderOffr;
import com.asw.dats.model.Person;
import com.asw.dats.repository.PTORepoOffr;
import com.asw.dats.repository.PTORepoOffrHeader;
import com.asw.dats.service.PersService;
import com.asw.dats.service.PtoService;

import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping(path="/pto")
public class PtoController {
    @Autowired
    private PTORepoOffrHeader ptoRepoHeader;

    @Autowired
    private PTORepoOffr ptoRepo;

    @Autowired
    private PtoService serv;
    @Autowired
    private PersService pers;

    @GetMapping("/view")
    public List<PtoHeaderOffr> viewDrafts(){
        return ptoRepoHeader.findAll();
    }

    @PostMapping("/draft")
    @ResponseBody
    public String bodyDemo(@RequestBody PtoHeaderOffr hdr){


        serv.initialize(); //prepares the last PTO detls


        hdr.setLastPtoNo(serv.getLastPtoNo());
        Date now = new Date();

        hdr.setLastPtoDate(serv.getLastPtoDate());
        hdr.setOffrLastPtoDate(serv.getOffrLastPtoDate());
        hdr.setOffrLastPtoNo(serv.getOffrLastPtoNo());
        hdr.setPtoNo(serv.getDraftNo());

        hdr.setCreatedDate(now);
        hdr.setMigratedFmPreUnitDate(now);
        hdr.setDraft('Y');
        hdr.setCancel('N');
        hdr.setIsActive(true);
        hdr.setIsSigned(false);
        hdr.setSusNo(serv.getSUSNo());
        hdr.setSubsRank(pers.getRank());
        hdr.setSubsRankId(pers.getRankId());
        hdr.setActRank(pers.getRank());
        hdr.setActRankId(pers.getRankId());
        hdr.setDistributionIds(serv.getDistrIds());
        hdr.setHierarchyId(1);

        
        hdr.setSusNo(serv.getSUSNo());
        ptoRepoHeader.save(hdr);
        return "Draft Added " + serv.getDraftNo();
    }

    @PostMapping(path = "/txn")
    @ResponseBody
    public String draftTxn(@RequestBody TxnWithUser txnUser
    ) {
        PtoTxnOffr txn = txnUser.getPtoTxn();
        String loggedInArmyNo = txnUser.getLoggedInArmyNo();
        int casSeq = serv.getNoOfCas(txn.getPtoId()) + 1;
        String casSeqNo = "00" + String.valueOf(casSeq);
        Date now = new Date();

        txn.setCasSeqNo(casSeqNo);
        txn.setCreatedDate(now);

        txn.setIsActive(true);
        txn.setCancelled(false);

        ptoRepo.save(txn);

        serv.updateHdr(txn.getPtoId(), loggedInArmyNo, true);

        return "Txn done!";
    }

    @GetMapping("/txn/view")
    public List<PtoTxnOffr> viewDrafts(@RequestBody ActionByUser act){
        return ptoRepo.findByPtoId(act.getPtoId());
    }

    @DeleteMapping("/txn/delete")
    public String deleteTxn(@RequestBody ActionByUser txnDelete){
        long ptoTxnId = txnDelete.getPtoId();
        long ptoId = 0;
        if(ptoRepo.existsById(ptoTxnId)) {
            ptoId = ptoRepo.getReferenceById(ptoTxnId).getPtoId();
            serv.updateHdr(ptoId, txnDelete.getLoggedInArmyNo(), false);
            ptoRepo.deleteById(ptoTxnId);
            return "Txn Deleted!";
        }
        else{
            return "Txn data does not exist";
        }
    }

    @DeleteMapping("/delete")
    public String deleteHeader(@RequestBody ActionByUser txn){
        long ptoId = txn.getPtoId();
        if(ptoRepoHeader.existsById(ptoId)) {
            ptoRepoHeader.deleteById(ptoId);

            if (ptoRepo.countByPtoId(ptoId) > 0) { //if it exists
                Iterable affected = ptoRepo.findByPtoId(ptoId);
                ptoRepo.deleteAll(affected);
                return "Header & Txn(s) Deleted!";
            } else {
                return "Header Deleted successfully";
            }
        }
        else{
            return "Header doesnt exist";
        }
    }

    @PatchMapping("/sendforverify")
    @ResponseBody
    public String sendForVerify(@RequestBody ActionByUser verifyHdr){
        if(serv.verifyHdr(verifyHdr.getPtoId(), verifyHdr.getLoggedInArmyNo(), 1))
            return "Sent for verification";
        else
            return "PTO not found";
    }

    @PatchMapping("/verify1")
    @ResponseBody
    public String verify1(@RequestBody ActionByUser verifyHdr){
        if(serv.verifyHdr(verifyHdr.getPtoId(), verifyHdr.getLoggedInArmyNo(), 2))
            return "verified by L1";
        else
            return "PTO not found";
    }

    @PatchMapping("/verify2")
    @ResponseBody
    public String verify2(@RequestBody ActionByUser verifyHdr){
        if(serv.verifyHdr(verifyHdr.getPtoId(), verifyHdr.getLoggedInArmyNo(), 3))
            return "verified by L2";
        else
            return "PTO not found";
    }

    @PatchMapping("/publish")
    @ResponseBody
    public String publish(@RequestBody ActionByUserWithDate publishData){
        if(serv.publish(publishData.getPtoId(), publishData.getLoggedInArmyNo(), publishData.getPtoDate()))
            return "PTO Published";
        else
            return "Error in publishing";
    }


    @GetMapping("/pers")
    @ResponseBody
    public Person getPersons(@RequestParam String armyNo){
        return pers.getPersById(armyNo);
    }


    @SneakyThrows
    @PostMapping("/test")
    @ResponseBody
    public TxnWithUser test(@RequestBody TxnWithUser txnUser){

        PtoTxnOffr txn = txnUser.getPtoTxn();
        String armyNo = txnUser.getLoggedInArmyNo();
        System.out.println(txn.getCasCode());
        return txnUser;

    }
}
