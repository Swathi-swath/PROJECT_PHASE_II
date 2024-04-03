/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sivagnanam
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String  usrid=request.getParameter("userid");
           
         String   pwd=request.getParameter("pwd");
              String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 
               Class.forName("com.mysql.jdbc.Driver");
               String DB_URL = "jdbc:mysql://localhost:3306/db?autoReconnect=true";
             Connection conn = DriverManager.getConnection(DB_URL,"root","system");
           Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery("select * from userreg where user_name='"+usrid+"' && pass='"+pwd+"'" );
         int q=0;
           if(rs.next())
           {
           q=1;
           }
         
         System.out.println(q);
         if(q==1)
         {
             RequestDispatcher dis=request.getRequestDispatcher("social_media.jsp");          
             dis.include(request, response); 
         }
         
           if(q==0)
         {
             RequestDispatcher dis=request.getRequestDispatcher("social_us_login.jsp");          
             dis.include(request, response); 
         }
         
         
        }
        catch(Exception e)
        {
        System.out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
