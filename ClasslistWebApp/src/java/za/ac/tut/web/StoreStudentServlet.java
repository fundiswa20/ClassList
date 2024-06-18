/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.entities.Student;
import za.ac.tut.model.entities.Subject;

/**
 *
 * @author USER
 */
@MultipartConfig
public class StoreStudentServlet extends HttpServlet {
    @EJB StudentFacadeLocal sl;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        Long id = Long.parseLong(request.getParameter("id"));
        Integer age = Integer.parseInt(request.getParameter("age"));
        Character gender = request.getParameter("gender").charAt(0);
        
        String[] subj_array = request.getParameterValues("subject");
        List<Subject> subjects = new ArrayList<>();
        for(int i= 0 ; i < subj_array.length; i++)
        {
            Subject sub = new Subject(subj_array[i]);
            subjects.add(sub);
            
        }
        
        Part part = request.getPart("image");
        
        //convert image
        byte[] image = convertImageToByte(part);
        
        Student student = createStudent(name,surname,id,age,gender,subjects,image);
        request.setAttribute("student", student);
        
        sl.create(student);
        
        RequestDispatcher disp = request.getRequestDispatcher("store_outcome.jsp");
        disp.forward(request, response);
    }

    private byte[] convertImageToByte(Part part) throws IOException {
        
        InputStream is = part.getInputStream();
        byte[] byte_img = new byte[is.available()];
        is.read(byte_img);
        
        return byte_img;
    }

    private Student createStudent(String name, String surname, Long id, Integer age, Character gender, List<Subject> subjects, byte[] image) {
        
        Student student = new Student();
        
        student.setAge(age);
        student.setCreation_date(Date.from(Instant.now()));
        student.setGender(gender);
        student.setName(name);
        student.setPhoto(image);
        student.setSubjects(subjects);
        student.setSurname(surname);
        student.setId(id);
        
        return student;
        
    }

}
