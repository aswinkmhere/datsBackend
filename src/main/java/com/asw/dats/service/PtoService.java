package com.asw.dats.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.asw.dats.dtos.LastPTO;
import lombok.Getter;
import lombok.Setter;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asw.dats.model.PtoHeaderOffr;
import com.asw.dats.repository.PTORepoOffrHeader;
import java.time.YearMonth;

import static java.lang.Integer.parseInt;

@Service
@Getter
@Setter
public class PtoService {
    
    @Autowired
    private PTORepoOffrHeader PTOHeader;

    private String armyNo;
    private Date lastPtoDate, offrLastPtoDate;
    private String lastPtoNo, offrLastPtoNo;
    private String draftNo;


    @SneakyThrows
    public void initialize(){
        String year = String.valueOf(YearMonth.now().getYear());

        String lastDNo = null;
        LastPTO last = PTOHeader.getLastDraftDetls();
        if(last != null)
            lastDNo = last.getPtoNo();
        int lNo = 0;
        if(lastDNo != null) {
            String[] parts = lastDNo.split("/");
            lNo = parseInt(parts[1]);
            this.lastPtoDate = last.getCreatedDate();
        }
        int currentDFNo = lNo + 1;
        this.draftNo = "DF/" +  currentDFNo + "/" + year;
        //this.lastPtoDate = new SimpleDateFormat("dd/MM/yyyy").parse("05/05/2022");


        this.offrLastPtoDate = new SimpleDateFormat("dd/MM/yyyy").parse("06/06/2022");


        this.lastPtoNo = "05/" + year;
        this.offrLastPtoNo = "02/" + year;
    }

    public String getSUSNo(){
        //code to be replaced when adding the relavant table;
        return "123456U";
    }

    public String getDistrIds(){
        return "2,3,4,5,6";
    }

    public int getNoOfCas(long ptoId){
        PtoHeaderOffr hdr = PTOHeader.findById(ptoId).get();
        return hdr.getTotalCasualties();
    }

    public void updateHdr(long ptoId, String armyNo, boolean opr){
        Date now = new Date();
        int cas = 0;
        if(PTOHeader.existsById(ptoId)){
            PtoHeaderOffr hdr = PTOHeader.findById(ptoId).get();
            cas = hdr.getTotalCasualties() - 1;
            if (opr)
                cas = hdr.getTotalCasualties() + 1;
            hdr.setTotalCasualties(cas);
            hdr.setUpdatedBy(armyNo);
            hdr.setUpdatedDate(now);
            PTOHeader.save(hdr);
        }
    }

    public boolean verifyHdr(Long ptoId, String loggedInArmyNo, int vLevel) {
        if(PTOHeader.existsById(ptoId)){
            PtoHeaderOffr hdr = PTOHeader.findById(ptoId).get();
            Date now = new Date();
            if(vLevel == 1) {
                //Do nothing on this, and just set verify level.s
            }
            if(vLevel == 2) {
                hdr.setL1ArmyNo(loggedInArmyNo);
                hdr.setL1Date(now);
            }
            else if(vLevel == 3){
                hdr.setL2ArmyNo(loggedInArmyNo);
                hdr.setL2Date(now);
            }
            else{
                return false;
            }
            hdr.setVerify(vLevel);
            PTOHeader.save(hdr);
            return true;
        }
        else
            return false;
    }

    public boolean publish(long ptoId, String loggedInArmyNo, Date ptoDt) {
        if(PTOHeader.existsById(ptoId)) {
            PtoHeaderOffr hdr = PTOHeader.findById(ptoId).get();
            Date now = new Date();
            hdr.setPubArmyNo(loggedInArmyNo);
            hdr.setPubDate(now);
            hdr.setPtoDate(ptoDt);
            return true;
        }
        else{
            return false;
        }
    }
}
