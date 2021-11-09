package tn.esprit.spring.services;

import java.util.Date;
import java.util.List;

import tn.esprit.spring.entities.Contrat;
import tn.esprit.spring.entities.Employe;
import tn.esprit.spring.entities.Entreprise;
import tn.esprit.spring.entities.Mission;
import tn.esprit.spring.entities.Timesheet;


public interface IEmployeService {

    int ajouterEmploye(Employe employe);

    void mettreAjourEmailByEmployeId(String email, int employeId);

    void affecterEmployeADepartement(int employeId, int depId);

    void desaffecterEmployeDuDepartement(int employeId, int depId);

    int ajouterContrat(Contrat contrat);

    int affecterContratAEmploye(int contratId, int employeId);

    String getEmployePrenomById(int employeId);

    void deleteEmployeById(int employeId);

    void deleteContratById(int contratId);

    int getNombreEmployeJPQL();

    List<String> getAllEmployeNamesJPQL();

    List<Employe> getAllEmployeByEntreprise(Entreprise entreprise);

    void mettreAjourEmailByEmployeIdJPQL(String email, int employeId);

    void deleteAllContratJPQL();

    float getSalaireByEmployeIdJPQL(int employeId);

    Double getSalaireMoyenByDepartementId(int departementId);

    List<Employe> getAllEmployes();

    List<Timesheet> getTimesheetsByMissionAndDate(Employe employe, Mission mission,
                                                  Date dateDebut, Date dateFin);


}
