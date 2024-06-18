package za.ac.tut.model.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.model.entities.Subject;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-06-11T23:15:41")
@StaticMetamodel(Student.class)
public class Student_ { 

    public static volatile SingularAttribute<Student, Character> gender;
    public static volatile SingularAttribute<Student, String> surname;
    public static volatile ListAttribute<Student, Subject> subjects;
    public static volatile SingularAttribute<Student, String> name;
    public static volatile SingularAttribute<Student, byte[]> photo;
    public static volatile SingularAttribute<Student, Long> id;
    public static volatile SingularAttribute<Student, Date> creation_date;
    public static volatile SingularAttribute<Student, Integer> age;

}