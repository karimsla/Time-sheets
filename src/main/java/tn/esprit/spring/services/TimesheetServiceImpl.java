package tn.esprit.spring.services;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tn.esprit.spring.entities.Departement;
import tn.esprit.spring.entities.Employe;
import tn.esprit.spring.entities.Mission;
import tn.esprit.spring.entities.Role;
import tn.esprit.spring.entities.Timesheet;
import tn.esprit.spring.entities.TimesheetPK;
import tn.esprit.spring.repository.DepartementRepository;
import tn.esprit.spring.repository.EmployeRepository;
import tn.esprit.spring.repository.MissionRepository;
import tn.esprit.spring.repository.TimesheetRepository;

@Service
public class TimesheetServiceImpl implements ITimesheetService {


    @Autowired
    MissionRepository missionRepository;
    @Autowired
    DepartementRepository deptRepoistory;
    @Autowired
    TimesheetRepository timesheetRepository;
    @Autowired
    EmployeRepository employeRepository;

    public int ajouterMission(Mission mission) {
        missionRepository.save(mission);
        return mission.getId();
    }
    private static final Logger l = LogManager.getLogger(TimesheetServiceImpl.class);


    public void affecterMissionADepartement(int missionId, int depId) {
        Mission mission = missionRepository.findById(missionId).orElse(null);
        Departement dep = deptRepoistory.findById(depId).orElse(null);
        if(mission!=null && dep!=null){

        mission.setDepartement(dep);
        missionRepository.save(mission);
        }

    }

    public void ajouterTimesheet(int missionId, int employeId, Date dateDebut, Date dateFin) {
        TimesheetPK timesheetPK = new TimesheetPK();
        timesheetPK.setDateDebut(dateDebut);
        timesheetPK.setDateFin(dateFin);
        timesheetPK.setIdEmploye(employeId);
        timesheetPK.setIdMission(missionId);

        Timesheet timesheet = new Timesheet();
        timesheet.setTimesheetPK(timesheetPK);
        timesheet.setValide(false); //par defaut non valide
        timesheetRepository.save(timesheet);

    }


    public void validerTimesheet(int missionId, int employeId, Date dateDebut, Date dateFin, int validateurId) {
        l.info("In valider Timesheet");
        Employe validateur = employeRepository.findById(validateurId).orElse(null);
        Mission mission = missionRepository.findById(missionId).orElse(null);
        //verifier s'il est un chef de departement (interet des enum)
        if(!(validateur != null && validateur.getRole().equals(Role.CHEF_DEPARTEMENT))){
            l.info("l'employe doit etre chef de departement pour valider une feuille de temps !");
            return;
        }
        //verifier s'il est le chef de departement de la mission en question
        boolean chefDeLaMission = false;
        for(Departement dep : validateur.getDepartements()){
            if(dep.getId() ==( (mission!=null)?mission.getDepartement().getId():null)){
                chefDeLaMission = true;
                break;
            }
        }
        if(!chefDeLaMission){
            l.info("l'employe doit etre chef de departement de la mission en question");
            return;
        }
//
        TimesheetPK timesheetPK = new TimesheetPK(missionId, employeId, dateDebut, dateFin);
        Timesheet timesheet =timesheetRepository.findBytimesheetPK(timesheetPK);
        timesheet.setValide(true);

        //Comment Lire une date de la base de données
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        l.info("dateDebut : " + dateFormat.format(timesheet.getTimesheetPK().getDateDebut()));

    }


    public List<Mission> findAllMissionByEmployeJPQL(int employeId) {
        return timesheetRepository.findAllMissionByEmployeJPQL(employeId);
    }


    public List<Employe> getAllEmployeByMission(int missionId) {
        return timesheetRepository.getAllEmployeByMission(missionId);
    }


    @Around("execution(* tn.esprit.spring.service.*(..))")
    public Object profile(ProceedingJoinPoint pjp) throws Throwable {
        long start = System.currentTimeMillis();
        Object obj = pjp.proceed();
        long elapsedTime = System.currentTimeMillis() - start;
        String et=elapsedTime+"";
        if(elapsedTime > 0 ){
            l.info(pjp + " took "+ et + "MS");//why isn't working
        }
        l.info("Method execution time: " + et + " milliseconds.");
        l.info("testing something but it didn't work");
        return obj;
    }
}