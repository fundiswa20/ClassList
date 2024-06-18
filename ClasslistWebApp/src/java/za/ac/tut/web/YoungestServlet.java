/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.entities.Student;

/**
 *
 * @author USER
 */
public class YoungestServlet extends HttpServlet {

   @EJB 
    private StudentFacadeLocal sl;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        Student youngest = sl.youngest();
        
        request.setAttribute("youngest", youngest);
        
        RequestDispatcher disp = request.getRequestDispatcher("youngest.jsp");
        disp.forward(request, response);
    }

}