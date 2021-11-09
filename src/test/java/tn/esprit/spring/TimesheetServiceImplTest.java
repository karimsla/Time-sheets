package tn.esprit.spring;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import tn.esprit.spring.entities.Departement;
import tn.esprit.spring.entities.Mission;
import tn.esprit.spring.entities.Timesheet;
import tn.esprit.spring.repository.DepartementRepository;
import tn.esprit.spring.repository.EmployeRepository;
import tn.esprit.spring.repository.MissionRepository;
import tn.esprit.spring.repository.TimesheetRepository;
import tn.esprit.spring.services.ITimesheetService;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import static junit.framework.Assert.assertEquals;
import static junit.framework.Assert.assertTrue;
import static junit.framework.TestCase.assertNotNull;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TimesheetServiceImplTest {


    public TimesheetServiceImplTest() {
    }

    @Autowired
    ITimesheetService tss;
    @Autowired
    MissionRepository mr;
    @Autowired
    TimesheetRepository tsr;
    @Autowired
    DepartementRepository dr;
    @Autowired
    EmployeRepository employeRepository;

    private static final Logger l = LogManager.getLogger(TimesheetServiceImplTest.class);

    @Test
    public void testAddMission() {
        int id = tss.ajouterMission(new Mission("M1", "D1"));
        assertNotNull(id);
        l.info("mission added " + id);
    }

    @Test
    public void testAffecterMissionADepartement() {

        int idm = tss.ajouterMission(new Mission("M1", null));
        if (idm > 0) {
            l.info("mission added");
        }

        Departement departement = new Departement("D1");
        dr.save(departement);
        l.info("departement created and added");

        Mission mission = mr.findById(idm).get();
        tss.affecterMissionADepartement(mission.getId(), departement.getId());

        List<Mission> missions = departement.getMissions();

        Mission missionFetched = new Mission();
        if (missions!=null) {
             missionFetched = missions.stream().filter(mission1 -> mission1.getId() == idm).findFirst().get();

            assertEquals(missionFetched.getId(), idm);
        }

        if (idm == missionFetched.getId()) {
            l.info("Mission found");
        } else {
            l.warn("warning check your method");
        }

    }

    @Test
    public void testAjouterTimesheet() throws ParseException {

        int idm = tss.ajouterMission(new Mission("M1", "D1"));
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date1 = dateFormat.parse("2015-03-23");
        Date date2 = dateFormat.parse("2015-03-23");


        tss.ajouterTimesheet(idm, employeRepository.findAll().iterator().next().getId(), date1, date2);

        l.info("timesheet parsed");

        Timesheet timesheet = tsr.getTimesheetsByMissionAndDate(mr.findById(idm).get(), date1, date2).get(0);
        assertTrue(timesheet.isValide());
        if (timesheet.isValide()) {
            l.info("TimeSheet Added");
        } else {
            l.error("check your code");
        }

    }

}
