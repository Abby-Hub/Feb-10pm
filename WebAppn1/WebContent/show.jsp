<%@page import="com.bean.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.service.EmployeeServiceImpl"%>
<%@page import="com.service.EmployeeService"%>
<jsp:include page="header.jsp"></jsp:include>

<br><bR><br>
   <center>
   			<%
   				EmployeeService service = new EmployeeServiceImpl();
   			    List<Employee> list =  service.get();
   			    
   			%>
   			
   			<table border="1">
   				<tr>
   					<th>Emp Id</th> 
   					<th>Emp Name</th>
   					<th>Salary</th>
   				</tr> 
   			  <%
   			  for(Employee e : list){
   			  %>
   			     <tr>
   			       <td><%=e.getId() %></td>
   			       <td><%=e.getName() %></td>
   			       <td><%=e.getSalary()%></td>
   			     
   			     </tr> 
   			 
   			 
   			  <%
   				  
   			  }
   			  
   			  %>	
   			
   				
   				  					
   			</table>
   
   </center>
    
<br><bR><br>    
<jsp:include page="footer.jsp"></jsp:include>