<%-- 
    Document   : studentNavigation
    Created on : Dec 16, 2016, 4:21:14 PM
    Author     : nafeedgbhs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student navigation</title>
    </head>
    <body>
        <%
            //System.out.println("Going to fetch the session");
            HttpSession mySession = request.getSession();
            //System.out.println("Fetched the session successfully");

            String userType = "";
            try
            {
                userType = (String)(mySession.getAttribute("userType") );
                if ( userType.equalsIgnoreCase("student") )
                {
                    // do nothing
                }
                else
                {                    
                    RequestDispatcher rd = request.getRequestDispatcher("signIn.jsp");
                    rd.forward(request, response);
                }
            }
            catch (Exception e)
            {
                System.out.println("Can't fetch userType or convert it to String");
                RequestDispatcher rd = request.getRequestDispatcher("signIn.jsp");
                rd.forward(request, response);
            }
            
            
        %>
        <h1>Student navigation</h1>
        <a href="LogOutProcess.do">Log Out</a>
        <br>
        <br>
        <br>
        <br>
        <br>
        
    </body>
</html>
