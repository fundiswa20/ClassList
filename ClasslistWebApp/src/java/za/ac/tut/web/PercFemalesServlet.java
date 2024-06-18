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

/**
 *
 * @author USER
 */
public class PercFemalesServlet extends HttpServlet {

    @EJB 
    private StudentFacadeLocal sl;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       Long females = sl.numOfFemales();
       Integer iCnt = sl.count();
       
       double cnt = (double)iCnt;
       double percen = (females / cnt) * 100;
       Integer perc = (int)percen;
       
       request.setAttribute("perc", perc);
       
       RequestDispatcher disp =  request.getRequestDispatcher("females.jsp");
       disp.forward(request, response);
    }
}
