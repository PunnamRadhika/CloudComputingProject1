<%-- 
    Document   : index
    Created on : Mar 3, 2023, 11:27:00 AM
    Author     : RADHIKA
--%>
<%@ page contentType="text/html;" language="java" import="java.sql.*"  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
          body {
   background-image: url("images/1.jpg");
 }
        </style>
      <link rel='stylesheet' type='text/css' href='styles.css' />
    </head>
    <body>
         <table align="center">
       <tr>
           <td align="center"><img src="images/2.jpg" hight="500" width="900" ></td></table>
        <div id='cssmenu'>
<ul>
   <li class='active'><a href='userhome.jsp'><span>Home</span></a></li>
   <li><a href='domainreg.jsp'><span>Domain Register</span></a></li>
   <li><a href='userdetails.jsp'><span>View Cloud User Details</span></a></li>
   <li class='last'><a href='domaindetails.jsp'><span>View Domain Details</span></a></li>
   <li class='last'><a href='createsite.jsp'><span>Create Site</span></a></li>
   <li class='last'><a href='status.jsp'><span>View Site Status</span></a></li>
   <li class='last'><a href='viewhosted.jsp'><span>View Hosted Sites</span></a></li>
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
         <%String s1=(String)session.getAttribute("name2");%>
    <center><h3>Welcome to Cloud User <%= s1%></h3>
    <h2>Domain User Details </h2></center>
    <form name="f1" action="index.jsp" method="post" onSubmit="return valid4()">
<center>
    
        
        <table  cellspacing="10" >
	 
	  <th class="c1"><font color="black">ID</th>
          <th class="c1"><font color="black">USER NAME</th>
           <th class="c1"><font color="black">PASSWORD</th>
          <th class="c1"><font color="black">EMAIL</th>
          <th class="c1"><font color="black">PHONE NO</th>
         
          
	  
          
         
          
          
	  <%
String filename1=null,pno1=null,pa1=null,id1=null,uname1=null,ema1=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic","root","root");
//String pwd2=(String)session.getAttribute("pwd1");
String name3=(String)session.getAttribute("name2");
Statement st=con.createStatement();
PreparedStatement ps=con.prepareStatement("select * from userreg where username='"+name3+"' ");
ResultSet rs=ps.executeQuery();

while(rs.next())
{
    id1=rs.getString("id");
uname1=rs.getString("username");
pa1=rs.getString("password");
ema1=rs.getString("email");
pno1=rs.getString("phoneno");

%>
<tr>

<td class="c2"><font color="black"><%= id1%></td>
<td class="c2"><font color="black"><%= uname1%></td>
<td class="c2"><font color="black"><%= pa1 %></td>
<td class="c2"><font color="black"><%= ema1 %></td>

<td class="c2"><font color="black"><%= pno1 %></td>


</tr>



<%
}
}
catch(Exception e)
{
out.print(e);
}

%>

</table>
	  
