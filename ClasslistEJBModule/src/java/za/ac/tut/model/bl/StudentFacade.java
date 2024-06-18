/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.model.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.model.entities.Student;

/**
 *
 * @author USER
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "ClasslistEJBModulePU")
    private EntityManager em;
    Query query;
    
    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }
    
    
    @Override
    public Long numOfMales() {
        
        query =  em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.gender = :gender");
        
        query.setParameter("gender", 'M');
        
         Long cnt = (Long)query.getSingleResult();
        
         return cnt;
    }

    @Override
    public Long numOfFemales() {
        query =  em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.gender = :gender");
        
        query.setParameter("gender", 'F');
        
         Long cnt = (Long)query.getSingleResult();
        
         return cnt;   
    }
   

    @Override
    public Double avgOfMales() {
       
        query= em.createQuery("SELECT AVG(s.age) FROM Student s WHERE s.gender = :gender");
        query.setParameter("gender", 'M');
        Double avgMaleAge = (Double) query.getSingleResult();
        return avgMaleAge; 
     }

    @Override
    public Double avgOfFemales() {
        query= em.createQuery("SELECT AVG(s.age) FROM Student s WHERE s.gender = :gender");
        query.setParameter("gender", 'F');
        Double avgFemaleAge = (Double) query.getSingleResult();
        return avgFemaleAge;    
    }

    @Override
    public Student youngest() {
        query =  em.createQuery("SELECT s FROM Student s WHERE s.age = (SELECT MIN(s2.age) FROM Student s2)");
        
         Student stud = (Student)query.getSingleResult();
        
         return stud; 
    }
}
