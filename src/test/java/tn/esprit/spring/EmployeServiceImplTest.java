package tn.esprit.spring;


import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import tn.esprit.spring.entities.Contrat;
import tn.esprit.spring.entities.Departement;
import tn.esprit.spring.entities.Employe;
import tn.esprit.spring.entities.Role;
import tn.esprit.spring.repository.ContratRepository;
import tn.esprit.spring.repository.DepartementRepository;
import tn.esprit.spring.repository.EmployeRepository;
import tn.esprit.spring.repository.TimesheetRepository;
import tn.esprit.spring.services.EmployeServiceImpl;

import java.util.Date;
import java.util.List;

import static junit.framework.TestCase.assertTrue;


@RunWith(SpringRunner.class)
@SpringBootTest
public class EmployeServiceImplTest {


    public EmployeServiceImplTest() {
    }

    private static final Logger l = LogManager.getLogger(EmployeServiceImplTest.class);

    @Autowired
    EmployeRepository employeRepository;
    @Autowired
    DepartementRepository deptRepoistory;
    @Autowired
    ContratRepository contratRepoistory;
    @Autowired
    TimesheetRepository timesheetRepository;
    @Autowired
    EmployeServiceImpl employeService;




//It didn't work

    @Test
    public void testAddEmployeen(){
        int empnumber=employeService.getAllEmployes().size();

        int id = employeService.ajouterEmploye(new Employe("karim","slaimi","k.sleimi@gmail.com",true, Role.TECHNICIEN));

        Assert.assertNotEquals(id,0);

        int empnumber2=employeService.getAllEmployes().size();

        Assert.assertNotEquals(empnumber,empnumber2);
        l.info("mission added successfully" + id);
    }

    @Test
    public void testAffecterContratEmp(){

        int idc=employeService.ajouterContrat(new Contrat(new Date(),"CDI",2000));


         if (idc > 0){
            l.info("contrat added");
        }

        int id = employeService.ajouterEmploye(new Employe("karim","slaimi","k.sleimi@gmail.com",true, Role.TECHNICIEN));
        if (idc > 0){
            l.info("employee added");
        }

        int idcont=employeService.affecterContratAEmploye(idc,id);

        Assert.assertNotEquals(idcont,0);

        List<Contrat> contrats=(List<Contrat>)contratRepoistory.findAll();
        Contrat fetchedContract=  contrats.stream().filter(x->x.getReference()==idcont).findFirst().orElse(new Contrat());

        if( idc == fetchedContract.getReference()){
            l.info("contract found");
        }else{
            l.warn("warning check your method");
        }

    }

    @Test
    public void testAffecterEmpDep()  {

        Employe employee=new Employe("karim","slaimi","k.sleimi@gmail.com",true, Role.TECHNICIEN);
        int id = employeService.ajouterEmploye(employee);
        Assert.assertNotEquals(id,0);
        l.info("Employee added");

        int iddep=deptRepoistory.save(new Departement("IT Departement")).getId();

        Assert.assertNotEquals(iddep,0);
        l.info("Departement added");


        employeService.affecterEmployeADepartement(id,iddep);
        Employe emp=employeRepository.findById(id).orElse(new Employe());
        assertTrue(emp.getDepartements().size()>0);

        l.info("employee added to department");

        Departement dep=deptRepoistory.DepartementById(iddep);
        boolean flag=dep.getEmployes().stream().anyMatch(x->x.getId()==id);
        assertTrue(flag);

        l.info("employee added to department");


        if (dep.getEmployes().stream().anyMatch(x->x.getId()==id)) {
            l.info("employee added to department successfully");
        }else{
            l.error("error");
        }

    }

}
