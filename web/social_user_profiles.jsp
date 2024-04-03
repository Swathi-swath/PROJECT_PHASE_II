
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Anxiety</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- site icons -->
      <link rel="icon" href="images/fevicon/fevicon.png" type="image/png" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="css/style.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="css/responsive.css" />
      <!-- colors css -->
      <link rel="stylesheet" href="css/colors.css" />
      <!-- wow animation css -->
      <link rel="stylesheet" href="css/animate.css" />
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body id="default_theme" class="home_page1">
      <!-- header -->
      <header class="header header_style1">
         <div class="container">
            <div class="row">
               <div class="col-md-9 col-lg-10">
                   <div class="logo"><a href="home.jsp"><h1 style="color:blue">User Profiles</h1></a></div>
                  <div class="main_menu float-right">
                     <div class="menu">
                        <ul class="clearfix">
                           <li class="active"><a href="home.jsp">Home</a></li>
                           <li><a href="about.html"></a></li>
                           
                        </ul>
                     </div>
                  </div>
               </div>
               
            </div>
         </div>
      </header>
      
       <!-- section -->
      <section class="contact_section">
         <div class="container-fluid">
            <div class="row">
               <div class="col-xs-12 col-sm-12 col-md-6" style="padding:0;">
                  <div class="full">
                   
                  </div>
               </div>
               <div class="col-xs-12 col-sm-12 col-md-6" style="padding:0;">
                  <div class="full">
                     <div class="contact_form white_heading_border">
                        <div class="contact_form_inner">
                           <div class="full_heading white_fonts heading_main heading_style_1">
                              <h2>USERS <span>INFLUENCE</span></h2>
                           </div>
                           <div class="form_contact">
                              <!-- form -->
                              <form action="social_media.jsp">
                                 <fieldset>
                                 <div class="field">
                                     <%
                                     String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 
               Class.forName("com.mysql.jdbc.Driver");
               String DB_URL = "jdbc:mysql://localhost:3306/db?autoReconnect=true";
             Connection conn = DriverManager.getConnection(DB_URL,"root","system");
                
            
            
            
            
            Statement smnt = conn.createStatement();
            ResultSet rs = smnt.executeQuery("select *from anx");
            int jj=0,kk1=0,kk2=0,kk3=0,kk4=0,kk5=0;
            String s1="";
            while (rs.next()) {
                                     
                                     if(rs.getString(1).equals("message1"))
                                     {  kk1++;s1=kk1+"";}
                                     
                                              if(rs.getString(1).equals("message2"))
                                        {  kk2++;s1=kk2+"";}
                                                if(rs.getString(1).equals("message3"))
                                       {  kk3++;s1=kk3+"";}
                                                  if(rs.getString(1).equals("message4"))
                                       {  kk4++;s1=kk4+"";}
                                                    if(rs.getString(1).equals("message5"))
                                        {  kk5++;s1=kk5+"";}
                                     %>
                                     
                                     <h1><%=rs.getString(1)%></h1>
                                     <h1><%=rs.getString(2)%></h1>
                                      <h1> forwards  <%=s1%></h1>
                                      
                                    <%}%>
                                      
                                    </div>
                                     <br><br> 
                                    
                                 </fieldset>
                              </form>
                              <!-- end form -->
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end section -->
     
      
      
      
      <!-- end footer -->
      <!--=========== js section ===========-->
      <!-- jQuery (necessary for Bootstrap's JavaScript) -->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="js/wow.js"></script>
      <!-- custom js -->
      <script src="js/custom.js"></script>
      <!-- google map js -->
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
      <!-- end google map js -->
   </body>
</html>
