<%@page import="com.bean.Employee"%>
<%@page import="com.service.EmployeeServiceImpl"%>
<%@page import="com.service.EmployeeService"%>
<jsp:include page="header.jsp"></jsp:include>

<br><bR><br>
   <center> 
   
      <form>
   		    <input type="text" name= id placeholder="Enter Emp Id" /> <bR><br>
   		    
   		    <input type="submit" value="Search"/> <bR><br>
   		</form>
   		
   		<%
   	 if(request.getParameter("id") != null ){
  		int id =  Integer.parseInt(request.getParameter("id"));
  		  			
  		EmployeeService service = new EmployeeServiceImpl();
  		Employee emp = service.search(id);
  		if(emp != null){
  		%>
  		    <table border="1">
   				<tr>
   					<th>Emp Id</th> 
   					<th>Emp Name</th>
   					<th>Salary</th>
   				</tr>
   				<tr>
   			       <td><%=emp.getId() %></td>
   			       <td><%=emp.getName() %></td>
   			       <td><%=emp.getSalary()%></td>
   			     
   			     </tr>  
   				
   			</table>
  		
  		
  		<%	
  		}
  		else
  			out.print(id+" Employee Data Not Found... Kindy Contact Admin Dept...");
         }
   		
   		%>
   
   </center>
    
<br><bR><br>    
<jsp:include page="footer.jsp"></jsp:include>